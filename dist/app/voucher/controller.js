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
const model_2 = __importDefault(require("../category/model"));
const model_3 = __importDefault(require("../nominal/model"));
const index_1 = __importDefault(require("../../config/index"));
const fs_1 = __importDefault(require("fs"));
const path_1 = __importDefault(require("path"));
const index_view = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const alertMessage = req.flash("alertMessage");
        const alertStatus = req.flash("alertStatus");
        const Alert = {
            message: alertMessage,
            status: alertStatus,
        };
        const data = yield model_1.default.find()
            .populate("category")
            .populate("nominal");
        res.render("admin/voucher/view_voucher", {
            data,
            Alert,
            Title: "Halaman Voucher",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/voucher");
    }
});
exports.index_view = index_view;
const view_create = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const category = yield model_2.default.find();
        const nominal = yield model_3.default.find();
        res.render("admin/voucher/create", {
            data: { category, nominal },
            Title: "Halaman Tambah Voucher",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/voucher");
    }
});
exports.view_create = view_create;
const action_create = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { category, nominal, name, status } = req.body;
        const voucher = yield model_1.default.create({
            category,
            name,
            nominal,
            status,
            thumbnail: req.file ? `uploads/${req.file.filename}` : null,
        });
        yield voucher.save();
        const alertMessage = req.flash("alertMessage", "Berhasil Tambah Voucher");
        const alertStatus = req.flash("alertStatus", "success");
        res.redirect("/voucher");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/voucher");
    }
});
exports.action_create = action_create;
const view_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const category = yield model_2.default.find();
        const nominal = yield model_3.default.find();
        const voucher = yield model_1.default.findById(id)
            .populate("category")
            .populate("nominal");
        res.render("admin/voucher/edit", {
            data: {
                voucher,
                category,
                nominal,
                urlImage: index_1.default.urlImage,
            },
            Title: "Halaman Edit Voucher",
            userName: req.session.user.name,
        });
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/voucher");
    }
});
exports.view_edit = view_edit;
const action_edit = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    var _a;
    try {
        const { id } = req.params;
        const { category, nominal, name, status } = req.body;
        const voucher = yield model_1.default.findById(id);
        let currentImage = `${path_1.default.join(__dirname, "../../public/")}${voucher === null || voucher === void 0 ? void 0 : voucher.thumbnail}`;
        if (req.file && fs_1.default.existsSync(currentImage)) {
            fs_1.default.unlinkSync(currentImage);
        }
        yield model_1.default.findByIdAndUpdate(id, {
            category,
            nominal,
            name,
            status,
            thumbnail: (req === null || req === void 0 ? void 0 : req.file) ? `uploads/${(_a = req === null || req === void 0 ? void 0 : req.file) === null || _a === void 0 ? void 0 : _a.filename}` : voucher === null || voucher === void 0 ? void 0 : voucher.thumbnail,
        }, {
            new: true,
            runValidators: true,
        });
        req.flash("alertMessage", "Berhasil Edit Voucher");
        req.flash("alertStatus", "success");
        res.redirect("/voucher");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/voucher");
    }
});
exports.action_edit = action_edit;
const action_delete = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const voucher = yield model_1.default.findById(id);
        let currentImage = `${path_1.default.join(__dirname, "../../public/")}${voucher === null || voucher === void 0 ? void 0 : voucher.thumbnail}`;
        if (fs_1.default.existsSync(currentImage)) {
            fs_1.default.unlinkSync(currentImage);
        }
        yield model_1.default.findByIdAndDelete(id);
        req.flash("alertMessage", "Berhasil Hapus Data Voucher");
        req.flash("alertStatus", "success");
        res.redirect("/voucher");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/voucher");
    }
});
exports.action_delete = action_delete;
const action_changeStatus = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const voucher = yield model_1.default.findById(id);
        let vocuherStatus = (voucher === null || voucher === void 0 ? void 0 : voucher.status) === "aktif" ? "nonaktif" : "aktif";
        yield (voucher === null || voucher === void 0 ? void 0 : voucher.updateOne({ status: vocuherStatus }));
        req.flash("alertMessage", "Berhasil Ubah Status Voucher");
        req.flash("alertStatus", "success");
        res.redirect("/voucher");
    }
    catch (error) {
        req.flash("alertMessage", `${error.message}`);
        req.flash("alertStatus", "danger");
        res.redirect("/voucher");
    }
});
exports.action_changeStatus = action_changeStatus;
