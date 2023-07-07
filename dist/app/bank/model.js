"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BankOptions = void 0;
const mongoose_1 = require("mongoose");
exports.BankOptions = ["MANDIRI", "BCA", "BRI", "DANAMON", "PAYPAL", "BNI"];
const BankSchema = new mongoose_1.Schema({
    name: {
        type: String,
        required: [true, "Nama pemilik harus diisi"],
    },
    nameBank: {
        type: String,
        enum: exports.BankOptions,
        required: [true, "Nama Bank harus diisi"],
    },
    noRekening: {
        type: String,
        required: [true, "Nomor Rekening Bank harus diisi"],
    },
}, {
    timestamps: true,
});
exports.default = (0, mongoose_1.model)("Bank", BankSchema);
