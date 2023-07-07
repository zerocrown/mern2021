"use strict";
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
exports.SignIn = exports.SignUp = void 0;
const model_1 = __importDefault(require("../player/model"));
const bcrypt_1 = __importDefault(require("bcrypt"));
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const config_1 = __importDefault(require("@src/config"));
const SignUp = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    try {
        const { name, username, email, password, phoneNumber } = req.body;
        const payload = yield model_1.default.create({
            email,
            name,
            password,
            phoneNumber,
            username,
            status: "aktif",
            avatar: req.file ? `uploads/${req.file.filename}` : null,
        });
        (_a = payload._doc) === null || _a === void 0 ? true : delete _a.password;
        res.status(201).json({
            message: payload,
        });
    }
    catch (error) {
        if (error && error.name === "ValidationError") {
            return res.status(422).json({
                error: 1,
                message: error.message,
                fields: error.errors,
            });
        }
        if (error && error.keyPattern.email == 1) {
            return res.status(400).json({
                message: "email duplikat",
            });
        }
        next(error);
    }
});
exports.SignUp = SignUp;
const SignIn = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { email, password } = req.body;
        const user = yield model_1.default.findOne({ email });
        if (!user)
            throw new Error("User not found");
        const checkPassword = yield bcrypt_1.default.compare(password, user === null || user === void 0 ? void 0 : user.password);
        if (!checkPassword)
            throw new Error("Invalid password");
        const token = jsonwebtoken_1.default.sign({
            id: user._id,
            email: user.email,
            name: user.name,
            username: user.username,
            avatar: user.avatar,
        }, config_1.default.jwtSecret, {
            expiresIn: "10h",
        });
        res.status(201).json({ message: "selamat datang", token });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.SignIn = SignIn;
