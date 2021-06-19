import express from 'express';

// ROUTES
import bannersRoutes from './routes/banners';
import productsRoutes from './routes/products';
import categoriesRoutes from './routes/categoriaes';

const app = express()
const port = 3000

app.use(express.json());
app.use(express.urlencoded( { extended: true } ));

app.use('/products', productsRoutes);
app.use('/banners', bannersRoutes);
app.use('/categories', categoriesRoutes);

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})
