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
exports.action_logout = exports.action_signin = exports.index_view_signin = void 0;
const model_1 = __importDefault(require("./model"));
const bcrypt_1 = __importDefault(require("bcrypt"));
const index_view_signin = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const alertMessage = req.flash("alertMessage");
        const alertStatus = req.flash("alertStatus");
        const Alert = {
            message: alertMessage,
            status: alertStatus,
        };
        res.render("admin/users/view_signin", { Alert, Title: "Halaman SignIn" });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/auth");
    }
});
exports.index_view_signin = index_view_signin;
const action_signin = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { email, password } = req.body;
        if (!email || !password)
            throw new Error("Please Provide Input");
        const check = yield model_1.default.findOne({ email });
        if (!check)
            throw new Error("account not found");
        if ((check === null || check === void 0 ? void 0 : check.status) === "aktif") {
            const checkPassword = yield bcrypt_1.default.compare(password, check.password);
            if (checkPassword) {
                req.session.user = {
                    id: check._id,
                    email: check.email,
                    status: check.status,
                    name: check.name
                };
                res.redirect("/");
            }
            else {
                req.flash("alertMessage", "Password Invalid");
                req.flash("alertStatus", "danger");
                res.redirect("/auth");
            }
        }
        else {
            req.flash("alertMessage", "Mohon maaf status akun anda belum aktif");
            req.flash("alertMessage alertStatus", "inavalid", "danger");
            res.redirect("/auth");
        }
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/auth");
    }
});
exports.action_signin = action_signin;
const action_logout = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    req.session.user = null;
    console.log('req.session.user');
    console.log(req.session.user);
    res.redirect('/auth');
});
exports.action_logout = action_logout;
