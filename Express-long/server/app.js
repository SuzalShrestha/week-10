const express = require("express");
const app = express();
require("express-async-errors");
app.use(express.json()); // for parsing application/json
const dogRouter = require("./routes/dogs");
const logger = (req, res, next) => {
  console.log(req.method, req.path);
  res.on("finish", () => {
    console.log(res.statusCode);
  });
  next();
};
app.use(logger);
// For testing purposes, GET /
app.get("/", (req, res) => {
  res.json(
    "Express server running. No content provided at root level. Please use another route."
  );
});

// For testing express.json middleware
app.post("/test-json", (req, res, next) => {
  // send the body as JSON with a Content-Type header of "application/json"
  // finishes the response, res.end()
  res.json(req.body);
  next();
});

app.use("/dogs", dogRouter);
// For testing express-async-errors
app.get("/test-error", async (req, res) => {
  throw new Error("Hello World!");
});

app.use("/static", express.static("assets"));
app.use((req, res, next) => {
  res.status(404).json({ error: "The requested resource could not be found." });
});

const port = 5000;
app.listen(port, () => console.log("Server is listening on port", port));
