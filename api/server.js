const express = require("express");

const exerciseRoutes = require("./routes/exerciseRoutes");

const app = express();

app.use(express.json());

app.use('/api', exerciseRoutes);

app.get("/", (req, res) => {
    const currentHour = new Date().getHours();
    let greeting;

    if (currentHour >= 5 && currentHour < 12) {
        greeting = "Good morning!";
    } else if (currentHour >= 12 && currentHour < 17) {
        greeting = "Good afternoon!";
    } else if (currentHour >= 17 && currentHour < 21) {
        greeting = "Good evening!";
    } else {
        greeting = "Good night!";
    }

    res.send(greeting);
});
module.exports = app;
