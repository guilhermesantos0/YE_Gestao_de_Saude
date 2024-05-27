const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const session = require('express-session');
require('dotenv').config();

// const config = require('../config.json');

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(session({
    secret: 'seu_segredo_aqui',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false } // Altere para true se estiver usando HTTPS
}));

const db = mysql.createConnection({
    host: process.env.MYSQLHOST,
    user: process.env.MYSQLUSER,
    password: process.env.MYSQLPASSWORD,
    database: process.env.MYSQLDB
})

db.connect((err) => {
    if (err) {
      console.error('Erro ao conectar ao banco de dados:', err);
      return;
    }
    console.log('Conectado ao banco de dados MySQL');
});

// ===================================================
// SESSÃO
// ===================================================

app.post('/login', (req, res) => {
    const { email, password } = req.body;
    const sql = "SELECT * FROM users WHERE email = ? AND password = ?";
  
    db.query(sql, [email, password], (err, results) => {
      if (err) {
        console.error('Erro ao buscar usuário:', err);
        res.status(500).send('Erro ao fazer login');
        return;
      }
      if (results.length > 0) {
        req.session.userId = results[0].id;
        res.status(200).send({ message: 'Login bem-sucedido', userId: results[0].id });
      } else {
        res.status(401).send('Credenciais inválidas');
      }
    });
});

app.post('/signup', (req, res) => {
  const { email, password, name, cpf, weight, height, bornDate } = req.body;

  const insertUserQuery = 'INSERT INTO users (email, password) VALUES (?, ?)';
  const insertUserDataQuery = 'INSERT INTO user_data (id, name, cpf, weight, height, bornDate) VALUES (?, ?, ?, ?, ?, ?)';

  db.beginTransaction(err => {
      if (err) {
          console.error('Erro ao iniciar transação:', err);
          return res.status(500).json({ error: 'Erro ao iniciar transação', details: err.message });
      }

      // Inserir na tabela users
      db.query(insertUserQuery, [email, password], (err, result) => {
          if (err) {
              console.error('Erro ao inserir na tabela users:', err);
              return db.rollback(() => {
                  res.status(500).json({ error: 'Erro ao inserir na tabela users', details: err.message });
              });
          }

          const userId = result.insertId;

          // Inserir na tabela user_data
          db.query(insertUserDataQuery, [userId, name, cpf, weight, height, bornDate], (err, result) => {
              if (err) {
                  console.error('Erro ao inserir na tabela user_data:', err);
                  return db.rollback(() => {
                      res.status(500).json({ error: 'Erro ao inserir na tabela user_data', details: err.message });
                  });
              }

              db.commit(err => {
                  if (err) {
                      console.error('Erro ao cometer transação:', err);
                      return db.rollback(() => {
                          res.status(500).json({ error: 'Erro ao cometer transação', details: err.message });
                      });
                  }
                  res.status(200).json({ message: 'Usuário cadastrado com sucesso!' });
              });
          });
      });
  });
});

app.get('/checkAuth', (req, res) => {
    if (req.session.userId) {
      res.status(200).send({ loggedIn: true, userId: req.session.userId });
    } else {
      res.status(200).send({ loggedIn: false });
    }
});

// ===================================================
// CONSULTAS
// ===================================================

app.post('/addConsult', (req, res) => {
    const { userId, name, date, time, place } = req.body;
    const sql = "INSERT INTO consults (userId, name, date, time, place) VALUES (?, ?, ?, ?, ?)";
    
    db.query(sql, [userId, name, date, time, place], (err, result) => {
      if (err) {
        console.error('Erro ao inserir coansulta:', err);
        res.status(500).send('Erro ao adicionar consulta');
        return;
      }
      res.status(200).send({ insertId: result.insertId });
    });
});

app.get('/getUserConsults/:userId', (req, res) => {
    const { userId } = req.params;
    const sql = "SELECT * FROM consults WHERE userId = ?";
  
    db.query(sql, [userId], (err, results) => {
      if (err) {
        console.error('Erro ao buscar consultas:', err);
        res.status(500).send('Erro ao buscar consultas');
        return;
      }
      res.status(200).json(results);
    });
});

// ===================================================
// HOME
// ===================================================

app.get('/user/:userId', (req, res) => {
  const userId = req.params.userId;

  const query = 'SELECT * FROM user_data WHERE id = ?';

  db.query(query, [userId], (err, results) => {
      if (err) {
          console.error('Erro ao buscar dados do usuário:', err);
          return res.status(500).json({ error: 'Erro ao buscar dados do usuário', details: err.message });
      }

      if (results.length > 0) {
          res.status(200).json(results[0]);
      } else {
          res.status(404).json({ error: 'Usuário não encontrado' });
      }
  });
});

app.listen(process.env.PORT, () => {
    console.log('Servidor rodando na porta 3000')
})