const express = require('express');
const router = express.Router();
const connection = require('../config/config');
const bodyParser = require('body-parser');

router.use(bodyParser.urlencoded({ extended: false }));
router.use(bodyParser.json());

/* GET home page. */
router.get('/', (req, res, next) => {
  connection.query('SELECT * FROM phones', (err, rs) => {
    if (err) throw err;

    res.render('index', { phones: rs });
  })
});

// POST new phones
router.post('/createPhones', (req, res) => {
  const data = {
    model: req.body.model,
    memory: req.body.memory,
    color: req.body.color,
    price: req.body.price,
    images: req.body.images
  }

  connection.query('INSERT INTO phones SET ?', data, (err, rs) => {
    if (err) throw err;
    res.redirect('/');
  });
});

// DELETE phones
router.get('/deletePhones/:id', (req, res) => {
  let phoneId = req.params.id;

  connection.query('DELETE FROM phones WHERE id = ?', [phoneId], (err, rs) => {
    if (err) throw err;
    res.redirect('/');
  })
});

router.get('/edit/:id', (req, res) => {
  let phoneId = req.params.id;

  connection.query('SELECT * FROM phones WHERE id = ?', [phoneId], (err, rs) => {
    if (err) throw err;
    res.render('update', { data: rs });
  })
});

router.post('/updatePhones/:id', (req, res) => {

  let model = req.body.model;
  let memory = req.body.memory;
  let color = req.body.color;
  let price = req.body.price;
  let images = req.body.images;

  let updateId = req.params.id;

  connection.query('UPDATE phones SET model=?, memory=?, color=?, price=?, images=? WHERE id=?', 
  [model,memory,color,price,images,updateId], (err, rs) => {
    if (err) throw err;
    res.redirect('../../');
  });
})

module.exports = router;
