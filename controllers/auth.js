require("dotenv").config();

const db = require("../database/models");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const { SECRET_TOKEN } = process.env;
const User = db.users;

exports.register = async (req, res, next) => {
  try {
    const { name, username, password } = req.body;
    console.log("user tidak ada");
    const user = await User.findOne({
      where: {
        username: username,
      },
    });

    const hashedPassword = await bcrypt.hash(password, 12);
    console.log("user tidak ada");
    await User.create({
      username: username,
      password: hashedPassword,
      name: name,
      type: "user",
    });

    return res.status(201).json({
      status: "success",
      code: 201,
      message: "Success register user.",
    });
  } catch (error) {
    return next(error);
  }
};
exports.login = async (req, res, next) => {
  try {
    const { username, password } = req.body;

    const user = await User.findOne({
      where: {
        username: username,
      },
    });

    if (!user) {
      console.log("user tidak ada");
      throw new Error("User with this username not found.");
    }

    const isMatch = await bcrypt.compare(password, user.password);

    if (!isMatch) {
      console.log("password tidak valid");
      throw new Error("Password not valid.");
    }
    const accessToken = jwt.sign({ userId: user.id }, SECRET_TOKEN, {
      expiresIn: "1h",
    });
    return res.status(200).json({
      status: "success",
      code: 200,
      message: "Success login.",
      data: {
        access_token: accessToken,
        type: user.type,
        userId: user.id,
      },
    });
  } catch (error) {
    return next(error);
  }
};
