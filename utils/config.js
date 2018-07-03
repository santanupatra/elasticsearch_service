class Config{
	
	constructor(app){
		// Setting .html as the default template extension
		app.set('view engine', 'html');

		// Telling express where it can find the templates
		app.set('views', (__dirname + '/../views'));

		//Files 
		app.use(require('express').static(require('path').join('client')));
		app.use(function(req,res,next){
		    res.setHeader('Access-Control-Allow-Origin', 'http://192.168.1.118:8085');
		    res.setHeader('Access-Control-Allow-Origin', '*');
		    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
		    //res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
		    res.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept")
		    res.setHeader('Access-Control-Allow-Credentials', true);
		    next();
		});
	}
}
module.exports = Config;