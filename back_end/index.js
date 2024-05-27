const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

// const config = require('../config.json');

const app = express();
const port = 3000;

app.use(bodyParser.json());

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "mysqlguilherme",
    database: "ye_gestao_saude"
})

app.post('/addConsult', (req, res) => {
    console.log("receba")
    const query = req.body
    const sqlString = "INSERT INTO consults(userId, name, date, time, place) VALUES(?, ?, ?, ?, ?)";

    db.query(sqlString, [query.userId, query.name, query.date, query.time, query.place], (err, result, fields) => {
        if(err) {
            console.log(err)
            return
        }

        console.log("OK!")
    })
})

app.listen(port, () => {
    console.log('Servidor rodando na porta 3000')
})