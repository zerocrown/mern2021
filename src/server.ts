import app from './app.router'
import express from 'express'
import http from 'http'
import https from 'https'
import debug from 'debug'
// const debug = require('debug')('Back-end')
import db from './db/index'

function normalizePort(arg0: string | number) {
    throw new Error('Function not implemented.');
}

const port = process.env.PORT || "3000";
app.set("port", port);


// buat http server
const server = http.createServer(app);


db.on('error', (err: Error) => {
    console.log("connection error: tidak bisa tersambung ke mongodb");
})


db.on("open", function () {
  server.listen(port, () => {
    console.log("server run port :" + port);
  });
  server.on("error", onError);
  server.on("listening", onListening);
});



// debug console logging
function onError(error: Error) {
    if (error) {
          throw new Error(error.message);
      }
}

function onListening() {
    const addr = server.address()
    const bind = typeof addr === "string" ? "pipe " + addr : "port " + addr?.port;
    debug("Listening on " + bind);
}






