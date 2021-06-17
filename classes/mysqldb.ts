import mysql from 'mysql2';

export default class MysqlDB {

public connection: mysql.Connection;

constructor(){
    this.connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        database: 'test'
    });
}

}
