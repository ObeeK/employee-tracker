const mysql = require('mysql2');

const db = mysql.createConnection(
  {
    host: 'localhost',
    user: 'root',
    password: '$Nickers1',
    database: 'employees'
  },
  console.log('Connection to employees database.')
);

 module.exports = db;


 