import mongoose from "mongoose";
import config from './../config/index';


mongoose.connect(config.urlDb);


const db = mongoose.connection


export default db