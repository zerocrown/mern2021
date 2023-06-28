import mongoose, {Schema, model} from "mongoose";


const coinSchema = ['diamond', 'gold', 'silver', 'jewel']

const NominalSchema = new Schema({
    coinQuantity: {
        type: Number,
        default: 0
    },
    coinName: {
        type: String,
        enum: coinSchema,
        required: [true, 'Nama Coin harus diisi'],
    },
    price: {
        type: Number,
        default: 0,
    }
})


export default model('Nominal', NominalSchema)