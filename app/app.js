const express = require("express");

const app = express();

const PORT = 3001;

app.get("/", (req, res) => {
    res.send("<h1>Hello DevOps 🚀</h1>");
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});