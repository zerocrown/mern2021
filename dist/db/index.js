"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importDefault(require("mongoose"));
const index_1 = __importDefault(require("./../config/index"));
mongoose_1.default.connect(index_1.default.urlDb);
const db = mongoose_1.default.connection;
exports.default = db;
