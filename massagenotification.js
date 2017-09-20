var mysql = require('mysql');
var gcm = require('node-gcm');



exports.sandmassage = function(usersid){

	var message = new gcm.Message();
	message.addData('title', 'แจ้งเตือน');
	message.addData('message', 'ได้รับรายการเช่า');
	message.addData('content-available', true);
	message.addData('data', { "username": "Satit", "message": "Hello world" });
	// message.addData('notId', 2);
	// message.addData('image', 'http://res.cloudinary.com/demo/image/upload/w_133,h_133,c_thumb,g_face/bike.jpg');
	message.addData('image', 'http://www.pro.moph.go.th/w54/images/ICT/loadlogomoph.png');	

	var sender = new gcm.Sender('AAAAwnJv_gg:APA91bF2awph8l2fpkCWpLL-KAhtVFTVI77awA4COlrG9xRylk_7dvkG3c5rTtvNuWt2vKlsJvQvpAx6B2zmpelp0-5d3_O67NehuwYzAyIy8W8sdG1uwwCx8LBO4PlR_cffqVDe05y6');
	var con = mysql.createConnection({
  		host: process.env.DB_HOST,
  		user: process.env.DB_USER,
  		password: process.env.DB_PASSWORD,
  		database : process.env.DB_NAME
	});

	var sql = "SELECT * FROM users_tokendevice WHERE users_id = 1";
	con.query(sql,function(err,result){
       	console.log(result);
		console.log(err);
		if(result!=null)
		{
			var regTokens = result[0].token;

			sender.send(message, { registrationTokens: regTokens }, function (err, response) {
    		if(err) console.error(err);
    		else 	console.log(response);
			});
			console.log("sandmassage complete");
		}
    });
	
	
	
}
// Set up the sender with you API key, prepare your recipients' registration tokens. 
