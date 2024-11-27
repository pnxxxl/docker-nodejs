const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Node.js работает');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Сервер запущен на порту ${PORT}`);
});
