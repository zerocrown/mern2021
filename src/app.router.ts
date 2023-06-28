import path from "path";
import express from "express";
import session from "express-session";
import flashNotif from "connect-flash";
import methodOverride from 'method-override'
const app = express();

// setup


app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

// middleware
app.use(express.static(path.join(__dirname, "/public")))
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(session({
  secret: 'mysecret',
  resave: false,
  saveUninitialized: true,
  cookie: {}
}))

app.use(methodOverride('_method'))
app.use(flashNotif())
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

// routing
app.use( '/' ,dashboardRoute);
app.use('/category' ,categoryRoute);
app.use('/nominal' ,nominalRoute);
app.use('/voucher' ,voucherRoute);
app.use('/bank' ,bankRoute);
app.use('/payment' ,paymentRoute);

export default app;
