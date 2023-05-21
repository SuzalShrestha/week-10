const express = require("express");
const app = express();
require("express-async-errors");
app.use(express.json()); // for parsing application/json
require("dotenv").config();
console.log(process.env.NODE_ENV);
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
  const error = new Error("Hello World!");
  error.statusCode = 400;
  next(error);
});

app.use("/static", express.static("assets"));
app.use((err, req, res, next) => {
  console.log(err);
  if (process.env.NODE_ENV !== "production") {
    return res.status(500).json({ error: err.message, stack: err.stack });
  }
  res.status(err.statusCode || 500).json({ error: err.message });
});
app.use((req, res, next) => {
  res.status(404).json({ error: "The requested resource could not be found." });
});

const port = 5000;
app.listen(port, () => console.log("Server is listening on port", port));
