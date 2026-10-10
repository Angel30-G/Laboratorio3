const express = require('express');
const app = express();
const PORT = 3000;

app.get('/hello', (req, res) => {
    res.send('Hello World desde Node.js y Express en VirtualBox!');
});

app.listen(PORT, () => {
    console.log("Servidor corriendo en http://localhost:"+{PORT});
});
