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
exports.updateProfile = exports.profile = exports.dashboard = exports.historyTransactionDetail = exports.historyTransactions = exports.checkout = exports.getCategory = exports.detailPage = exports.landingPage = void 0;
const model_1 = __importDefault(require("./model"));
const model_2 = __importDefault(require("../voucher/model"));
const model_3 = __importDefault(require("../nominal/model"));
const model_4 = __importDefault(require("../category/model"));
const model_5 = __importDefault(require("../bank/model"));
const model_6 = __importDefault(require("../payment/model"));
const model_7 = __importDefault(require("../transaction/model"));
const fs_1 = __importDefault(require("fs"));
const path_1 = __importDefault(require("path"));
const landingPage = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const voucher = yield model_2.default.find()
            .populate("category")
            .select("_id name status category thumbnail");
        res.status(200).json({ data: voucher });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.landingPage = landingPage;
const detailPage = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const voucher = yield model_2.default.findById(id)
            .populate("category")
            .populate("nominal")
            .populate("user", "_id name phoneNumber");
        if (!voucher) {
            return res.status(404).json({ message: "voucher not found.!" });
        }
        res.status(200).json({ data: voucher });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.detailPage = detailPage;
const getCategory = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const category = yield model_4.default.find();
        res.status(200).json({
            data: category,
        });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.getCategory = getCategory;
const checkout = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    var _a, _b;
    try {
        const { accountUser, name, nominal, voucher, payment, bank } = req.body;
        const res_voucher = yield model_2.default.findById(voucher)
            .select("category name _id thumbnail user")
            .populate("category")
            .populate("user");
        if (!res_voucher)
            return res.status(404).json("Voucher tidak ditemukan");
        const res_nominal = yield model_3.default.findById(nominal);
        if (!res_nominal)
            return res.status(404).json("Nominal tidak ditemukan");
        const res_bank = yield model_5.default.findById(bank);
        if (!res_bank)
            return res.status(404).json("Bank tidak ditemukan");
        const res_payment = yield model_6.default.findById(payment);
        if (!res_payment)
            return res.status(404).json("Payment tidak ditemukan");
        let tax_amount = (10 / 100) * res_nominal.price;
        let value_amount = res_nominal.price - tax_amount;
        const payload = new model_7.default({
            accountUser: accountUser,
            name: name,
            user: res_voucher.user._id,
            player: req.player._id,
            email: req.player.email,
            tax: tax_amount,
            value: value_amount,
            category: res_voucher.category,
            historyUser: {
                name: (_a = res_voucher.user) === null || _a === void 0 ? void 0 : _a.name,
                phoneNumber: (_b = res_voucher.user) === null || _b === void 0 ? void 0 : _b.phoneNumber,
            },
            historyPayment: {
                type: res_payment.type,
                name: res_bank.name,
                bankName: res_bank.nameBank,
                noRekening: res_bank.noRekening,
            },
            historyVoucherTopup: {
                gameName: res_voucher.name,
                category: res_voucher.category.name,
                thumbnail: res_voucher.thumbnail,
                coinName: res_nominal.coinName,
                coinQuantity: res_nominal.coinQuantity,
                Price: res_nominal.price,
            },
        });
        yield payload.save();
        res.status(200).json({ data: payload });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.checkout = checkout;
const historyTransactions = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { status = "" } = req.query;
        let criteria = {};
        if (status.length) {
            criteria = Object.assign(Object.assign({}, criteria), { status: {
                    $regex: `${status}`,
                    $options: "i",
                } });
        }
        if (req.player._id) {
            criteria = Object.assign(Object.assign({}, criteria), { player: req.player._id });
        }
        const history = yield model_7.default.find(criteria);
        const total = yield model_7.default.aggregate([
            {
                $match: criteria,
            },
            {
                $group: {
                    _id: null,
                    value: { $sum: "$value" },
                },
            },
        ]);
        res.status(200).json({
            data: history,
            totalValue: total.length ? total[0] : 0,
            dataLength: history.length,
        });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.historyTransactions = historyTransactions;
const historyTransactionDetail = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { id } = req.params;
        const history = yield model_7.default.findById(id);
        if (!history) {
            return res.status(404).json({ message: "history tidak ditemukan." });
        }
        res.status(200).json({ data: history });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.historyTransactionDetail = historyTransactionDetail;
const dashboard = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const count = yield model_7.default.aggregate([
            {
                $match: { player: req.player._id },
            },
            {
                $group: {
                    _id: "$category",
                    value: { $sum: "$value" },
                },
            },
        ]);
        const categories = yield model_4.default.find();
        categories.forEach((category) => {
            count.forEach((cou) => {
                if (category.id == cou._id.toString()) {
                    cou.name = category.name;
                }
            });
        });
        const history = yield model_7.default.find({ player: req.player._id })
            .populate("category")
            .sort({ updatedAt: -1 });
        res.status(200).json({ data: history, count });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.dashboard = dashboard;
const profile = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const player = {
            id: req.player.id,
            name: req.player.name,
            username: req.player.username,
            email: req.player.email,
            phoneNumber: req.player.phoneNumber,
            avatar: req.player.avatar,
        };
        res.status(200).json({ data: player });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.profile = profile;
const updateProfile = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { name, phoneNumber } = req.body;
        let temp = {};
        if (name) {
            temp = Object.assign(Object.assign({}, temp), { name });
        }
        if (phoneNumber) {
            temp = Object.assign(Object.assign({}, temp), { phoneNumber });
        }
        if (req.file) {
            temp = Object.assign(Object.assign({}, temp), { avatar: `uploads/${req.file.filename}` });
            const player = yield model_1.default.findById(req.player._id);
            let currentImage = `${path_1.default.join(__dirname, "../../public/")}${player === null || player === void 0 ? void 0 : player.avatar}`;
            fs_1.default.existsSync(currentImage) ? fs_1.default.unlinkSync(currentImage) : "";
        }
        const update = yield model_1.default.findByIdAndUpdate(req.player._id, temp, {
            new: true,
            runValidators: true,
        });
        const payload = {
            id: update === null || update === void 0 ? void 0 : update.id,
            name: update === null || update === void 0 ? void 0 : update.name,
            phoneNumber: update === null || update === void 0 ? void 0 : update.phoneNumber,
            avatar: update === null || update === void 0 ? void 0 : update.avatar,
        };
        res.status(201).json({ data: payload, message: 'Berhasil Update Profile' });
    }
    catch (error) {
        res.status(500).json({ message: error.message || "Internal server error" });
    }
});
exports.updateProfile = updateProfile;
