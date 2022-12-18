const express = require('express');
const app = express();
const port = 5000;
const bodyParser = require('body-parser');

app.use(bodyParser.json({extended: true}));

app.post('/products', function(req, res) {
    console.log(req.body.products);
    //manipulate the data
    //sync to an online database or a database in the server.
    res.send("Data received");
})

app.listen(port, () => {
    console.log(`Listening on port ${port}`);
});