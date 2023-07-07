"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const router = express_1.default.Router();
const controller_1 = require("./controller");
const auth_1 = require("@src/middleware/auth");
router.use(auth_1.isLogin);
router.get("/", controller_1.index_view);
router.get("/create", controller_1.view_create);
router.get("/edit/:id", controller_1.view_edit);
router.post("/create", controller_1.action_create);
router.put("/edit/:id", controller_1.action_edit);
router.delete("/delete/:id", controller_1.action_delete);
exports.default = router;
