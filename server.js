const express = require('express');
const app = express();

app.get('/', function(req, res){
  res.send('Sample');
});

app.listen(3000);