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
exports.isLoginPlayer = exports.isSession = exports.isLogin = void 0;
const model_1 = __importDefault(require("../app/player/model"));
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const config_1 = __importDefault(require("@src/config"));
const isLogin = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    if (!req.session.user) {
        req.flash("alertMessage", "Session anda telah habis silakan login kembali");
        req.flash("alertStatus", "warning");
        res.redirect("/auth");
    }
    else {
        next();
    }
});
exports.isLogin = isLogin;
const isSession = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    if (req.session.user) {
        res.redirect("/");
    }
    else {
        next();
    }
});
exports.isSession = isSession;
const isLoginPlayer = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const header = req.headers.authorization;
        let token = '';
        if (header && header.startsWith("Bearer")) {
            token = header.split(" ")[1];
        }
        const result = jsonwebtoken_1.default.verify(token, config_1.default.jwtSecret);
        const player = yield model_1.default.findById(result.id);
        if (!player)
            throw new Error();
        req.player = player;
        req.token = token;
        next();
    }
    catch (error) {
        res.status(401).json({ message: "not authorized this route" });
    }
});
exports.isLoginPlayer = isLoginPlayer;
