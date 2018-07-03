/**
* Real Time chatting app
* @author Shashank Tiwari
*/
'use strict';

const path = require('path');
const helper = require('./helper');

class Socket{

    constructor(socket){
        this.io = socket;
    }
    
    socketEvents(){

        this.io.on('connection', (socket) => {
            console.log("Socket Connected");
            /**
            * send the messages to the user
            */
            socket.on('add-message', async (data) => {
                console.log('Emmited Data - ');
                console.log(data.text);
                data = data.text;
                this.io.emit('add-message', data);
                if (data.message === '') {
                    
                    this.io.to(socket.id).emit(`add-message-response`,`Message cant be empty`); 

                }else if(data.fromUserId === ''){
                    
                    this.io.to(socket.id).emit(`add-message-response`,`Unexpected error, Login again.`); 

                }else if(data.toUserId === ''){
                    
                    this.io.to(socket.id).emit(`add-message-response`,`Select a user to chat.`); 

                }else{                    
                    let toSocketId = data.toSocketId;
                    const sqlResult = await helper.insertMessages({
                        sender: data.sender,
                        reciver: data.reciver,
                        message: data.message
                    });
                    this.io.to(toSocketId).emit(`add-message-response`, data); 
                }               
            });


            /**
            * Logout the user
            */
            socket.on('logout', async () => {
                const isLoggedOut = await helper.logoutUser(socket.id);
                this.io.to(socket.id).emit('logout-response',{
                    error : false
                });
                socket.disconnect();
            });


            /**
            * sending the disconnected user to all socket users. 
            */
            socket.on('disconnect',async ()=>{
                const isLoggedOut = await helper.logoutUser(socket.id);
                setTimeout(async ()=>{
                    const isLoggedOut = await helper.isUserLoggedOut(socket.id);
                    if (isLoggedOut && isLoggedOut !== null) {
                        socket.broadcast.emit('chat-list-response', {
                            error: false,
                            userDisconnected: true,
                            socketId: socket.id
                        });
                    }
                },1000);
            });

        });

    }
    
    socketConfig(){

        this.io.use( async (socket, next) => {
            console.log(socket);
            let userId = socket.request._query['userId'];
            let userSocketId = socket.id;
            const response = await helper.addSocketId( userId, userSocketId);
            if(response &&  response !== null){
                next();
            }else{
                console.error(`Socket connection failed, for  user Id ${userId}.`);
            }
        });

        this.socketEvents();
    }
}
module.exports = Socket;