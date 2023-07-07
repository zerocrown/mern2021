import express from "express";
const router = express.Router();

import {
  index_view,
  view_create,
  action_create,
  view_edit,
  action_edit,
  action_delete,
} from "./controller";

import { isLogin, isSession } from "@src/middleware/auth";
// auth
router.use(isLogin);

// views
router.get("/", index_view);
router.get("/create", view_create);
router.get("/edit/:id", view_edit);

// // actions
router.post("/create", action_create);
router.put("/edit/:id", action_edit);
router.delete("/delete/:id", action_delete);

// other action

export default router;
