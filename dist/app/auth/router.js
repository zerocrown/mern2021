"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const router = express_1.default.Router();
const controller_1 = require("./controller");
const multer_1 = require("../../utils/multer");
router.post("/signup", multer_1.uploadMiddleware.single('avatar'), controller_1.SignUp);
router.post("/signin", controller_1.SignIn);
exports.default = router;
