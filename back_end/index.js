const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
require('dotenv').config();

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const db = mysql.createConnection({
    host: process.env.MYSQLHOST,
    user: process.env.MYSQLUSER,
    password: process.env.MYSQLPASSWORD,
    database: process.env.MYSQLDB,
    port: process.env.MYSQLPORT
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

      db.query(insertUserQuery, [email, password], (err, result) => {
          if (err) {
              console.error('Erro ao inserir na tabela users:', err);
              return db.rollback(() => {
                  res.status(500).json({ error: 'Erro ao inserir na tabela users', details: err.message });
              });
          }

          const userId = result.insertId;

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
                  res.status(200).json({ message: 'Usuário cadastrado com sucesso!', insertId: userId });
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

app.get('/deleteConsult/:userId&:consultId', (req, res) => {
  const {userId, consultId} = req.params;
  const sql = "DELETE FROM consults WHERE id = ? AND userId = ?"
  
  db.query(sql, [consultId, userId], (err, results) => {
    if(err) {
      console.error("Erro ao apagar consulta:", err);
      res.status(500).send('Erro ao apagar consulta');
      return;
    }
    res.status(200)
  })
})

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

app.post('/editProfile/:id', (req, res) => {
  const userId = req.params.id;
  const { name, cpf, weight, height, bornDate } = req.body;

  const sql = `
      UPDATE user_data
      SET name = ?, cpf = ?, weight = ?, height = ?, bornDate = ?
      WHERE id = ?
  `;

  db.query(sql, [name, cpf, weight, height, bornDate, userId], (err, result) => {
      if (err) {
          console.error('Erro ao atualizar perfil:', err);
          res.status(500).json({ error: 'Erro ao atualizar perfil' });
      } else {
          res.json({ message: 'Perfil atualizado com sucesso' });
      }
  });
});

// ===================================================
// MEDICAMENTOS
// ===================================================

app.get('/userMedicines/:userId', (req, res) => {
  const userId = req.params.userId;
  const sql = 'SELECT * FROM user_medicines INNER JOIN medicamentos ON user_medicines.medicineid = medicamentos.id WHERE userid = ?';
  db.query(sql, [userId], (err, results) => {
    if (err) {
      console.error('Erro ao buscar medicamentos do usuário:', err);
      return res.status(500).json({ error: 'Erro ao buscar medicamentos do usuário' });
    }
    res.json(results);
  });
});

app.get('/medicines', (req, res) => {
  const sql = 'SELECT * FROM medicamentos';
  db.query(sql, (err, results) => {
    if (err) {
      console.error('Erro ao buscar medicamentos disponíveis:', err);
      return res.status(500).json({ error: 'Erro ao buscar medicamentos disponíveis' });
    }
    res.json(results);
  });
});

app.post('/addMedicine', (req, res) => {
  const { userId, medicineid, amount, time } = req.body;
  const sql = 'INSERT INTO user_medicines (userid, medicineid, amount, time) VALUES (?, ?, ?, ?)';
  db.query(sql, [userId, medicineid, amount, time], (err, results) => {
    if (err) {
      console.error('Erro ao adicionar medicamento:', err);
      return res.status(500).json({ error: 'Erro ao adicionar medicamento' });
    }
    res.status(201).json({ message: 'Medicamento adicionado com sucesso' });
  });
});

app.delete('/deleteMedicine/:id', (req, res) => {
  const medicineId = req.params.id;
  const sql = 'DELETE FROM user_medicines WHERE id = ?';
  db.query(sql, [medicineId], (err, results) => {
    if (err) {
      console.error('Erro ao excluir medicamento:', err);
      return res.status(500).json({ error: 'Erro ao excluir medicamento' });
    }
    res.json({ message: 'Medicamento excluído com sucesso' });
  });
});
// ===================================================
// Ver Exames
// ===================================================
app.get('/exams', (req, res) => {
  if (useLocalData) {
    res.json(localData);
  } else {
    db.query('SELECT name, result, date FROM exams', (err, results) => {
      if (err) {
        console.error('Error fetching data:', err);
        res.status(500).send('Server error');
        return;
      }
      res.json(results);
    });
  }
});
// ===================================================
// delete Exames
// ===================================================
app.delete('/exams/:id', (req, res) => {
  const { id } = req.params;
  if (useLocalData) {
    const index = localData.findIndex(exam => exam.id == id);
    if (index > -1) {
      localData.splice(index, 1);
      res.status(200).send({ message: 'Exam deleted successfully' });
    } else {
      res.status(404).send({ message: 'Exam not found' });
    }
  } else {
    db.query('DELETE FROM exams WHERE id = ?', [id], (err, results) => {
      if (err) {
        console.error('Error deleting data:', err);
        res.status(500).send('Server error');
        return;
      }
      res.status(200).send({ message: 'Exam deleted successfully' });
    });
  }
});


app.listen(process.env.PORT, () => {
  console.log('Servidor rodando na porta 3000')
})