const express = require("express");
const router = express.Router();
const colors = {
  red: "#ff0000",
  green: "#00ff00",
  blue: "#0000ff",
};
router.get("/", (req, res) => {
  res.json(colors);
});
router.get("/:name", (req, res) => {
  res.json(colors[req.params.name]);
});
router.post("/:name/css-styles", (req, res) => {
  colors[req.params.name] = req.body.color;
  res.json(colors);
});
router.delete("/:name/css-styles", (req, res) => {
  delete colors[req.params.name];
  res.json(colors);
});
module.exports = router;
