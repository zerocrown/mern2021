"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
const dotenv_1 = require("dotenv");
const path_1 = __importDefault(require("path"));
(0, dotenv_1.config)({ path: path_1.default.resolve(__dirname, "../../env/production.env") });
module.exports = {
    urlDb: process.env.URL_DB || "",
    urlImage: process.env.URL_IMAGE_HOST || "",
    jwtSecret: process.env.JWT_SECRET || "",
};
