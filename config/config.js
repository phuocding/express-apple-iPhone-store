const mysql = require('mysql');
const connection = {
  host: "localhost",
  database: "apple-iphone-store",
  user: "iPhone",
  password: "123456",
  port: 3306
};
let db;

const connectdb = () => {
  if(!db) {
    db = mysql.createConnection(connection);

    db.connect( (err) => {
      if (!err) {
        console.log('connect successful');
      } else {
        console.log('database disconnection');
      }
    })
  }
  return db;
}

module.exports = connectdb();