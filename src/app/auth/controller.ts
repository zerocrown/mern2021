import express from "express";
import PlayerModel from "../player/model";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";

import config from "@src/config";

// interface Player Payload
interface PlayerPayload {
  _doc?: this;
  email?: string;
  name?: string;
  phoneNumber?: number;
  password?: string;
  username?: string;
  status?: string;
  avatar?: any;
}

// controller
export const SignUp = async (
  req: express.Request,
  res: express.Response,
  next: express.NextFunction
) => {
  try {
    const { name, username, email, password, phoneNumber } = req.body;

    const payload: PlayerPayload = await PlayerModel.create({
      email,
      name,
      password,
      phoneNumber,
      username,
      status: "aktif",
      avatar: req.file ? `uploads/${req.file.filename}` : null,
    });

    delete payload._doc?.password;

    res.status(201).json({
      message: payload,
    });
  } catch (error) {
    if (error && error.name === "ValidationError") {
      return res.status(422).json({
        error: 1,
        message: error.message,
        fields: error.errors,
      });
    }
    if (error && error.keyPattern.email == 1) {
      return res.status(400).json({
        message: "email duplikat",
      });
    }

    next(error);
  }
};

export const SignIn = async (
  req: express.Request,
  res: express.Response,
  next: express.NextFunction
) => {
  try {
    const { email, password } = req.body;

    const user: any = await PlayerModel.findOne({ email });
    if (!user) throw new Error("User not found");

    const checkPassword = await bcrypt.compare(password, user?.password);
    if (!checkPassword) throw new Error("Invalid password");

    const token = jwt.sign(
      {
        id: user._id,
        email: user.email,
        name: user.name,
        username: user.username,
        avatar: user.avatar,
      },
      config.jwtSecret,
      {
        expiresIn: "10h",
      }
    );

    res.status(201).json({ message: "selamat datang", token });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};
