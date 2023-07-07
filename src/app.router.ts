import path from "path";
import express from "express";
import session from "express-session";
import flashNotif from "connect-flash";
import methodOverride from "method-override";
import cors from 'cors'
const app = express();
const URL = '/api/v1'

app.use(cors({
  origin: ['*']
}))


// custom methods


// setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");



// middleware
app.use(express.static(path.join(__dirname, "/public")));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(
  session({
    secret: "mysecret",
    resave: false,
    saveUninitialized: true,
    cookie: {},
  })
);

app.use(methodOverride("_method"));
app.use(flashNotif());
app.use(
  "/adminlte",
  express.static(path.join(__dirname, "../node_modules/admin-lte"))
);

// route imports
import dashboardRoute from "./app/dashboard/router";
import categoryRoute from "./app/category/router";
import nominalRoute from "./app/nominal/router";
import voucherRoute from "./app/voucher/router";
import bankRoute from "./app/bank/router";
import paymentRoute from "./app/payment/router";
import transactionRoute from "./app/transaction/router";
import usersRoute from "./app/users/router";

// v1 routes
import playerRoute from "./app/player/router";
import authRoute from "./app/auth/router";

// routing users / Players
app.use(`${URL}/player`, playerRoute);
app.use(`${URL}/auth`, authRoute);


// routing admin
app.use("/auth", usersRoute);
app.use("/", dashboardRoute);
app.use("/category", categoryRoute);
app.use("/nominal", nominalRoute);
app.use("/voucher", voucherRoute);
app.use("/bank", bankRoute);
app.use("/payment", paymentRoute);
app.use("/transaction", transactionRoute);

export default app;
