
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

		this.app.post('/test',async (request,response) =>{
			const responsearr = {};
			responsearr.message = `Success`;
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