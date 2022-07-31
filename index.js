const express = require("express");
const db = require("./database/models");
const cors = require("cors");
const app = express();
const port = 5000;
const authRouter = require("./routing/auth");
const productRouter = require("./routing/product");
const cartRouter = require("./routing/cart");
const orderRouter = require("./routing/order");

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());

app.use("/auth", authRouter);
app.use("/product", productRouter);
app.use("/cart", cartRouter);
app.use("/order", orderRouter);

app.use((error, req, res, next) => {
  return res.status(400).json({
    status: "error",
    code: 400,
    message: "bad request",
    error: error.message,
  });
});

db.sequelize.sync().then(() => {
  console.log("Drop and re-sync db.");
});
app.listen(port, () => {
  console.log("Server running on port: ${port}");
});
