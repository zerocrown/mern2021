import mongoose, {Schema, model} from "mongoose";


const CategorySchema = new Schema({
    name: {
        type: String,
        required: [true, 'Nama Kategori harus diisi'],
    }
})


export default model('Category', CategorySchema)