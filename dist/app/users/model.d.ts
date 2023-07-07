import mongoose from "mongoose";
declare const _default: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    role: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    password?: string | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    role: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    password?: string | undefined;
}> & Omit<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    role: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    password?: string | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, never>, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    role: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    password?: string | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    role: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    password?: string | undefined;
}>> & Omit<mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    role: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    password?: string | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}, never>>>;
export default _default;
