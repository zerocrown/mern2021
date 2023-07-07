import express from "express";

import VoucherModel from "./model";
import CategoryModel from "../category/model";
import NominalModel from "../nominal/model";
import config from "../../config/index";
import fs from "fs";
import path from "path";

// index
export const index_view = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const alertMessage = req.flash("alertMessage");
    const alertStatus = req.flash("alertStatus");

    const Alert = {
      message: alertMessage,
      status: alertStatus,
    };

    const data = await VoucherModel.find()
      .populate("category")
      .populate("nominal");

    res.render("admin/voucher/view_voucher", {
      data,
      Alert,
      Title: "Halaman Voucher",
      userName: req.session.user.name,
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/voucher");
  }
};

// create
export const view_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const category = await CategoryModel.find();
    const nominal = await NominalModel.find();

    res.render("admin/voucher/create", {
      data: { category, nominal },
      Title: "Halaman Tambah Voucher",
      userName: req.session.user.name,
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/voucher");
  }
};

export const action_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { category, nominal, name, status } = req.body;

    const voucher = await VoucherModel.create({
      category,
      name,
      nominal,
      status,
      thumbnail: req.file ? `uploads/${req.file.filename}` : null,
    });
    await voucher.save();

    const alertMessage = req.flash("alertMessage", "Berhasil Tambah Voucher");
    const alertStatus = req.flash("alertStatus", "success");

    res.redirect("/voucher");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/voucher");
  }
};

// edit

export const view_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const category = await CategoryModel.find();
    const nominal = await NominalModel.find();
    const voucher = await VoucherModel.findById(id)
      .populate("category")
      .populate("nominal");
    

    
  

    res.render("admin/voucher/edit", {
      data: {
        voucher,
        category,
        nominal,
        urlImage: config.urlImage,
      },
      Title: "Halaman Edit Voucher",
      userName: req.session.user.name,
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/voucher");
  }
};

export const action_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;
    const { category, nominal, name, status } = req.body;

    const voucher = await VoucherModel.findById(id);

    let currentImage = `${path.join(__dirname, "../../public/")}${
      voucher?.thumbnail
    }`;
    if ( req.file && fs.existsSync(currentImage)) {
      fs.unlinkSync(currentImage);
    }

    await VoucherModel.findByIdAndUpdate(
      id,
      {
        category,
        nominal,
        name,
        status,
        thumbnail: req?.file ? `uploads/${req?.file?.filename}` : voucher?.thumbnail,
      },
      {
        new: true,
        runValidators: true,
      }
    );

    req.flash("alertMessage", "Berhasil Edit Voucher");
    req.flash("alertStatus", "success");

    res.redirect("/voucher");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/voucher");
  }
};

// delete

export const action_delete = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const voucher = await VoucherModel.findById(id);

    let currentImage = `${path.join(__dirname, "../../public/")}${
      voucher?.thumbnail
    }`;
    if (fs.existsSync(currentImage)) {
      fs.unlinkSync(currentImage);
    }

    await VoucherModel.findByIdAndDelete(id);

    req.flash("alertMessage", "Berhasil Hapus Data Voucher");
    req.flash("alertStatus", "success");

    res.redirect("/voucher");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/voucher");
  }
};

// ubah status
export const action_changeStatus = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const voucher = await VoucherModel.findById(id);

    let vocuherStatus = voucher?.status === "aktif" ? "nonaktif" : "aktif";

    await voucher?.updateOne({ status: vocuherStatus });

    req.flash("alertMessage", "Berhasil Ubah Status Voucher");
    req.flash("alertStatus", "success");

    res.redirect("/voucher");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/voucher");
  }
};
