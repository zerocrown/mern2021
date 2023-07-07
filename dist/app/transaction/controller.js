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
exports.action_changeStatus = exports.index_view = void 0;
const model_1 = __importDefault(require("./model"));
const config_1 = __importDefault(require("@src/config"));
const index_view = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const alertMessage = req.flash("alertMessage");
        const alertStatus = req.flash("alertStatus");
        const Alert = { message: alertMessage, status: alertStatus };
        const data = yield model_1.default.find()
            .populate("historyPayment")
            .populate("user")
            .populate("category")
            .populate("player");
        res.render("admin/transaction/view_transaction", {
            data,
            Alert,
            Title: "Halaman Transaction",
            userName: req.session.user.name,
            urlImage: config_1.default.urlImage,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/transaction");
    }
});
exports.index_view = index_view;
const action_changeStatus = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const { status } = req.query;
        yield model_1.default.findByIdAndUpdate(id, {
            status,
        });
        req.flash("alertMessage", "Berhasil Ubah Status Transaction");
        req.flash("alertStatus", "success");
        res.redirect("/transaction");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/transaction");
    }
});
exports.action_changeStatus = action_changeStatus;
