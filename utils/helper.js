
'user strict';
const DB = require('./db');
var md5 = require('md5');
class Helper{
	
	constructor(app){
		this.db = DB;
	}

	async loginUser(params){
		try {
			return await this.db.query(`SELECT * FROM admin WHERE email = ? AND password = ?`, [params.username,md5(params.password)]);
		} catch (error) {
			return null;
		}
	}

	async Users(params){
		try {
			return await this.db.query(`SELECT * FROM user WHERE id != ?`, [params.userid]);
		} catch (error) {
			return null;
		}
	}

	async chatUser(params){
		try {
			return await this.db.query(`SELECT * FROM chats WHERE sender = ? GROUP BY reciver ORDER BY time DESC`, [params.id]);
		} catch (error) {
			return null;
		}
	}

	async Chats(params){
		try {
			return await this.db.query(`SELECT * FROM chats WHERE sender = ? AND reciver = ? OR sender = ? AND reciver = ?`, [params.sender,params.reciver,params.reciver,params.sender]);
		} catch (error) {
			return null;
		}
	}

	async userInfo(id){
		try {
			return await this.db.query(`SELECT * FROM user WHERE id = ?`, [id]);
		} catch (error) {
			return null;
		}
	}

	async userNameCheck (username){
		return await this.db.query(`SELECT count(name) as count FROM user WHERE LOWER(name) = ?`, `${username}`);
	}

	async registerUser(params){
		try {
			return await this.db.query("INSERT INTO user (`name`,`password`,`online`) VALUES (?,?,?)", [params['username'],params['password'],'Y']);
		} catch (error) {
			console.error(error);
			return null;
		}
	}

	async userSessionCheck(userId){
		try {
			const result = await this.db.query(`SELECT online,username FROM user WHERE id = ? AND online = ?`, [userId,'Y']);
			if(result !== null){
				return result[0]['username'];
			}else{
				return null;
			}
		} catch (error) {
			return null;
		}
	}

	async addSocketId(userId, userSocketId){
		try {
			return await this.db.query(`UPDATE user SET socketid = ?, online= ? WHERE id = ?`, [userSocketId,'Y',userId]);
		} catch (error) {
			console.log(error);
			return null;
		}
	}

	async isUserLoggedOut(userSocketId){
		try {
			return await this.db.query(`SELECT online FROM user WHERE socketid = ?`, [userSocketId]);
		} catch (error) {
			return null;
		}
	}

	async logoutUser(userSocketId){
		return await this.db.query(`UPDATE user SET socketid = ?, online= ? WHERE socketid = ?`, ['','N',userSocketId]);
	}

	getChatList(userId, userSocketId){
		console.log(userId, userSocketId);
		try {
			return Promise.all([
				this.db.query(`SELECT id,username,online,socketid FROM user WHERE id = ?`, [userId]),
				this.db.query(`SELECT id,username,online,socketid FROM user WHERE online = ? and socketid != ?`, ['Y',userSocketId])
			]).then( (response) => {
				return {
					userinfo : response[0].length > 0 ? response[0][0] : response[0],
					chatlist : response[1]
				};
			}).catch( (error) => {
				console.warn(error);
				return (null);
			});
		} catch (error) {
			console.warn(error);
			return null;
		}
	}

	async insertMessages(params){
		var datetime = new Date();
		try {
			return await this.db.query(
				"INSERT INTO chats set sender = ?, reciver = ? , msg = ? , time = ?",
				[params.sender, params.reciver, params.message, datetime]
			);
		} catch (error) {
			console.warn(error);
			return null;
		}		
	}

	async getMessages(userId, toUserId){
		try {
			return await this.db.query(
				`SELECT id,from_user_id as fromUserId,to_user_id as toUserId,message FROM message WHERE 
					(from_user_id = ? AND to_user_id = ? )
					OR
					(from_user_id = ? AND to_user_id = ? )	ORDER BY id ASC				
				`,
				[userId, toUserId, toUserId, userId]
			);
		} catch (error) {
			console.warn(error);
			return null;
		}
	}
}
module.exports = new Helper();