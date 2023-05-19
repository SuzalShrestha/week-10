const express = require('express');
const app = express();
// Your code here
// app.use('/',express.static('assets'));
app.use('/',express.static('assets/scripts'));
app.use('/stylesheets',express.static('assets/css'));
app.use('stickers',express.static('assets/images'));
//assets/images/hello.png is not found as it is not in the static folder but rather in the stickers folder
const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));