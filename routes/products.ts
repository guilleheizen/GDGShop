import { Router, Request, Response } from "express";
import MysqlDB from "../classes/mysqldb";

const DB = new MysqlDB(); // UNA INSTANCIA DE NUESTRA BASE DE DATOS
const productsRoutes = Router();

productsRoutes.get('/all', (req: Request, res: Response ) => {
    
    DB.cnn.query('SELECT * FROM products', ( err, results) => {
        if(!err){
            res.json({
                status: true,
                products: results
            });
        }else{
            res.json({
                status: false,
                err
            });
        
        }
    });

});

productsRoutes.get('/search', (req: Request, res: Response ) => {

    const w = req.query.w;
    
    DB.cnn.query('SELECT * FROM products WHERE name LIKE ?','%'+w+'%', ( err, results) => {
        if(!err){
            res.json({
                status: true,
                products: results
            });
        }else{
            res.json({
                status: false,
                err
            });
        
        }
    });

});

productsRoutes.get('/category', (req: Request, res: Response ) => {

    const c = req.query.c;
    
    DB.cnn.query('SELECT * FROM products WHERE category = ?',c, ( err, results) => {
        if(!err){
            res.json({
                status: true,
                products: results
            });
        }else{
            res.json({
                status: false,
                err
            });
        
        }
    });

});


productsRoutes.get('/img', (req: Request, res: Response ) => {
    
    DB.cnn.query('SELECT * FROM products', ( err, results:any) => {
        if(!err){

            let banners = '';

            for(let p of results){
                banners = banners + `
                <div style="float:left; text-align:center">
                <div style="width:200px; height:200px; background-size:100%; background-position:center center; background-repeat:no-repeat; background-image: url('${p.image}')"></div>
                <h4>${p.name}</h4>
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


export default productsRoutes