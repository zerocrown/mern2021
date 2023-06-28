import { config } from "dotenv";
import path from "path";

config({ path: path.resolve(__dirname, "../../env/development.env") })



export = {
  // rootPath: path.resolve(__dirname, '..'),
  urlDb: process.env.URL_DB || "",
  urlImage: process.env.URL_IMAGE_HOST || ""
};

