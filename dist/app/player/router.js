"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const router = express_1.default.Router();
const controller_1 = require("./controller");
const auth_1 = require("../../middleware/auth");
const multer_1 = require("@src/utils/multer");
router.get("/landingpage", controller_1.landingPage);
router.get("/:id/detail", controller_1.detailPage);
router.get("/dashboard", auth_1.isLoginPlayer, controller_1.dashboard);
router.get("/category", controller_1.getCategory);
router.get("/history/transaction", auth_1.isLoginPlayer, controller_1.historyTransactions);
router.get("/history/transaction/:id", auth_1.isLoginPlayer, controller_1.historyTransactionDetail);
router.get("/profile", auth_1.isLoginPlayer, controller_1.profile);
router.put("/profile", auth_1.isLoginPlayer, multer_1.uploadMiddleware.single('avatar'), controller_1.updateProfile);
router.post("/checkout", auth_1.isLoginPlayer, controller_1.checkout);
exports.default = router;