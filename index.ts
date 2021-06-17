import express from 'express';

const app = express()
const port = 3000



app.use(express.json());
app.use(express.urlencoded( { extended: true } ));

app.get('/', (req, res) => {
    res.json({
        status:'true',
        response: 'hello world'
    })
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})
