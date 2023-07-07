import mongoose from "mongoose";
declare const _default: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    bank: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    }[];
    type?: string | undefined;
}, {}, {}, {}, mongoose.Document<unknown, {}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    bank: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    }[];
    type?: string | undefined;
}> & Omit<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    bank: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    }[];
    type?: string | undefined;
} & {
    _id: mongoose.Types.ObjectId;
}, never>, mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    bank: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    }[];
    type?: string | undefined;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    bank: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    }[];
    type?: string | undefined;
}>> & Omit<mongoose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    status: string;
    bank: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    }[];
    type?: string | undefined;
}> & {
    _id: mongoose.Types.ObjectId;
}, never>>>;
export default _default;
