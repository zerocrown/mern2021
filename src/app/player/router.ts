import express from "express";
const router = express.Router();

import { landingPage, detailPage, getCategory, checkout, historyTransactions, historyTransactionDetail, dashboard, profile, updateProfile } from "./controller";

import {isLoginPlayer} from '../../middleware/auth'
import { uploadMiddleware } from "@src/utils/multer";


// view & get data
router.get("/landingpage", landingPage);
router.get("/:id/detail", detailPage);
router.get("/dashboard", isLoginPlayer, dashboard);

// get data
router.get("/category", getCategory);
router.get("/history/transaction", isLoginPlayer, historyTransactions);
router.get("/history/transaction/:id", isLoginPlayer, historyTransactionDetail);


// profile
router.get("/profile", isLoginPlayer, profile);
router.put("/profile", isLoginPlayer, uploadMiddleware.single('avatar'), updateProfile);


// action need login
router.post("/checkout", isLoginPlayer, checkout);


// action without login


export default router;
