import express from "express";
import PlayerModel from "./model";
import VoucherModel from "../voucher/model";
import NominalModel from "../nominal/model";
import CategoryModel from "../category/model";
import BankModel from "../bank/model";
import PaymentModel from "../payment/model";
import TransactionModel from "../transaction/model";
import mongoose from "mongoose";
import config from "@src/config";
import fs from "fs";
import path from "path";


// view data API
export const landingPage = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const voucher = await VoucherModel.find()
      .populate("category")
      .select("_id name status category thumbnail");

    res.status(200).json({ data: voucher });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};

export const detailPage = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const voucher = await VoucherModel.findById(id)
      .populate("category")
      .populate("nominal")
      .populate("user", "_id name phoneNumber");

    if (!voucher) {
      return res.status(404).json({ message: "voucher not found.!" });
    }

    res.status(200).json({ data: voucher });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};

export const getCategory = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const category = await CategoryModel.find();

    res.status(200).json({
      data: category,
    });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};

// transaction API
export const checkout = async (req: express.Request, res: express.Response) => {
  try {
    const { accountUser, name, nominal, voucher, payment, bank } = req.body;

    const res_voucher: any = await VoucherModel.findById(voucher)
      .select("category name _id thumbnail user")
      .populate("category")
      .populate("user");
    if (!res_voucher) return res.status(404).json("Voucher tidak ditemukan");

    const res_nominal: any = await NominalModel.findById(nominal);
    if (!res_nominal) return res.status(404).json("Nominal tidak ditemukan");

    const res_bank: any = await BankModel.findById(bank);
    if (!res_bank) return res.status(404).json("Bank tidak ditemukan");

    const res_payment: any = await PaymentModel.findById(payment);
    if (!res_payment) return res.status(404).json("Payment tidak ditemukan");

    // set values for payloads
    let tax_amount = (10 / 100) * res_nominal.price;
    let value_amount = res_nominal.price - tax_amount;

    const payload = new TransactionModel({
      accountUser: accountUser,
      name: name,
      user: res_voucher.user._id,
      player: req.player._id,
      email: req.player.email,
      tax: tax_amount,
      value: value_amount,
      category: res_voucher.category,

      historyUser: {
        name: res_voucher.user?.name,
        phoneNumber: res_voucher.user?.phoneNumber,
      },
      historyPayment: {
        type: res_payment.type,
        name: res_bank.name,
        bankName: res_bank.nameBank,
        noRekening: res_bank.noRekening,
      },

      historyVoucherTopup: {
        gameName: res_voucher.name,
        category: res_voucher.category.name,
        thumbnail: res_voucher.thumbnail,
        coinName: res_nominal.coinName,
        coinQuantity: res_nominal.coinQuantity,
        Price: res_nominal.price,
      },
    });

    await payload.save();

    res.status(200).json({ data: payload });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};

export const historyTransactions = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { status = "" } = req.query;

    let criteria: object = {};

    if (status.length) {
      criteria = {
        ...criteria,
        status: {
          $regex: `${status}`,
          $options: "i",
        },
      };
    }

    if (req.player._id) {
      criteria = { ...criteria, player: req.player._id };
    }

    const history = await TransactionModel.find(criteria);

    // kalkulasi total nilai dari value yang cocok dari criteria
    const total = await TransactionModel.aggregate([
      {
        $match: criteria,
      },
      {
        $group: {
          _id: null,
          value: { $sum: "$value" },
        },
      },
    ]);

    // console.log("total >>>");
    // console.log(total);

    res.status(200).json({
      data: history,
      totalValue: total.length ? total[0] : 0,
      dataLength: history.length,
    });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};

export const historyTransactionDetail = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { id } = req.params;

    const history = await TransactionModel.findById(id);

    if (!history) {
      return res.status(404).json({ message: "history tidak ditemukan." });
    }

    res.status(200).json({ data: history });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};


// dashboard
export const dashboard = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const count = await TransactionModel.aggregate([
      {
        $match: { player: req.player._id },
      },
      {
        $group: {
          _id: "$category",
          value: { $sum: "$value" },
        },
      },
    ]);

    const categories = await CategoryModel.find();

    categories.forEach((category) => {
      count.forEach((cou) => {
        if (category.id == cou._id.toString()) {
          cou.name = category.name;
        }
      });
    });

    const history = await TransactionModel.find({ player: req.player._id })
      .populate("category")
      .sort({ updatedAt: -1 });

    res.status(200).json({ data: history, count });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};


// profile
export const profile = async (req: express.Request, res: express.Response) => {
  try {
    const player: object = {
      id: req.player.id,
      name: req.player.name,
      username: req.player.username,
      email: req.player.email,
      phoneNumber: req.player.phoneNumber,
      avatar: req.player.avatar,
    };

    res.status(200).json({ data: player });
  } catch (error) {
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};

export const updateProfile = async (
  req: express.Request,
  res: express.Response
) => {
  try {
    const { name, phoneNumber } = req.body;

    let temp: object = {};
    // check what is the send for update
    if (name) {
      temp = { ...temp, name };
    }
    if (phoneNumber) {
      temp = { ...temp, phoneNumber };
    }
    if (req.file) {
      temp = { ...temp, avatar: `uploads/${req.file.filename}` };

      // check and delete last file
      const player = await PlayerModel.findById(req.player._id)
      let currentImage = `${path.join(__dirname, "../../public/")}${
        player?.avatar
      }`;
      fs.existsSync(currentImage) ? fs.unlinkSync(currentImage) : "";
    }

    const update = await PlayerModel.findByIdAndUpdate(req.player._id, temp, {
      new: true,
      runValidators: true,
    });

    const payload = {
      id: update?.id,
      name: update?.name,
      phoneNumber: update?.phoneNumber,
      avatar: update?.avatar,
    };

    res.status(201).json({ data: payload, message: 'Berhasil Update Profile' });
  } catch (error) {
    // if(error.name == 'ValidationError') {
    //   return res.status(422).json({message: error.message});
    // }
    res.status(500).json({ message: error.message || "Internal server error" });
  }
};
