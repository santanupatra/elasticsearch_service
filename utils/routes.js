
'use strict';

const helper = require('./helper');
const path = require('path');
const DB = require('./db');
var md5 = require('md5');
const fileUpload = require('express-fileupload');
const cors = require('cors');

var d = new Date(),
month = '' + (d.getMonth() + 1),
day = '' + d.getDate(),
year = d.getFullYear();

if (month.length < 2) month = '0' + month;
if (day.length < 2) day = '0' + day;

const date =  [year, month, day].join('-');

class Routes{

	constructor(app){
		this.db = DB;
		this.app = app;
	}
	
	appRoutes(){

		//localhost:8080/getCategory
		this.app.get('/getCategory',async (request,response) =>{
			const responsearr = {}
			var params = request.body;
			var existed = await this.db.query(`SELECT id, uuid, category_name FROM categories where type='business'`);

			if(existed[0]){
				responsearr.category = existed;
				responsearr.ack = 1;
				responsearr.message = `Category Found.`;
			}else{
				responsearr.ack = 0;
				responsearr.message = `No Category Found.`;
			}
			response.status(200).json(responsearr);
		});

		//localhost:8080/getCity
		this.app.post('/getCity',async (request,response) =>{
			const responsearr = {}
			var params = request.body;
			var existed = await this.db.query(`SELECT id, uuid, city_name FROM cities`);

			if(existed[0]){
				responsearr.city = existed;
				responsearr.ack = 1;
				responsearr.message = `City Found.`;
			}else{
				responsearr.ack = 0;
				responsearr.message = `No City Found.`;
			}
			response.status(200).json(responsearr);
		});

		//localhost:8080/getProvinces
		this.app.post('/getProvinces',async (request,response) =>{
			const responsearr = {}
			var params = request.body;
			var existed = await this.db.query(`SELECT id, uuid, province_name FROM provinces`);

			if(existed[0]){
				responsearr.provinces = existed;
				responsearr.ack = 1;
				responsearr.message = `province Found.`;
			}else{
				responsearr.ack = 0;
				responsearr.message = `No province Found.`;
			}
			response.status(200).json(responsearr);
		});

		//localhost:8080/getLocalities
		this.app.post('/getLocalities',async (request,response) =>{
			const responsearr = {}
			var params = request.body;
			var existed = await this.db.query(`SELECT id, uuid, locality_name FROM localities`);

			if(existed[0]){
				responsearr.localities = existed;
				responsearr.ack = 1;
				responsearr.message = `locality Found.`;
			}else{
				responsearr.ack = 0;
				responsearr.message = `No locality Found.`;
			}
			response.status(200).json(responsearr);
		});

		//http://localhost:8080/getSearchResult
		/*searchkey:Red Lizard
		category:5b2fc2b9d9a2f
		city:5b2fe179b1a82
		province:5b2fe2c4de909
		address:5b2fcf007d88a
		barangay:5b2fe5382c8e6*/
		this.app.post('/getSearchResult',async (request,response) =>{
			const responsearr = {}
			var params = request.body;			
			var condition = '';	
			var filter = ['%' +params.searchkey+ '%'];

			if(typeof params.category !== "undefined" && params.category != ""){
				condition += ' and B.category_uuid=? and B.category_uuid = C.uuid';
				filter.push(params.category);
			}

			if(typeof params.city !== "undefined" && params.city != ""){
				condition += ' and B.city_uuid=? and B.city_uuid=CI.uuid';
				filter.push(params.city);
			}

			if(typeof params.province !== "undefined" && params.province != ""){
				condition += ' and B.province_uuid=? and B.province_uuid=P.uuid';
				filter.push(params.province);
			}

			if( typeof params.address !== "undefined" && params.address != ""){
				condition += ' and B.locality_uuid=? and B.locality_uuid=L.uuid';
				filter.push(params.address);
			}

			if( typeof params.barangay !== "undefined" && params.barangay != ""){
				condition += ' and B.barangay_uuid=? and B.barangay_uuid=BA.uuid';
				filter.push(params.barangay);
			}

			var existed = await this.db.query(`SELECT DISTINCT B.id, B.business_name, C.category_name from business_table as B, categories as C, cities as CI, provinces as P, localities as L, barangays as BA where B.business_name like ?`+condition, filter);

			if(existed[0]){
				responsearr.result = existed;
				responsearr.ack = 1;
				responsearr.message = `locality Found.`;
			}else{
				responsearr.ack = 0;
				responsearr.message = `No locality Found.`;
			}
			response.status(200).json(responsearr);
		});


		//http://localhost:8080/getSearchTravel
		/*searchkey:Red Lizard
		category:5b2fc2b9d9a2f
		city:5b2fe179b1a82
		province:5b2fe2c4de909
		address:5b2fcf007d88a
		barangay:5b2fe5382c8e6*/
		this.app.post('/getSearchTravel',async (request,response) =>{
			const responsearr = {}
			var params = request.body;			
			var condition = '';	
			var filter = ['%' +params.searchkey+ '%'];

			if(typeof params.category !== "undefined" && params.category != ""){
				condition += ' and T.category_uuid=? and T.category_uuid = C.uuid';
				filter.push(params.category);
			}

			if(typeof params.city !== "undefined" && params.city != ""){
				condition += ' and T.city_uuid=? and T.city_uuid=CI.uuid';
				filter.push(params.city);
			}

			if(typeof params.province !== "undefined" && params.province != ""){
				condition += ' and T.province_uuid=? and T.province_uuid=P.uuid';
				filter.push(params.province);
			}

			if( typeof params.address !== "undefined" && params.address != ""){
				condition += ' and T.locality_uuid=? and T.locality_uuid=L.uuid';
				filter.push(params.address);
			}

			if( typeof params.barangay !== "undefined" && params.barangay != ""){
				condition += ' and T.barangay_uuid=? and T.barangay_uuid=BA.uuid';
				filter.push(params.barangay);
			}

			var existed = await this.db.query(`SELECT DISTINCT T.id, T.travel_name, C.category_name from travel_table as T, categories as C, cities as CI, provinces as P, localities as L, barangays as BA where T.travel_name like ?`+condition, filter);

			if(existed[0]){
				responsearr.result = existed;
				responsearr.ack = 1;
				responsearr.message = `locality Found.`;
			}else{
				responsearr.ack = 0;
				responsearr.message = `No locality Found.`;
			}
			response.status(200).json(responsearr);
		});


		
		this.app.get('*',(request,response) =>{
			response.sendFile(path.join(__dirname + '../../client/views/index.html'));
			/*
			* OR one can define the template engine and use response.render();
			*/
		});		
	}

	routesConfig(){
		this.appRoutes();
	}
}
module.exports = Routes;