"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = require("mongoose");
const coinSchema = ['diamond', 'gold', 'silver', 'jewel'];
const NominalSchema = new mongoose_1.Schema({
    coinQuantity: {
        type: Number,
        default: 0,
    },
    coinName: {
        type: String,
        enum: coinSchema,
        required: [true, "Nama Coin harus diisi"],
    },
    price: {
        type: Number,
        default: 0,
    },
}, {
    timestamps: true,
});
exports.default = (0, mongoose_1.model)('Nominal', NominalSchema);
