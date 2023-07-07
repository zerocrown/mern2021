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
        const data = yield model_1.default.find();
        const alertMessage = req.flash("alertMessage");
        const alertStatus = req.flash("alertStatus");
        const Alert = { message: alertMessage, status: alertStatus };
        res.render("admin/category/view_category", {
            data,
            Alert,
            userName: req.session.user.name,
            Title: "Halaman Category",
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
        res.render("admin/category/create", {
            Title: "Halaman Tambah Category",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/category");
    }
});
exports.view_create = view_create;
const action_create = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { name } = req.body;
        const alertMessage = req.flash("alertMessage", "Berhasil Tambah Kategori");
        const alertStatus = req.flash("alertStatus", "success");
        const category = yield model_1.default.create({ name });
        yield category.save();
        const Alert = { message: alertMessage, status: alertStatus };
        console.log({ Alert });
        res.redirect("/category");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/category");
    }
});
exports.action_create = action_create;
const view_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const category = yield model_1.default.findById(id);
        res.render("admin/category/edit", {
            data: category,
            Title: "Halaman Edit Category",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/category");
    }
});
exports.view_edit = view_edit;
const action_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const { name } = req.body;
        yield model_1.default.findOneAndUpdate({ _id: id }, { name }, {
            new: true,
            runValidators: true,
        });
        const alertMessage = req.flash("alertMessage", "Berhasil Ubah Kategori");
        const alertStatus = req.flash("alertStatus", "success");
        const Alert = { message: alertMessage, status: alertStatus };
        res.redirect("/category");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/category");
    }
});
exports.action_edit = action_edit;
const action_delete = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        yield model_1.default.findByIdAndDelete(id);
        const alertMessage = req.flash("alertMessage", "Berhasil Delete Kategori");
        const alertStatus = req.flash("alertStatus", "success");
        const Alert = { message: alertMessage, status: alertStatus };
        res.redirect("/category");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/category");
    }
});
exports.action_delete = action_delete;
