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
exports.action_delete = exports.action_edit = exports.view_edit = exports.action_create = exports.view_create = exports.index_view = void 0;
const model_1 = __importDefault(require("./model"));
const index_view = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const alertMessage = req.flash("alertMessage");
        const alertStatus = req.flash("alertStatus");
        const Alert = { message: alertMessage, status: alertStatus };
        const data = yield model_1.default.find();
        res.render("admin/nominal/view_nominal", {
            data,
            Alert,
            Title: "Halaman Nominal",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/category");
    }
});
exports.index_view = index_view;
const view_create = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        res.render("admin/nominal/create", {
            Title: "Halaman Tambah Nominal",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/nominal");
    }
});
exports.view_create = view_create;
const action_create = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { coinName, coinQuantity, coinPrice } = req.body;
        const Nominal = yield model_1.default.create({
            coinName,
            coinQuantity,
            price: coinPrice,
        });
        yield Nominal.save();
        req.flash("alertMessage", "Berhasil Tambah Nominal");
        req.flash("alertStatus", "success");
        res.redirect("/nominal");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/nominal");
    }
});
exports.action_create = action_create;
const view_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const nominal = yield model_1.default.findById(id);
        res.render("admin/nominal/edit", {
            data: nominal,
            Title: "Halaman Edit Nominal",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/nominal");
    }
});
exports.view_edit = view_edit;
const action_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const { coinName, coinPrice, coinQuantity } = req.body;
        yield model_1.default.findByIdAndUpdate(id, {
            coinName,
            coinQuantity,
            price: coinPrice
        }, {
            new: true,
            runValidators: true,
        });
        req.flash("alertMessage", "Berhasil Ubah Data Nominal");
        req.flash("alertStatus", "success");
        res.redirect("/nominal");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/nominal");
    }
});
exports.action_edit = action_edit;
const action_delete = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const Nominal = yield model_1.default.findByIdAndDelete(id);
        const alertMessage = req.flash("alertMessage", "Berhasil Hapus Data Nominal");
        const alertStatus = req.flash("alertStatus", "success");
        const Alert = { message: alertMessage, status: alertStatus };
        res.redirect("/nominal");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/nominal");
    }
});
exports.action_delete = action_delete;
