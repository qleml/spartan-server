const app = require('./api/server.js');
const port = process.env.PORT || 7051;

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});