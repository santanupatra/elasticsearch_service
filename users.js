var express = require('express');
var router = express.Router();
var app = express();
var bodyParser = require('body-parser');
var jsonParser = bodyParser.json();
//var sync = require('synchronize');

router.post('/login', jsonParser, function(req, res, next) {
	var data = req.body;
	var db = req.con;
	console.log(req.body);
	db.query('SELECT * FROM user WHERE email = ? AND password = ?',[req.body.email , req.body.password] ,function(err,rows){
		if (err) throw err;
		console.log(rows);
		if(rows){
			res.send(JSON.stringify({'ack': 1, 'msg': 'Login Successfully', 'raw': rows}));
		}else{
			res.send(JSON.stringify({'ack': 0, 'msg': 'Wrong id password', 'raw': JSON.stringify(req.params)}));
		}
	});
});

router.get('/users', jsonParser, function(req, res, next) {
	var data = req.body;
	var db = req.con;
	db.query('SELECT * FROM user' ,function(err,rows){
		if (err) throw err;
		console.log(rows);
		if(rows){
			res.send(JSON.stringify({'ack': 1, 'msg': 'Successfully', 'raw': rows}));
		}else{
			res.send(JSON.stringify({'ack': 0, 'msg': 'Error', 'raw': JSON.stringify(req.params)}));
		}
	});
});

router.post('/send', jsonParser, function(req, res, next) {
	var data = req.body;
	var db = req.con;
	var datetime = new Date();
	db.query('INSERT INTO chats set sender = ?, reciver = ? , msg = ? , time = ?',[req.body.sender , req.body.reciver, req.body.message,datetime ] ,function(err,rows){
		if (err) throw err;
		console.log(rows);
		if(rows){
			res.send(JSON.stringify({'ack': 1, 'msg': 'Successfully', 'raw': rows}));
		}else{
			res.send(JSON.stringify({'ack': 0, 'msg': 'Error', 'raw': JSON.stringify(req.params)}));
		}
	});
});

router.post('/getuserchat', jsonParser, function(req, res, next) {
	var data = req.body;
	var db = req.con;
	var datetime = new Date();
	db.query('SELECT * FROM chats WHERE sender = ? OR reciver = ? GROUP BY reciver ORDER BY id DESC',[req.body.id , req.body.id] ,function(err,rows){
		if (err) throw err;
		console.log(rows);
		var array = [];

		if(rows){
			var arr = [];
			for (var i = 0; i < rows.length; i++) {
				// async userNameCheck (username){
				// 	return await this.db.query(`SELECT count(username) as count FROM user WHERE LOWER(username) = ?`, `${username}`);
				// }
				arr = {
					id : rows[i].id,
					sender : rows[i].sender,
					reciver : rows[i].reciver,
					message : rows[i].msg,
					time : rows[i].time,
					sendername : "Test",
					name : "Demo User"+i,
				}
				array.push(arr);
			}
			
			res.send(JSON.stringify({'ack': 1, 'msg': 'Successfully', 'raw': array}));
		}else{
			res.send(JSON.stringify({'ack': 0, 'msg': 'Error', 'raw': JSON.stringify(req.params)}));
		}
	});

	console.log("prog end");
});

router.post('/getchats', jsonParser, function(req, res, next) {
	var data = req.body;
	var db = req.con;
	var datetime = new Date();
	db.query('SELECT * FROM chats WHERE sender = ? AND reciver = ? OR sender = ? AND reciver = ?',[req.body.reciver , req.body.sender, req.body.sender , req.body.reciver] ,function(err,rows){
		if (err) throw err;
		console.log(rows);
		var array = [];

		if(rows){
			var arr = [];
			for (var i = 0; i < rows.length; i++) {
				arr = {
					id : rows[i].id,
					sender : rows[i].sender,
					reciver : rows[i].reciver,
					message : rows[i].msg,
					time : rows[i].time,
					sendername : "Test",
					name : "Demo User"+i,
				}
				array.push(arr);
			}
			
			res.send(JSON.stringify({'ack': 1, 'msg': 'Successfully', 'raw': array}));
		}else{
			res.send(JSON.stringify({'ack': 0, 'msg': 'Error', 'raw': JSON.stringify(req.params)}));
		}
	});
});

module.exports = router;
