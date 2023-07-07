import mongoose, { Schema, model } from "mongoose";

// part schema
const HistoryVoucherTopUp = {
  gameName: {
    type: String,
    required: [true, "Nama Game harus diisi"],
  },
  category: {
    type: String,
    required: [true, "Nama Game harus diisi"],
  },
  thumbnail: {
    type: String,
  },
  coinName: {
    type: String,
    required: [true, "Coin Name harus diisi"],
  },
  coinQuantity: {
    type: String,
    required: [true, "Jumlah Coin harus diisi"],
  },
  Price: {
    type: Number,
  },
};

const HistoryPayment = {
  name: {
    type: String,
    required: [true, "Nama harus diisi"],
  },
  type: {
    type: String,
    required: [true, "Tipe pembayaran harus diisi"],
  },
  bankName: {
    type: String,
    required: [true, "Nama Bank harus diisi"],
  },
  noRekening: {
    type: Number,
    required: [true, "Nomor Rekening harus diisi"],
  },
};

const HistoryUser = {
  name: {
    type: String,
    required: [true, "Nama Player harus diisi"],
  },
  phoneNumber: {
    type: Number,
    required: [true, "Nomor Telepon harus diisi"],
    minlength: [9, "panjang phone number harus antara 9 - 13 karakter"],
    maxlength: [13, "panjang phone number harus antara 9 - 13 karakter"],
  },
};

//

// schema utama
const TransactionSchema = new Schema(
  {
    name: {
      type: String,
      required: [true, "Nama harus diisi"],
    },
    email: {
      type: String,
      required: [true, "Email harus diisi"],
    },
    accountUser: {
      type: String,
      required: [true, "Nama Akun harus diisi"],
    },
    tax: {
      type: Number,
      default: 0,
    },
    value: {
      type: Number,
      default: 0,
    },
    status: {
      type: String,
      enum: ["success", "failed", "pending"],
      default: "pending",
    },
    player: {
      type: mongoose.Types.ObjectId,
      ref: "Player",
    },
    category: {
      type: mongoose.Types.ObjectId,
      ref: "Category",
    },
    user: {
      type: mongoose.Types.ObjectId,
      ref: "User",
    },
    historyVoucherTopup: HistoryVoucherTopUp,
    historyPayment: HistoryPayment,
    historyUser: HistoryUser,
  },
  {
    timestamps: true,
  }
);

export default model("Transaction", TransactionSchema);
