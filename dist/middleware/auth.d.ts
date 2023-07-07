import express, { Request } from "express";
export declare const isLogin: (req: express.Request, res: express.Response, next: express.NextFunction) => Promise<void>;
export declare const isSession: (req: express.Request, res: express.Response, next: express.NextFunction) => Promise<void>;
export declare const isLoginPlayer: (req: express.Request, res: express.Response, next: express.NextFunction) => Promise<void>;
