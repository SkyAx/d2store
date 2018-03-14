var express = require("express");
var app = express();

app.use("/");

app.listen(3000, function () {
  console.log("HTTP Server running on port 3000");
});
