const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const config = require('../config.json');

console.log(process.env)

const app = express();
const port = 3000;

app.use(bodyParser.json());

const db = mysql.createConnection({
    host: config.mysql.host,
    user: 'root',
    password: 'mysqlguilherme',
    database: 'mydatabase'
})


app.listen(3000, () => {
    console.log('Servidor rodando na porta 3000')
})