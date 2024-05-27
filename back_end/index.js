const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
require('dotenv').config();

// const config = require('../config.json');

console.log(process.env)

const app = express();
app.use(bodyParser.json());

const db = mysql.createConnection({
    host: process.env.MYSQLHOST,
    user: process.env.MYSQLUSER,
    password: process.env.MYSQLPASSWORD,
    database: process.env.MYSQLDB
})

app.post('/addConsulta', (req, res) => {
    console.log(req.body)
    res.status(200)
})


app.listen(process.env.PORT, () => {
    console.log('Servidor rodando na porta 3000')
})