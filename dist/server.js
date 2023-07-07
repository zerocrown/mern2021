"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const app_router_1 = __importDefault(require("./app.router"));
const http_1 = __importDefault(require("http"));
const debug_1 = __importDefault(require("debug"));
const index_1 = __importDefault(require("./db/index"));
function normalizePort(arg0) {
    throw new Error('Function not implemented.');
}
const port = process.env.PORT || "3000";
app_router_1.default.set("port", port);
const server = http_1.default.createServer(app_router_1.default);
index_1.default.on('error', (err) => {
    console.log("connection error: tidak bisa tersambung ke mongodb");
});
index_1.default.on("open", function () {
    server.listen(port, () => {
        console.log("server run port :" + port);
    });
    server.on("error", onError);
    server.on("listening", onListening);
});
function onError(error) {
    if (error) {
        throw new Error(error.message);
    }
}
function onListening() {
    const addr = server.address();
    const bind = typeof addr === "string" ? "pipe " + addr : "port " + (addr === null || addr === void 0 ? void 0 : addr.port);
    (0, debug_1.default)("Listening on " + bind);
}
