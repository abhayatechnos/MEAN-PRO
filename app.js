// express = require('express');
// morgan = require('morgan');
// path = require('path');
// methods = require('methods');
// bodyParser = require('body-parser');
// cors = require('cors');
// app.listen(8000, ()=> {
//   console.log('App running on port 8080  ')
// });
'use strict';

const express = require('express');

// Constants
const PORT = 8000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('<h1 style="color:green;">Java Home App - version-10!!</h1> sdsdsd \n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);