import express from "express";

import UserModel from "./model";
import bcrypt from "bcrypt";

// index signin
export const index_view_signin = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const alertMessage = req.flash("alertMessage");
    const alertStatus = req.flash("alertStatus");
    const Alert = { message: alertMessage, status: alertStatus };

    res.render("admin/users/view_signin", { Alert });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/auth");
  }
};

// action
export const action_signin = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { email, password } = req.body;

    if (!email || !password) throw new Error("Please Provide Input");

    const check: any = await UserModel.findOne({ email });
    if (!check) throw new Error("account not found");

    if (check?.status === "aktif") {
      const checkPassword = await bcrypt.compare(password, check.password);

      if (checkPassword) {
          req.session.user = {
              id: check._id,
              email: check.email,
              status: check.status,
              name: check.name
        };
        res.redirect("/");
      } else {
        req.flash("alertMessage", "Password Invalid");
        req.flash("alertStatus", "danger");
        res.redirect("/auth");
      }
    } else {
      req.flash("alertMessage", "Mohon maaf status akun anda belum aktif");
      req.flash("alertMessage alertStatus", "inavalid", "danger");
      res.redirect("/auth");
    }
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/auth");
  }
};
