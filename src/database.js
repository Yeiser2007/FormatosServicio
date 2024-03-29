const mysql = require('mysql2')
const {database} = require('./keys');
const {promisify}=require('util')
const pool = mysql.createPool(database);

pool.getConnection((err,connection)=>{
    if(err){
        if(err.code === 'PROTOCOL_CONNECTION_LOST'){
            console.log('DATABASE CONNECTION WAS CLOSED');
        }
        if(err.code === 'ERR_CON_COUNT_ERROR'){
            console.log('DATABASEHAS TO MANY CONNECTIONS');
        }
        if(err.code === 'ECONNREFUSER'){
            console.log('DATABASE CONNECTION WAS REFUSED');
        }
    }
    if(connection) connection.release()
    console.log('DATABASE WAS CONNECTED');
    return
})

//promisify pool querys
pool.query = promisify(pool.query)

module.exports = pool