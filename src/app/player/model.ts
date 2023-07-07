import mongoose, { Schema, model } from "mongoose";
import bcrypt from "bcrypt";
// import express from 'express';


const PlayerSchema = new Schema(
  {
    name: {
      type: String,
      required: [true, "Nama harus diisi"],
      maxlength: [50, "Maximal 50 karakter"],
      minlength: [3, "Minimal 3 karakter"],
    },
    username: {
      type: String,
      required: [true, "Username harus diisi"],
      maxlength: [50, "Maximal 50 karakter"],
      minlength: [3, "Minimal 3 karakter"],
    },
    email: {
      type: String,
      required: [true, "Email harus diisi"],
      unique: [true, "Email tsb sudah terdaftar"],
    },
    password: {
      type: String,
      required: [true, "Password harus diisi"],
      maxlength: [255, "Maximal 50 karakter"],
      minlength: [8, "Minimal 8 karakter"],
    },
    status: {
      type: String,
      enum: ["aktif", "nonaktif"],
      default: "nonaktif",
    },
    phoneNumber: {
      type: Number,
      required: [true, "Nomor telepon harus diisi"],
      maxlength: [13, "Panjang nomor telepon harus antara 9 - 13 karakter"],
      minlength: [9, "Panjang nomor telepon harus antara 9 - 13 karakter"],
    },
    avatar: {
      type: String,
    },
    fileName: {
      type: String,
    },
    favorite: {
      type: mongoose.Types.ObjectId,
      ref: "Category",
    },
  },
  {
    timestamps: true,
  }
);

// PlayerSchema.path('email').validate( function(value) {

// })




PlayerSchema.pre("save", async function (next: any) {
  const user: any = this;
  if (user.isModified("password")) {
    user.password = await bcrypt.hash(user.password, 15);
  }
  next();
});


PlayerSchema.methods.checkPassword = async function(password: string) {
  const isMatch = await bcrypt.compare(password, this.password)
  return isMatch
}

export default model("Player", PlayerSchema);
