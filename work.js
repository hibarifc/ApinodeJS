var mysql = require('mysql');


exports.saveWork = function (users_id_service,users_id_ranter,transaction_id,transaction_detail_id) {
	let workstatus_id = '1';
	let date = new Date().toLocaleDateString();
    let time = new Date().toLocaleTimeString();
    let datetime = date+' '+time;
	var con = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        database : process.env.DB_NAME
    });
    var sql ="INSERT INTO works (users_id_service,users_id_ranter,transaction_id,transaction_detail_id,workstatus_id,is_active,created_by,created_at) VALUES (?,?, ?, ?, ?, 1, ?, ?)";
    
    con.query(sql,[users_id_service,users_id_ranter,transaction_id,transaction_detail_id,workstatus_id,users_id_service,datetime],function(err, result){
        if (err) throw err;
        	console.log("INSERT Work comple");
          
    });
    con.release();
}

exports.getWork = function(req,res){
	let usersid = req.body.usersid;
	var con = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        database : process.env.DB_NAME
    });
    var sql =`  SELECT * FROM works
                INNER JOIN transaction_detail
                ON works.transaction_detail_id=transaction_detail.id
                INNER JOIN informations ON transaction_detail.informations_id = informations.id
                WHERE works.users_id_service = ?
                or works.users_id_ranter =? `;

    con.query(sql,[usersid,usersid],function(err,result){
    	 if (err){
            res.json({ ok: false, status : err});
            
        }
        else{
            res.json({ ok: true, status : result});
           
        }
    });
    con.release();

}

exports.upDatework = function(transactionid,transaction_detail_id){
    console.log(transactionid+' '+transaction_detail_id);
    var con = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        database : process.env.DB_NAME
    });
    var sql ="UPDATE works SET workstatus_id=2 WHERE transaction_id=? AND transaction_detail_id = ?";
    con.query(sql,[transactionid,transaction_detail_id],function(err,result){
        if (err) throw err;
            console.log("UPDATE Work comple");
            con.release();
        
    });
    con.release();
}