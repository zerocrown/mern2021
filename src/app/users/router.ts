import express from "express";
const router = express.Router();

import { index_view_signin, action_signin } from "./controller";
import { isSession } from "@src/middleware/auth";

// views
router.get("/", isSession, index_view_signin);

// actions
router.post("/", isSession, action_signin);

export default router;
