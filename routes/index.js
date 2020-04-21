var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/xslt', function (req, res, next) {
  res.render('xslt', {title: 'Test XSLT on the Client'});
});

router.get('/cars', function (req, res, next) {
  res.render('cars', {title: 'Cars'});
});

module.exports = router;
