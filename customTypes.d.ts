import express from "express";
import session from "express-session";

// setup isi express session
declare module "express-session" {
  interface SessionData {
    user: any;
  }
}

// setup isi Req & Res pada express
declare module "express-serve-static-core" {
  interface Request {
    session: session.SessionData;
  }
  interface Response {
    testing(e?: string): any
  }
  interface Next {}
}





// declare module "express" {
//   interface Request {
//     session: {
//       user?: any;
//     };
//   }
// }


