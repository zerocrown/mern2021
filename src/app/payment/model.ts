import mongoose, { Schema, model } from "mongoose";

const PaymentSchema = new Schema(
  {
    type: {
      type: String,
      required: [true, "Tipe Pembayaran harus diisi"],
    },
    status: {
      type: String,
      enum: ["aktif", "nonaktif"],
      default: "nonaktif",
    },
    bank: [
      {
        type: mongoose.Types.ObjectId,
        ref: "Bank",
      },
    ],
  },
  {
    timestamps: true,
  }
);

export default model("Payment", PaymentSchema);
