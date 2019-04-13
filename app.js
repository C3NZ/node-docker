"use strict";

// Setup app
const express = require("express");
const PORT = 8080;
const HOST = "0.0.0.0";
const app = express();

// Configure root route
app.get("/", (req, res) => {
  res.send("Hello world!\n");
});

// Setup server
app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
