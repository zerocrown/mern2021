import mongoose from "mongoose";
declare const _default: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    username?: string | undefined;
    password?: string | undefined;
    avatar?: string | undefined;
    fileName?: string | undefined;
    favorite?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    username?: string | undefined;
    password?: string | undefined;
    avatar?: string | undefined;
    fileName?: string | undefined;
    favorite?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
}> & Omit<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    username?: string | undefined;
    password?: string | undefined;
    avatar?: string | undefined;
    fileName?: string | undefined;
    favorite?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, never>, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    username?: string | undefined;
    password?: string | undefined;
    avatar?: string | undefined;
    fileName?: string | undefined;
    favorite?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    username?: string | undefined;
    password?: string | undefined;
    avatar?: string | undefined;
    fileName?: string | undefined;
    favorite?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
}>> & Omit<mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    name?: string | undefined;
    email?: string | undefined;
    phoneNumber?: number | undefined;
    username?: string | undefined;
    password?: string | undefined;
    avatar?: string | undefined;
    fileName?: string | undefined;
    favorite?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}, never>>>;
export default _default;
