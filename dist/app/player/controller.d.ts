import express from "express";
export declare const landingPage: (req: express.Request, res: express.Response) => Promise<void>;
export declare const detailPage: (req: express.Request, res: express.Response) => Promise<express.Response<any, Record<string, any>> | undefined>;
export declare const getCategory: (req: express.Request, res: express.Response) => Promise<void>;
export declare const checkout: (req: express.Request, res: express.Response) => Promise<express.Response<any, Record<string, any>> | undefined>;
export declare const historyTransactions: (req: express.Request, res: express.Response) => Promise<void>;
export declare const historyTransactionDetail: (req: express.Request, res: express.Response) => Promise<express.Response<any, Record<string, any>> | undefined>;
export declare const dashboard: (req: express.Request, res: express.Response) => Promise<void>;
export declare const profile: (req: express.Request, res: express.Response) => Promise<void>;
export declare const updateProfile: (req: express.Request, res: express.Response) => Promise<void>;
