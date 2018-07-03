
const mysql = require('mysql');

class Db {
	constructor(config) {
		this.connection = mysql.createPool({
			connectionLimit: 100,
			host: 'localhost',
			port: 3306,
			user: 'root',
			password: 'root',
			database: 'search',
			debug: true
		});
		if(this.connection){ // mysql is started && connected successfully.
		   console.log('Connected');
		}else{
		   console.log('Cant connect to db, Check ur db connection');
		}
	}
	query(sql, args) {
		return new Promise((resolve, reject) => {
			this.connection.query(sql, args, (err, rows) => {
				if (err)
					return reject(err);
				resolve(rows);
			});
		});
	}
	close() {
		return new Promise((resolve, reject) => {
			this.connection.end(err => {
				if (err)
					return reject(err);
				resolve();
			});
		});
	}
}
module.exports = new Db();