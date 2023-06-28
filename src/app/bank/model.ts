import mongoose, { Schema, model } from "mongoose";

export const BankOptions = ["MANDIRI", "BCA", "BRI", "DANAMON", "PAYPAL", "BNI"];

const BankSchema = new Schema({
  name: {
    type: String,
    required: [true, "Nama pemilik harus diisi"],
  },
  nameBank: {
    type: String,
    enum: BankOptions,
    required: [true, "Nama Bank harus diisi"],
  },
  noRekening: {
    type: String,
    required: [true, "Nomor Rekening Bank harus diisi"],
  },
});

export default model("Bank", BankSchema);
