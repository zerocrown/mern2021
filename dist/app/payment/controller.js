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
exports.action_changeStatus = exports.action_delete = exports.action_edit = exports.view_edit = exports.action_create = exports.view_create = exports.index_view = void 0;
const model_1 = __importDefault(require("./model"));
const model_2 = __importDefault(require("../bank/model"));
const index_view = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const alertMessage = req.flash("alertMessage");
        const alertStatus = req.flash("alertStatus");
        const Alert = { message: alertMessage, status: alertStatus };
        const data = yield model_1.default.find().populate("bank");
        res.render("admin/payment/view_payment", {
            data,
            Alert,
            Title: "Halaman Pembayaran",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/payment");
    }
});
exports.index_view = index_view;
const view_create = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const bank = yield model_2.default.find();
        res.render("admin/payment/create", {
            data: { bank },
            Title: "Halaman Tambah Pembayaran",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/payment");
    }
});
exports.view_create = view_create;
const action_create = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { type, status, bank } = req.body;
        const payment = yield model_1.default.create({
            type,
            status,
            bank,
        });
        yield payment.save();
        req.flash("alertMessage", "Berhasil Tambah Payment");
        req.flash("alertStatus", "success");
        res.redirect("/payment");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/payment");
    }
});
exports.action_create = action_create;
const view_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const bank = yield model_2.default.find();
        const payment = yield model_1.default.findById(id).populate("bank");
        res.render("admin/payment/edit", {
            data: { bank, payment },
            Title: "Halaman Edit Pembayaran",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/payment");
    }
});
exports.view_edit = view_edit;
const action_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const { bank, status, type } = req.body;
        yield model_1.default.findByIdAndUpdate(id, { bank, status, type }, {
            new: true,
            runValidators: true,
        });
        req.flash("alertMessage", "Berhasil Edit data Payment");
        req.flash("alertStatus", "success");
        res.redirect("/payment");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/payment");
    }
});
exports.action_edit = action_edit;
const action_delete = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        yield model_1.default.findByIdAndDelete(id);
        req.flash("alertMessage", "Berhasil Hapus Payment");
        req.flash("alertStatus", "success");
        res.redirect("/payment");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/payment");
    }
});
exports.action_delete = action_delete;
const action_changeStatus = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const payment = yield model_1.default.findById(id);
        let PaymentStatus = (payment === null || payment === void 0 ? void 0 : payment.status) === "aktif" ? "nonaktif" : "aktif";
        yield (payment === null || payment === void 0 ? void 0 : payment.updateOne({ status: PaymentStatus }));
        req.flash("alertMessage", "Berhasil Ubah Status payment");
        req.flash("alertStatus", "success");
        res.redirect("/payment");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/payment");
    }
});
exports.action_changeStatus = action_changeStatus;
