import express from "express";

import NominalModel from "./model";

// index
export const index_view = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const alertMessage = req.flash("alertMessage");
    const alertStatus = req.flash("alertStatus");

    const Alert = { message: alertMessage, status: alertStatus };

    const data = await NominalModel.find();

    res.render("admin/nominal/view_nominal", {
      data,
      Alert,
      Title: "Halaman Nominal",
      userName: req.session.user.name,
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/category");
  }
};

// create
export const view_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    res.render("admin/nominal/create", {
      Title: "Halaman Tambah Nominal",
      userName: req.session.user.name,
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/nominal");
  }
};

export const action_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { coinName, coinQuantity, coinPrice } = req.body;
    
    const Nominal = await NominalModel.create({
      coinName,
      coinQuantity,
      price: coinPrice,
    });
    await Nominal.save();
    
    req.flash("alertMessage", "Berhasil Tambah Nominal");
    req.flash("alertStatus", "success");

    res.redirect("/nominal");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/nominal");
  }
};

// edit

export const view_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const nominal = await NominalModel.findById(id);

    res.render("admin/nominal/edit", {
      data: nominal,
      Title: "Halaman Edit Nominal",
      userName: req.session.user.name,
    });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/nominal");
  }
};

export const action_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;
    const { coinName, coinPrice, coinQuantity } = req.body;

    await NominalModel.findByIdAndUpdate(id, {
      coinName,
      coinQuantity,
      price: coinPrice
    }, {
      new: true,
      runValidators: true,
    })

    req.flash("alertMessage", "Berhasil Ubah Data Nominal");
    req.flash("alertStatus", "success");

    res.redirect("/nominal");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/nominal");
  }
};


// delete

export const action_delete = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const Nominal = await NominalModel.findByIdAndDelete(id)

    const alertMessage = req.flash("alertMessage", "Berhasil Hapus Data Nominal");
    const alertStatus = req.flash("alertStatus", "success");

    const Alert = { message: alertMessage, status: alertStatus };

    res.redirect("/nominal");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/nominal");
  }
};
