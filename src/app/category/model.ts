import mongoose, {Schema, model} from "mongoose";


const CategorySchema = new Schema(
  {
    name: {
      type: String,
      required: [true, "Nama Kategori harus diisi"],
    },
  },
  {
    timestamps: true,
  }
);


export default model('Category', CategorySchema)