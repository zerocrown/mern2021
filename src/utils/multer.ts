import multer from 'multer'

const storage = multer.diskStorage({
  destination: function (req: any, file: any, cb: any) {
    cb(null, 'src/public/uploads');
  },
  filename: function (req: any, file: any, cb: any) {
    cb(null, Math.floor(Math.random() * 99999999) + "-" + file.originalname);
  },
});

export const uploadMiddleware = multer({
  storage,
});