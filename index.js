// index.js
const express = require('express');
const app = express();
const PORT = 7051;

app.get('/', (req, res) => {
  res.send('good morning!');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
