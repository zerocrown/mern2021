import express from "express";

import CategoryModel from "./model";

// index
export const index_view = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const data = await CategoryModel.find();

    const alertMessage = req.flash("alertMessage");
    const alertStatus = req.flash("alertStatus");

    const Alert = { message: alertMessage, status: alertStatus };
    console.log({Alert})

    res.render("admin/category/view_category", { data, Alert });
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
    res.render("admin/category/create");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/category");
  }
};

export const action_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { name } = req.body;

    const alertMessage = req.flash('alertMessage', 'Berhasil Tambah Kategori');
    const alertStatus = req.flash('alertStatus', 'success');


    const category = await CategoryModel.create({ name });
    await category.save();

    const Alert = {message: alertMessage, status: alertStatus}
    console.log({Alert})

    res.redirect("/category",);
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/category");
  }
};

// edit / update
export const view_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const category = await CategoryModel.findById(id);

    res.render("admin/category/edit", { data: category });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/category");
  }
};

export const action_edit = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;
    const { name } = req.body;

    await CategoryModel.findOneAndUpdate(
      { _id: id },
      { name },
      {
        new: true,
        runValidators: true,
      }
    );

    const alertMessage = req.flash('alertMessage', 'Berhasil Ubah Kategori');
    const alertStatus = req.flash('alertStatus', 'success');

    const Alert = {message: alertMessage, status: alertStatus}

    res.redirect("/category");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/category");
  }
};

// delete

export const action_delete = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    await CategoryModel.findByIdAndDelete(id);

    const alertMessage = req.flash("alertMessage", 'Berhasil Delete Kategori');
    const alertStatus = req.flash("alertStatus", 'success');

    const Alert = { message: alertMessage, status: alertStatus };

    res.redirect("/category");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/category");
  }
};
