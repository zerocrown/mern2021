import express from "express";
const router = express.Router();

import {
  index_view,
  action_changeStatus,
} from "./controller";

import { isLogin, isSession } from "@src/middleware/auth";
// auth
router.use(isLogin);

// views
router.get("/", index_view);

// // // actions
router.put('/status/:id', action_changeStatus)



export default router;
