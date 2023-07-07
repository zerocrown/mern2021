import express from "express";
const router = express.Router();

import { SignUp, SignIn } from "./controller";

import {uploadMiddleware} from '../../utils/multer'


// actions
router.post("/signup", uploadMiddleware.single('avatar'), SignUp);
router.post("/signin", SignIn);



export default router;
