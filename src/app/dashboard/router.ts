import express from "express";
const router = express.Router();

import { index } from "./controller";

import { isLogin, isSession } from "@src/middleware/auth";

// auth
router.use(isLogin);

router.get("/", index);

export default router;
