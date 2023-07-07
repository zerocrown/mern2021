import mongoose, { Schema, model } from "mongoose";

const UserSchema = new Schema({
  name: {
    type: String,
    required: [true, "Tipe nama harus diisi"],
  },
  email: {
    type: String,
    required: [true, "Email harus diisi"],
  },
  password: {
    type: String,
    required: [true, "Password harus diisi"],
  },
  status: {
    type: String,
    enum: ["aktif", "nonaktif"],
    default: 'nonaktif',
  },
  role: {
    type: String,
    enum: ["admin", "user"],
    default: 'admin',
    },
    phoneNumber: {
        type: Number,
        required: [true, "Nomor telepon harus diisi"]
  }
}, {
    timestamps: true,
});

export default model("User", UserSchema);
