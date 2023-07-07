import express from "express";

import TransactionModel from '../transaction/model'
import VoucherModel from '../voucher/model'
import CategoryModel from '../category/model'
import PlayerModel from '../player/model'


export const index = async (req: express.Request, res: express.Response) => {
  try {
    const { name, email, id, status } = req.session.user;

    const transaction = await TransactionModel.countDocuments()
    const voucher = await VoucherModel.countDocuments()
    const category = await CategoryModel.countDocuments()
    const player = await PlayerModel.countDocuments()

    res.render("index", {
      userName: req.session.user.name,
      Title: "Halaman Dashboard",
      countDoc: {transaction, voucher, category, player},
    });
  } catch (error) {
    console.log(error);
  }
};
