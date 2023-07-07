"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const path_1 = __importDefault(require("path"));
const express_1 = __importDefault(require("express"));
const express_session_1 = __importDefault(require("express-session"));
const connect_flash_1 = __importDefault(require("connect-flash"));
const method_override_1 = __importDefault(require("method-override"));
const cors_1 = __importDefault(require("cors"));
const app = (0, express_1.default)();
const URL = '/api/v1';
app.use((0, cors_1.default)({
    origin: ['*']
}));
app.set("views", path_1.default.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(express_1.default.static(path_1.default.join(__dirname, "/public")));
app.use(express_1.default.urlencoded({ extended: true }));
app.use(express_1.default.json());
app.use((0, express_session_1.default)({
    secret: "mysecret",
    resave: false,
    saveUninitialized: true,
    cookie: {},
}));
app.use((0, method_override_1.default)("_method"));
app.use((0, connect_flash_1.default)());
app.use("/adminlte", express_1.default.static(path_1.default.join(__dirname, "../node_modules/admin-lte")));
const router_1 = __importDefault(require("./app/dashboard/router"));
const router_2 = __importDefault(require("./app/category/router"));
const router_3 = __importDefault(require("./app/nominal/router"));
const router_4 = __importDefault(require("./app/voucher/router"));
const router_5 = __importDefault(require("./app/bank/router"));
const router_6 = __importDefault(require("./app/payment/router"));
const router_7 = __importDefault(require("./app/transaction/router"));
const router_8 = __importDefault(require("./app/users/router"));
const router_9 = __importDefault(require("./app/player/router"));
const router_10 = __importDefault(require("./app/auth/router"));
app.use(`${URL}/player`, router_9.default);
app.use(`${URL}/auth`, router_10.default);
app.use("/auth", router_8.default);
app.use("/", router_1.default);
app.use("/category", router_2.default);
app.use("/nominal", router_3.default);
app.use("/voucher", router_4.default);
app.use("/bank", router_5.default);
app.use("/payment", router_6.default);
app.use("/transaction", router_7.default);
exports.default = app;
