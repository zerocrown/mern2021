import express from "express";
export declare const SignUp: (req: express.Request, res: express.Response, next: express.NextFunction) => Promise<express.Response<any, Record<string, any>> | undefined>;
export declare const SignIn: (req: express.Request, res: express.Response, next: express.NextFunction) => Promise<void>;
