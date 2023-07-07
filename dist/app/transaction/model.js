"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importStar(require("mongoose"));
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
const TransactionSchema = new mongoose_1.Schema({
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
        type: mongoose_1.default.Types.ObjectId,
        ref: "Player",
    },
    category: {
        type: mongoose_1.default.Types.ObjectId,
        ref: "Category",
    },
    user: {
        type: mongoose_1.default.Types.ObjectId,
        ref: "User",
    },
    historyVoucherTopup: HistoryVoucherTopUp,
    historyPayment: HistoryPayment,
    historyUser: HistoryUser,
}, {
    timestamps: true,
});
exports.default = (0, mongoose_1.model)("Transaction", TransactionSchema);
