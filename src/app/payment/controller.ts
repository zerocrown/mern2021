import express from "express";

import PaymentModel from "./model";
import BankModel from "../bank/model";

// index
export const index_view = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const alertMessage = req.flash("alertMessage");
    const alertStatus = req.flash("alertStatus");

    const Alert = { message: alertMessage, status: alertStatus };

    const data = await PaymentModel.find().populate("bank");

    res.render("admin/payment/view_payment", { data, Alert });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/payment");
  }
};

// create
export const view_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const bank = await BankModel.find();
    // const payment = await PaymentModel.find();

    res.render("admin/payment/create", { data: { bank } });
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/payment");
  }
};

export const action_create = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { type, status, bank } = req.body;

    const payment = await PaymentModel.create({
      type,
      status,
      bank,
    });
    await payment.save();

    req.flash("alertMessage", "Berhasil Tambah Payment");
    req.flash("alertStatus", "success");

    res.redirect("/payment");
  } catch (error) {
    req.flash("alertMessage", `${error.message}`);
    req.flash("alertStatus", "danger");
    res.redirect("/payment");
  }
};

// edit

// export const view_edit = async (
//   req: express.Request,
//   res: express.Response
// ) => {
//   try {
//     const { id } = req.params;

//     const Payment = await PaymentModel.findById(id);

//     res.render("admin/payment/edit", {
//       data: {
//         Payment,
//         option: PaymentOptions,
//       },
//     });
//   } catch (error) {
//     req.flash("alertMessage", `${error.message}`);
//     req.flash("alertStatus", "danger");
//     res.redirect("/payment");
//   }
// };

// export const action_edit = async (
//   req: express.Request,
//   res: express.Response
// ) => {
//   try {
//     const { id } = req.params;
//     const { name, namePayment, noRekening } = req.body;

//     await PaymentModel.findByIdAndUpdate(
//       id,
//       { name, namePayment, noRekening },
//       {
//         new: true,
//         runValidators: true,
//       }
//     );

//     req.flash("alertMessage", "Berhasil Edit data Payment");
//     req.flash("alertStatus", "success");

//     res.redirect("/payment");
//   } catch (error) {
//     req.flash("alertMessage", `${error.message}`);
//     req.flash("alertStatus", "danger");
//     res.redirect("/payment");
//   }
// };

// delete

// export const action_delete = async (
//   req: express.Request,
//   res: express.Response
// ) => {
//   try {
//     const { id } = req.params;

//     await PaymentModel.findByIdAndDelete(id);

//     req.flash("alertMessage", "Berhasil Hapus Payment");
//     req.flash("alertStatus", "success");

//     res.redirect("/payment");
//   } catch (error) {
//     req.flash("alertMessage", `${error.message}`);
//     req.flash("alertStatus", "danger");
//     res.redirect("/payment");
//   }
// };
