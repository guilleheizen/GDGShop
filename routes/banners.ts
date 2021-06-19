import { Router, Request, Response } from "express";
import MysqlDB from "../classes/mysqldb";

const DB = new MysqlDB(); // UNA INSTANCIA DE NUESTRA BASE DE DATOS
const bannersRoutes = Router();

bannersRoutes.get('/all', (req: Request, res: Response ) => {
    
    DB.cnn.query('SELECT * FROM banners', ( err, results) => {
        if(!err){
            res.json({
                status: true,
                banners: results
            });
        }else{
            res.json({
                status: false,
                err
            });
        
        }
    });

});

bannersRoutes.get('/img', (req: Request, res: Response ) => {
    
    DB.cnn.query('SELECT * FROM banners', ( err, results:any ) => {
        if(!err){
            let banners = '';

            for(let b of results){
                banners = banners + `
                <div style="float:left; text-align:center">
                <div style="width:200px; height:200px; background-size:auto 100%; background-position:center center; background-repeat:no-repeat; background-image: url('${b.image}')"></div>
                </div>
                `;
            }
            res.send(`
            <html>
                <head>
                   <title></title> 
                </head>
                <body>
                 ${banners}
                </body>
            </html>`)
        }else{
            res.json({
                status: false,
                err
            });
        
        }
    });

});


 export default bannersRoutes;