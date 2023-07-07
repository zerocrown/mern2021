"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = require("mongoose");
const UserSchema = new mongoose_1.Schema({
    name: {
        type: String,
        required: [true, "Tipe nama harus diisi"],
    },
    email: {
        type: String,
        required: [true, "Email harus diisi"],
    },
    password: {
        type: String,
        required: [true, "Password harus diisi"],
    },
    status: {
        type: String,
        enum: ["aktif", "nonaktif"],
        default: 'nonaktif',
    },
    role: {
        type: String,
        enum: ["admin", "user"],
        default: 'admin',
    },
    phoneNumber: {
        type: Number,
        required: [true, "Nomor telepon harus diisi"]
    }
}, {
    timestamps: true,
});
exports.default = (0, mongoose_1.model)("User", UserSchema);
