import express, { Request } from "express";
import UserModel from "../app/users/model";

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
