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
exports.index = void 0;
const model_1 = __importDefault(require("../transaction/model"));
const model_2 = __importDefault(require("../voucher/model"));
const model_3 = __importDefault(require("../category/model"));
const model_4 = __importDefault(require("../player/model"));
const index = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { name, email, id, status } = req.session.user;
        const transaction = yield model_1.default.countDocuments();
        const voucher = yield model_2.default.countDocuments();
        const category = yield model_3.default.countDocuments();
        const player = yield model_4.default.countDocuments();
        res.render("index", {
            userName: req.session.user.name,
            Title: "Halaman Dashboard",
            countDoc: { transaction, voucher, category, player },
        });
    }
    catch (error) {
        console.log(error);
    }
});
exports.index = index;
