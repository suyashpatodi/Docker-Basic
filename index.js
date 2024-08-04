const express = require("express");
const app = express();

app.get("/", (req, res) => {
    res.json([
        {
            id: 1,
            name: "Suyash Patodi"
        },
        {
            id: 2,
            name: "Virat Kohli"
        },
        {
            id: 3,
            name: "Neeraj Chopra"
        },
        {
            id: 4,
            name: "Manu Bhaker"
        }
    ])
});

app.listen(5500, () => {
    console.log("App is running on 5500 port")
});
