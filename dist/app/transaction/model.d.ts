import mongoose from "mongoose";
declare const _default: mongoose.Model<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    tax: number;
    value: number;
    status: string;
    historyVoucherTopup?: {
        category?: string | undefined;
        gameName?: string | undefined;
        thumbnail?: string | undefined;
        coinName?: string | undefined;
        coinQuantity?: string | undefined;
        Price?: number | undefined;
    } | undefined;
    historyPayment?: {
        required: unknown[] | unknown[] | unknown[];
        type?: string | undefined;
    } | undefined;
    historyUser?: {
        name?: string | undefined;
        phoneNumber?: number | undefined;
    } | undefined;
    name?: string | undefined;
    email?: string | undefined;
    accountUser?: string | undefined;
    player?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    category?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    user?: {
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
    tax: number;
    value: number;
    status: string;
    historyVoucherTopup?: {
        category?: string | undefined;
        gameName?: string | undefined;
        thumbnail?: string | undefined;
        coinName?: string | undefined;
        coinQuantity?: string | undefined;
        Price?: number | undefined;
    } | undefined;
    historyPayment?: {
        required: unknown[] | unknown[] | unknown[];
        type?: string | undefined;
    } | undefined;
    historyUser?: {
        name?: string | undefined;
        phoneNumber?: number | undefined;
    } | undefined;
    name?: string | undefined;
    email?: string | undefined;
    accountUser?: string | undefined;
    player?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    category?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    user?: {
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
    tax: number;
    value: number;
    status: string;
    historyVoucherTopup?: {
        category?: string | undefined;
        gameName?: string | undefined;
        thumbnail?: string | undefined;
        coinName?: string | undefined;
        coinQuantity?: string | undefined;
        Price?: number | undefined;
    } | undefined;
    historyPayment?: {
        required: unknown[] | unknown[] | unknown[];
        type?: string | undefined;
    } | undefined;
    historyUser?: {
        name?: string | undefined;
        phoneNumber?: number | undefined;
    } | undefined;
    name?: string | undefined;
    email?: string | undefined;
    accountUser?: string | undefined;
    player?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    category?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    user?: {
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
    tax: number;
    value: number;
    status: string;
    historyVoucherTopup?: {
        category?: string | undefined;
        gameName?: string | undefined;
        thumbnail?: string | undefined;
        coinName?: string | undefined;
        coinQuantity?: string | undefined;
        Price?: number | undefined;
    } | undefined;
    historyPayment?: {
        required: unknown[] | unknown[] | unknown[];
        type?: string | undefined;
    } | undefined;
    historyUser?: {
        name?: string | undefined;
        phoneNumber?: number | undefined;
    } | undefined;
    name?: string | undefined;
    email?: string | undefined;
    accountUser?: string | undefined;
    player?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    category?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    user?: {
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
    tax: number;
    value: number;
    status: string;
    historyVoucherTopup?: {
        category?: string | undefined;
        gameName?: string | undefined;
        thumbnail?: string | undefined;
        coinName?: string | undefined;
        coinQuantity?: string | undefined;
        Price?: number | undefined;
    } | undefined;
    historyPayment?: {
        required: unknown[] | unknown[] | unknown[];
        type?: string | undefined;
    } | undefined;
    historyUser?: {
        name?: string | undefined;
        phoneNumber?: number | undefined;
    } | undefined;
    name?: string | undefined;
    email?: string | undefined;
    accountUser?: string | undefined;
    player?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    category?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    user?: {
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
    tax: number;
    value: number;
    status: string;
    historyVoucherTopup?: {
        category?: string | undefined;
        gameName?: string | undefined;
        thumbnail?: string | undefined;
        coinName?: string | undefined;
        coinQuantity?: string | undefined;
        Price?: number | undefined;
    } | undefined;
    historyPayment?: {
        required: unknown[] | unknown[] | unknown[];
        type?: string | undefined;
    } | undefined;
    historyUser?: {
        name?: string | undefined;
        phoneNumber?: number | undefined;
    } | undefined;
    name?: string | undefined;
    email?: string | undefined;
    accountUser?: string | undefined;
    player?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    category?: {
        prototype?: mongoose.Types.ObjectId | undefined;
        cacheHexString?: unknown;
        generate?: {} | undefined;
        createFromTime?: {} | undefined;
        createFromHexString?: {} | undefined;
        createFromBase64?: {} | undefined;
        isValid?: {} | undefined;
    } | undefined;
    user?: {
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
