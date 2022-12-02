var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express', envVar: `aadd`+process.env.DATABASE_URL });
});

module.exports = router;
