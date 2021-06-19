import mysql from 'mysql2';

export default class MysqlDB {

public cnn: mysql.Connection;

constructor(){
    this.cnn = mysql.createConnection({
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: 'root',
        database: 'GdgShop'
    });
}
}
