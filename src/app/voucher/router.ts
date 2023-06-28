import express from "express";
const router = express.Router();

import {
    index_view,
    view_create,
  action_create,
  view_edit,
  action_edit,
  action_delete,
  action_changeStatus
} from "./controller";
import { uploadMiddleware as Upload } from "../../utils/multer";


// views
router.get("/", index_view);
router.get("/create", view_create);
router.get("/edit/:id", view_edit);

// // actions
router.post("/create", Upload.single('image') , action_create);
router.put("/edit/:id", Upload.single('image'), action_edit);
router.delete("/delete/:id", action_delete);

// other action
router.put("/editstatus/:id", action_changeStatus);




export default router;
