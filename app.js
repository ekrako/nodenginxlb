const express = require('express');
const dotenv = require('dotenv');
var os = require("os");
dotenv.config();
const app = express();


app.get('/', (req, res) => {
    res.send(req.socket.localAddress);
});


app.listen(process.env.LISTEN_PORT, () => {
    console.log('Server started on port ' + process.env.LISTEN_PORT);
});