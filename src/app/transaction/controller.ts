import express from "express";

import TransactiontModel from "./model";
import config from "@src/config";

// index
export const index_view = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const alertMessage = req.flash("alertMessage");
    const alertStatus = req.flash("alertStatus");
    const Alert = { message: alertMessage, status: alertStatus };

    const data = await TransactiontModel.find()
      .populate("historyPayment")
      .populate("user")
      .populate("category")
      .populate("player")
    // console.log(data);

    res.render("admin/transaction/view_transaction", {
      data,
      Alert,
      Title: "Halaman Transaction",
      userName: req.session.user.name,
      urlImage: config.urlImage,
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/transaction");
  }
};

// edit status Transaction
export const action_changeStatus = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;
    const { status } = req.query;

    await TransactiontModel.findByIdAndUpdate(id, {
      status,
    });

    req.flash("alertMessage", "Berhasil Ubah Status Transaction");
    req.flash("alertStatus", "success");
    res.redirect("/transaction");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/transaction");
  }
};
