import express from "express";
const router = express.Router();

import { index_view_signin, action_signin, action_logout } from "./controller";
import { isSession, isLogin } from "@src/middleware/auth";

// views
router.get("/", isSession, index_view_signin);

// actions
router.post("/", isSession, action_signin);
router.post("/logout", action_logout);

export default router;
