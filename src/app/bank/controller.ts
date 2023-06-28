import express from "express";

import BankModel, {BankOptions} from "./model";

// import config from "../../config/index";
// import fs from "fs";
// import path from "path";

// index
export const index_view = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const alertMessage = req.flash("alertMessage");
    const alertStatus = req.flash("alertStatus");

    const Alert = { message: alertMessage, status: alertStatus };

    const data = await BankModel.find();

    res.render("admin/bank/view_bank", { data, Alert });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/bank");
  }
};

// create
export const view_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    res.render("admin/bank/create");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/bank");
  }
};

export const action_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { name, nameBank, noRekening } = req.body;

    const bank = await BankModel.create({
      name,
      nameBank,
      noRekening,
    });
    bank.save();

    req.flash("alertMessage", "Berhasil Tambah Bank");
    req.flash("alertStatus", "success");

    res.redirect("/bank");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/bank");
  }
};

// edit

export const view_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const bank = await BankModel.findById(id);

    res.render("admin/bank/edit", {
      data: {
        bank,
        option: BankOptions,
      },
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/bank");
  }
};

export const action_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;
    const { name, nameBank, noRekening } = req.body;

    await BankModel.findByIdAndUpdate(
      id,
      { name, nameBank, noRekening },
      {
        new: true,
        runValidators: true,
      }
    );

    req.flash("alertMessage", "Berhasil Edit data Bank");
    req.flash("alertStatus", "success");

    res.redirect("/bank");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/bank");
  }
};

// delete

export const action_delete = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    await BankModel.findByIdAndDelete(id);

    req.flash("alertMessage", "Berhasil Hapus Bank");
    req.flash("alertStatus", "success");

    res.redirect("/bank");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/bank");
  }
};
