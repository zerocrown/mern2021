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
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importStar(require("mongoose"));
const bcrypt_1 = __importDefault(require("bcrypt"));
const PlayerSchema = new mongoose_1.Schema({
    name: {
        type: String,
        required: [true, "Nama harus diisi"],
        maxlength: [50, "Maximal 50 karakter"],
        minlength: [3, "Minimal 3 karakter"],
    },
    username: {
        type: String,
        required: [true, "Username harus diisi"],
        maxlength: [50, "Maximal 50 karakter"],
        minlength: [3, "Minimal 3 karakter"],
    },
    email: {
        type: String,
        required: [true, "Email harus diisi"],
        unique: [true, "Email tsb sudah terdaftar"],
    },
    password: {
        type: String,
        required: [true, "Password harus diisi"],
        maxlength: [255, "Maximal 50 karakter"],
        minlength: [8, "Minimal 8 karakter"],
    },
    status: {
        type: String,
        enum: ["aktif", "nonaktif"],
        default: "nonaktif",
    },
    phoneNumber: {
        type: Number,
        required: [true, "Nomor telepon harus diisi"],
        maxlength: [13, "Panjang nomor telepon harus antara 9 - 13 karakter"],
        minlength: [9, "Panjang nomor telepon harus antara 9 - 13 karakter"],
    },
    avatar: {
        type: String,
    },
    fileName: {
        type: String,
    },
    favorite: {
        type: mongoose_1.default.Types.ObjectId,
        ref: "Category",
    },
}, {
    timestamps: true,
});
PlayerSchema.pre("save", function (next) {
    return __awaiter(this, void 0, void 0, function* () {
        const user = this;
        if (user.isModified("password")) {
            user.password = yield bcrypt_1.default.hash(user.password, 15);
        }
        next();
    });
});
PlayerSchema.methods.checkPassword = function (password) {
    return __awaiter(this, void 0, void 0, function* () {
        const isMatch = yield bcrypt_1.default.compare(password, this.password);
        return isMatch;
    });
};
exports.default = (0, mongoose_1.model)("Player", PlayerSchema);
