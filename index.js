const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('How the heck are ya');
});

app.listen(8080, () => {
    console.log('listening on port 8080');
});