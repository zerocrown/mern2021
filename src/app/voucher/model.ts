import mongoose, {Schema, model} from "mongoose";


const VoucherSchema = new Schema(
  {
    name: {
      type: String,
      required: [true, "Nama Game Harus Diisi"],
    },
    status: {
      type: String,
      enum: ["aktif", "nonaktif"],
      default: "nonaktif",
    },
    thumbnail: String,
    category: {
      type: mongoose.Types.ObjectId,
      ref: "Category",
    },
    nominal: [
      {
        type: mongoose.Types.ObjectId,
        ref: "Nominal",
      },
    ],
    user: {
      type: Schema.Types.ObjectId,
      ref: "User",
    },
  },
  {
    timestamps: true,
  }
);


export default model('Voucher', VoucherSchema)