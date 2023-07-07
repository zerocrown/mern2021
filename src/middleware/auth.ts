import express, { Request } from "express";
import UserModel from "../app/users/model";
import PlayerModel from "../app/player/model";
import jwt from "jsonwebtoken";
import config from "@src/config";

// middleware
export const isLogin = async (
  req: express.Request,
  res: express.Response,
  next: express.NextFunction
) => {
  if (!req.session.user) {
    req.flash("alertMessage", "Session anda telah habis silakan login kembali");
    req.flash("alertStatus", "warning");
    res.redirect("/auth");
  } else {
    next();
  }
};

export const isSession = async (
  req: express.Request,
  res: express.Response,
  next: express.NextFunction
) => {
  if (req.session.user) {
    res.redirect("/");
  } else {
    next();
  }
};

// user player

export const isLoginPlayer = async (
  req: express.Request,
  res: express.Response,
  next: express.NextFunction
) => {
  try {
    const header = req.headers.authorization;

    let token: any = '';
    if (header && header.startsWith("Bearer")) {
      token = header.split(" ")[1];
      
    }
    
    // console.log(config.jwtSecret);
    // console.log(token);
    const result: any = jwt.verify(token, config.jwtSecret)
    
    // console.log('result >>>')
    // console.log(result)

    const player = await PlayerModel.findById(result.id);
    if (!player) throw new Error();

    req.player = player;
    req.token = token;


    next();
  } catch (error) {
    res.status(401).json({ message: "not authorized this route" });
  }
};
