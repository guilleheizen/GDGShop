import { Router, Request, Response } from "express";
import MysqlDB from "../classes/mysqldb";

const DB = new MysqlDB(); // UNA INSTANCIA DE NUESTRA BASE DE DATOS
const categoriesRoutes = Router();

categoriesRoutes.get('/all', (req: Request, res: Response ) => {
    
    DB.cnn.query('SELECT * FROM categories', ( err, results) => {
        if(!err){
            res.json({
                status: true,
                categories: results
            });
        }else{
            res.json({
                status: false,
                err
            });
        
        }
    });

});


 export default categoriesRoutes;