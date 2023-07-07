[1mdiff --git a/.eslintignore b/.eslintignore[m
[1mindex 42e42be..8280f53 100644[m
[1m--- a/.eslintignore[m
[1m+++ b/.eslintignore[m
[36m@@ -1 +1,2 @@[m
[31m-src/public/[m
[32m+[m[32msrc/public[m
[32m+[m[32m/node_modules/*[m
[1mdiff --git a/.eslintrc.json b/.eslintrc.json[m
[1mindex 0d34993..8f2f462 100644[m
[1m--- a/.eslintrc.json[m
[1m+++ b/.eslintrc.json[m
[36m@@ -40,5 +40,6 @@[m
     "node": {[m
       "tryExtensions": [".js", ".json", ".node", ".ts"][m
     }[m
[31m-  }[m
[32m+[m[32m  },[m[41m [m
[32m+[m[32m  "ignorePatterns":["/node_modules/"][m
 }[m
\ No newline at end of file[m
[1mdiff --git a/.hintrc b/.hintrc[m
[1mnew file mode 100644[m
[1mindex 0000000..b917cc4[m
[1m--- /dev/null[m
[1m+++ b/.hintrc[m
[36m@@ -0,0 +1,27 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "extends": [[m
[32m+[m[32m    "development"[m
[32m+[m[32m  ],[m
[32m+[m[32m  "hints": {[m
[32m+[m[32m    "axe/structure": [[m
[32m+[m[32m      "default",[m
[32m+[m[32m      {[m
[32m+[m[32m        "listitem": "off"[m
[32m+[m[32m      }[m
[32m+[m[32m    ],[m
[32m+[m[32m    "axe/name-role-value": [[m
[32m+[m[32m      "default",[m
[32m+[m[32m      {[m
[32m+[m[32m        "button-name": "off",[m
[32m+[m[32m        "link-name": "off"[m
[32m+[m[32m      }[m
[32m+[m[32m    ],[m
[32m+[m[32m    "no-inline-styles": "off",[m
[32m+[m[32m    "axe/aria": [[m
[32m+[m[32m      "default",[m
[32m+[m[32m      {[m
[32m+[m[32m        "aria-required-children": "off"[m
[32m+[m[32m      }[m
[32m+[m[32m    ][m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/README.md b/README.md[m
[1mindex cde67f5..372a5fb 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -35,6 +35,10 @@[m [mRun the production build (Must be built first).[m
 [m
 ### `npm start -- --env="name of env file" (default is production).`[m
 [m
[32m+[m
[32m+[m
[32m+[m[32mtesting[m
[32m+[m
 Run production build with a different env file.[m
 [m
 [m
[1mdiff --git a/cls b/cls[m
[1mnew file mode 100644[m
[1mindex 0000000..e08cd0b[m
[1m--- /dev/null[m
[1m+++ b/cls[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m[33mcommit 5d7727b05a58b46c52be0b963ecd1b1db4112dd1[m[33m ([m[1;36mHEAD -> [m[1;32mFeature[m[33m, [m[1;31morigin/Feature[m[33m)[m[m
[32m+[m[32mMerge: 6cdf537 3365b3c[m
[32m+[m[32mAuthor: Rezacrown <aryhidayatfebriana@gmail.com>[m
[32m+[m[32mDate:   Wed Jun 28 18:22:22 2023 +0800[m
[32m+[m
[32m+[m[32m    Merge branch 'main' of https://github.com/Rezacrown/MERN-topup-game into Feature[m
[32m+[m
[32m+[m[32m[33mcommit 6cdf537e9f4b485e4b2698921d333f5c9ecb7a4d[m[m
[32m+[m[32mAuthor: Rezacrown <aryhidayatfebriana@gmail.com>[m
[32m+[m[32mDate:   Wed Jun 28 18:12:43 2023 +0800[m
[32m+[m
[32m+[m[32m    bank features[m
[32m+[m
[32m+[m[32m[33mcommit 3365b3c4d8c31493f598b35c9da9d2bd4b04d4d8[m[33m ([m[1;31morigin/main[m[33m)[m[m
[32m+[m[32mAuthor: Master Reza <121171485+Rezacrown@users.noreply.github.com>[m
[32m+[m[32mDate:   Wed Jun 28 14:53:52 2023 +0800[m
[32m+[m
[32m+[m[32m    Update README.md[m
[32m+[m
[32m+[m[32m[33mcommit d270fc9398bea57386e6e9373c4c696e4524751d[m[33m ([m[1;32mmain[m[33m)[m[m
[32m+[m[32mAuthor: Rezacrown <aryhidayatfebriana@gmail.com>[m
[32m+[m[32mDate:   Wed Jun 28 09:59:55 2023 +0800[m
[32m+[m
[32m+[m[32m    CRUD feature 1[m
[1mdiff --git a/customTypes.d.ts b/customTypes.d.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..bad4d9a[m
[1m--- /dev/null[m
[1m+++ b/customTypes.d.ts[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mimport session from "express-session";[m
[32m+[m
[32m+[m[32m// setup isi express session[m
[32m+[m[32mdeclare module "express-session" {[m
[32m+[m[32m  interface SessionData {[m
[32m+[m[32m    user: any;[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// setup isi Req & Res pada express[m
[32m+[m[32mdeclare module "express-serve-static-core" {[m
[32m+[m[32m  interface Request {[m
[32m+[m[32m    session: session.SessionData;[m
[32m+[m[32m    player: any;[m
[32m+[m[32m    token: string;[m
[32m+[m[32m  }[m
[32m+[m[32m  interface Response {[m
[32m+[m[32m    testing(e?: string): any[m
[32m+[m[32m  }[m
[32m+[m[32m  interface Next {}[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m// declare module "express" {[m
[32m+[m[32m//   interface Request {[m
[32m+[m[32m//     session: {[m
[32m+[m[32m//       user?: any;[m
[32m+[m[32m//     };[m
[32m+[m[32m//   }[m
[32m+[m[32m// }[m
[32m+[m
[32m+[m
[1mdiff --git a/global.d.ts b/global.d.ts[m
[1mdeleted file mode 100644[m
[1mindex 40c09fe..0000000[m
[1m--- a/global.d.ts[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-declare namespace Express {[m
[31m-    export interface Response {[m
[31m-      render(view: string, options?: object): void;[m
[31m-    }[m
[31m-  }[m
\ No newline at end of file[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mindex 383a2b7..f298efc 100644[m
[1m--- a/package-lock.json[m
[1m+++ b/package-lock.json[m
[36m@@ -7,15 +7,16 @@[m
     "": {[m
       "name": "back-end",[m
       "version": "0.0.0",[m
[32m+[m[32m      "license": "Rizky Reza",[m
       "dependencies": {[m
[31m-        "@types/method-override": "^0.0.32",[m
[31m-        "@types/mongodb": "^4.0.7",[m
[31m-        "@types/mongoose": "^5.11.97",[m
         "admin-lte": "3.2",[m
[32m+[m[32m        "bcrypt": "^5.1.0",[m
         "connect-flash": "^0.1.1",[m
         "cookie-parser": "^1.4.6",[m
[32m+[m[32m        "cors": "^2.8.5",[m
         "dotenv": "^16.3.1",[m
         "ejs": "^3.1.9",[m
[32m+[m[32m        "envalid": "^7.3.1",[m
         "express": "^4.18.2",[m
         "express-async-errors": "^3.1.1",[m
         "express-session": "^1.17.3",[m
[36m@@ -24,6 +25,7 @@[m
         "jet-logger": "^1.3.1",[m
         "jet-validator": "^1.1.1",[m
         "jsonfile": "^6.1.0",[m
[32m+[m[32m        "jsonwebtoken": "^9.0.0",[m
         "method-override": "^3.0.0",[m
         "module-alias": "^2.2.3",[m
         "mongodb": "^5.6.0",[m
[36m@@ -33,8 +35,10 @@[m
         "ts-command-line-args": "^2.5.1"[m
       },[m
       "devDependencies": {[m
[32m+[m[32m        "@types/bcrypt": "^5.0.0",[m
         "@types/connect-flash": "^0.0.37",[m
         "@types/cookie-parser": "^1.4.3",[m
[32m+[m[32m        "@types/cors": "^2.8.13",[m
         "@types/debug": "^4.1.8",[m
         "@types/ejs": "^3.1.2",[m
         "@types/express": "^4.17.17",[m
[36m@@ -43,6 +47,10 @@[m
         "@types/fs-extra": "^11.0.1",[m
         "@types/jasmine": "^4.3.4",[m
         "@types/jsonfile": "^6.1.1",[m
[32m+[m[32m        "@types/jsonwebtoken": "^9.0.2",[m
[32m+[m[32m        "@types/method-override": "^0.0.32",[m
[32m+[m[32m        "@types/mongodb": "^4.0.7",[m
[32m+[m[32m        "@types/mongoose": "^5.11.97",[m
         "@types/morgan": "^1.9.4",[m
         "@types/multer": "^1.4.7",[m
         "@types/node": "^20.3.1",[m
[36m@@ -337,6 +345,39 @@[m
       "resolved": "https://registry.npmjs.org/@lgaitan/pace-progress/-/pace-progress-1.0.7.tgz",[m
       "integrity": "sha512-GMoTcF6WBpno7a7Iyx7M79os26d5bCDbh7YTZmXZM8YuLR3DDtwo0/CBYddStGD6QIBTieFDz4IAQiO0dAdRGw=="[m
     },[m
[32m+[m[32m    "node_modules/@mapbox/node-pre-gyp": {[m
[32m+[m[32m      "version": "1.0.10",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@mapbox/node-pre-gyp/-/node-pre-gyp-1.0.10.tgz",[m
[32m+[m[32m      "integrity": "sha512-4ySo4CjzStuprMwk35H5pPbkymjv1SF3jGLj6rAHp/xT/RF7TL7bd9CTm1xDY49K2qF7jmR/g7k+SkLETP6opA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "detect-libc": "^2.0.0",[m
[32m+[m[32m        "https-proxy-agent": "^5.0.0",[m
[32m+[m[32m        "make-dir": "^3.1.0",[m
[32m+[m[32m        "node-fetch": "^2.6.7",[m
[32m+[m[32m        "nopt": "^5.0.0",[m
[32m+[m[32m        "npmlog": "^5.0.1",[m
[32m+[m[32m        "rimraf": "^3.0.2",[m
[32m+[m[32m        "semver": "^7.3.5",[m
[32m+[m[32m        "tar": "^6.1.11"[m
[32m+[m[32m      },[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "node-pre-gyp": "bin/node-pre-gyp"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@mapbox/node-pre-gyp/node_modules/nopt": {[m
[32m+[m[32m      "version": "5.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/nopt/-/nopt-5.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Tbj67rffqceeLpcRXrT7vKAN8CwfPeIBgM7E6iBkmKLV7bEMwpGgYLGv0jACUsECaa/vuxP0IjEont6umdMgtQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "abbrev": "1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "nopt": "bin/nopt.js"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/@nodelib/fs.scandir": {[m
       "version": "2.1.5",[m
       "resolved": "https://registry.npmjs.org/@nodelib/fs.scandir/-/fs.scandir-2.1.5.tgz",[m
[36m@@ -426,10 +467,20 @@[m
       "resolved": "https://registry.npmjs.org/@ttskch/select2-bootstrap4-theme/-/select2-bootstrap4-theme-1.5.2.tgz",[m
       "integrity": "sha512-gAj8qNy/VYwQDBkACm0USM66kxFai8flX83ayRXPNhzZckEgSqIBB9sM74SCM3ssgeX+ZVy4BifTnLis+KpIyg=="[m
     },[m
[32m+[m[32m    "node_modules/@types/bcrypt": {[m
[32m+[m[32m      "version": "5.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/bcrypt/-/bcrypt-5.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-agtcFKaruL8TmcvqbndlqHPSJgsolhf/qPWchFlgnW1gECTN/nKbFcoFnvKAQRFfKbh+BO6A3SWdJu9t+xF3Lw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@types/node": "*"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/@types/body-parser": {[m
       "version": "1.19.2",[m
       "resolved": "https://registry.npmjs.org/@types/body-parser/-/body-parser-1.19.2.tgz",[m
       "integrity": "sha512-ALYone6pm6QmwZoAgeyNksccT9Q4AWZQ6PvfwR37GT6r6FWUPguq6sUmNGSMV2Wr761oQoBxwGGa6DR5o1DC9g==",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "@types/connect": "*",[m
         "@types/node": "*"[m
[36m@@ -439,6 +490,7 @@[m
       "version": "3.4.35",[m
       "resolved": "https://registry.npmjs.org/@types/connect/-/connect-3.4.35.tgz",[m
       "integrity": "sha512-cdeYyv4KWoEgpBISTxWvqYsVy444DOqehiF3fM3ne10AmJ62RSyNkUnxMJXHQWRQQX2eR94m5y1IZyDwBjV9FQ==",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "@types/node": "*"[m
       }[m
[36m@@ -467,6 +519,15 @@[m
       "integrity": "sha512-t73xJJrvdTjXrn4jLS9VSGRbz0nUY3cl2DMGDU48lKl+HR9dbbjW2A9r3g40VA++mQpy6uuHg33gy7du2BKpog==",[m
       "dev": true[m
     },[m
[32m+[m[32m    "node_modules/@types/cors": {[m
[32m+[m[32m      "version": "2.8.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/cors/-/cors-2.8.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-RG8AStHlUiV5ysZQKq97copd2UmVYw3/pRMLefISZ3S1hK104Cwm7iLQ3fTKx+lsUH2CE8FlLaYeEA2LSeqYUA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@types/node": "*"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/@types/debug": {[m
       "version": "4.1.8",[m
       "resolved": "https://registry.npmjs.org/@types/debug/-/debug-4.1.8.tgz",[m
[36m@@ -486,6 +547,7 @@[m
       "version": "4.17.17",[m
       "resolved": "https://registry.npmjs.org/@types/express/-/express-4.17.17.tgz",[m
       "integrity": "sha512-Q4FmmuLGBG58btUnfS1c1r/NQdlp3DMfGDGig8WhfpA2YRUtEkxAjkZb0yvplJGYdF1fsQ81iMDcH24sSCNC/Q==",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "@types/body-parser": "*",[m
         "@types/express-serve-static-core": "^4.17.33",[m
[36m@@ -497,6 +559,7 @@[m
       "version": "4.17.35",[m
       "resolved": "https://registry.npmjs.org/@types/express-serve-static-core/-/express-serve-static-core-4.17.35.tgz",[m
       "integrity": "sha512-wALWQwrgiB2AWTT91CB62b6Yt0sNHpznUXeZEcnPU3DRdlDIz74x8Qg1UUYKSVFi+va5vKOLYRBI1bRKiLLKIg==",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "@types/node": "*",[m
         "@types/qs": "*",[m
[36m@@ -550,10 +613,20 @@[m
         "@types/node": "*"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/@types/jsonwebtoken": {[m
[32m+[m[32m      "version": "9.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/jsonwebtoken/-/jsonwebtoken-9.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-drE6uz7QBKq1fYqqoFKTDRdFCPHd5TCub75BM+D+cMx7NU9hUz7SESLfC2fSCXVFMO5Yj8sOWHuGqPgjc+fz0Q==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@types/node": "*"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/@types/method-override": {[m
       "version": "0.0.32",[m
       "resolved": "https://registry.npmjs.org/@types/method-override/-/method-override-0.0.32.tgz",[m
       "integrity": "sha512-Vf9AohOlANmhNswCbkdRG3p+tYcq1+63O+ex1UoNIVYWW3tO8Mx6Z+5G1R8DENeC6/t1SiDJS+ph6ACKpryokg==",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "@types/express": "*"[m
       }[m
[36m@@ -561,13 +634,15 @@[m
     "node_modules/@types/mime": {[m
       "version": "1.3.2",[m
       "resolved": "https://registry.npmjs.org/@types/mime/-/mime-1.3.2.tgz",[m
[31m-      "integrity": "sha512-YATxVxgRqNH6nHEIsvg6k2Boc1JHI9ZbH5iWFFv/MTkchz3b1ieGDa5T0a9RznNdI0KhVbdbWSN+KWWrQZRxTw=="[m
[32m+[m[32m      "integrity": "sha512-YATxVxgRqNH6nHEIsvg6k2Boc1JHI9ZbH5iWFFv/MTkchz3b1ieGDa5T0a9RznNdI0KhVbdbWSN+KWWrQZRxTw==",[m
[32m+[m[32m      "dev": true[m
     },[m
     "node_modules/@types/mongodb": {[m
       "version": "4.0.7",[m
       "resolved": "https://registry.npmjs.org/@types/mongodb/-/mongodb-4.0.7.tgz",[m
       "integrity": "sha512-lPUYPpzA43baXqnd36cZ9xxorprybxXDzteVKCPAdp14ppHtFJHnXYvNpmBvtMUTb5fKXVv6sVbzo1LHkWhJlw==",[m
       "deprecated": "mongodb provides its own types. @types/mongodb is no longer needed.",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "mongodb": "*"[m
       }[m
[36m@@ -577,6 +652,7 @@[m
       "resolved": "https://registry.npmjs.org/@types/mongoose/-/mongoose-5.11.97.tgz",[m
       "integrity": "sha512-cqwOVYT3qXyLiGw7ueU2kX9noE8DPGRY6z8eUxudhXY8NZ7DMKYAxyZkLSevGfhCX3dO/AoX5/SO9lAzfjon0Q==",[m
       "deprecated": "Mongoose publishes its own types, so you do not need to install this package.",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "mongoose": "*"[m
       }[m
[36m@@ -613,12 +689,14 @@[m
     "node_modules/@types/qs": {[m
       "version": "6.9.7",[m
       "resolved": "https://registry.npmjs.org/@types/qs/-/qs-6.9.7.tgz",[m
[31m-      "integrity": "sha512-FGa1F62FT09qcrueBA6qYTrJPVDzah9a+493+o2PCXsesWHIn27G98TsSMs3WPNbZIEj4+VJf6saSFpvD+3Zsw=="[m
[32m+[m[32m      "integrity": "sha512-FGa1F62FT09qcrueBA6qYTrJPVDzah9a+493+o2PCXsesWHIn27G98TsSMs3WPNbZIEj4+VJf6saSFpvD+3Zsw==",[m
[32m+[m[32m      "dev": true[m
     },[m
     "node_modules/@types/range-parser": {[m
       "version": "1.2.4",[m
       "resolved": "https://registry.npmjs.org/@types/range-parser/-/range-parser-1.2.4.tgz",[m
[31m-      "integrity": "sha512-EEhsLsD6UsDM1yFhAvy0Cjr6VwmpMWqFBCb9w07wVugF7w9nfajxLuVmngTIpgS6svCnm6Vaw+MZhoDCKnOfsw=="[m
[32m+[m[32m      "integrity": "sha512-EEhsLsD6UsDM1yFhAvy0Cjr6VwmpMWqFBCb9w07wVugF7w9nfajxLuVmngTIpgS6svCnm6Vaw+MZhoDCKnOfsw==",[m
[32m+[m[32m      "dev": true[m
     },[m
     "node_modules/@types/semver": {[m
       "version": "7.5.0",[m
[36m@@ -630,6 +708,7 @@[m
       "version": "0.17.1",[m
       "resolved": "https://registry.npmjs.org/@types/send/-/send-0.17.1.tgz",[m
       "integrity": "sha512-Cwo8LE/0rnvX7kIIa3QHCkcuF21c05Ayb0ZfxPiv0W8VRiZiNW/WuRupHKpqqGVGf7SUA44QSOUKaEd9lIrd/Q==",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "@types/mime": "^1",[m
         "@types/node": "*"[m
[36m@@ -639,6 +718,7 @@[m
       "version": "1.15.1",[m
       "resolved": "https://registry.npmjs.org/@types/serve-static/-/serve-static-1.15.1.tgz",[m
       "integrity": "sha512-NUo5XNiAdULrJENtJXZZ3fHtfMolzZwczzBbnAeBbqBwG+LaG6YaJtuwzwGSQZ2wsCrxjEhNNjAkKigy3n8teQ==",[m
[32m+[m[32m      "dev": true,[m
       "dependencies": {[m
         "@types/mime": "*",[m
         "@types/node": "*"[m
[36m@@ -960,8 +1040,7 @@[m
     "node_modules/abbrev": {[m
       "version": "1.1.1",[m
       "resolved": "https://registry.npmjs.org/abbrev/-/abbrev-1.1.1.tgz",[m
[31m-      "integrity": "sha512-nne9/IiQ/hzIhY6pdDnbBtz7DjPTKrY00P/zvPSm5pOFkl6xuGrGnXn/VtTNNfNtAfZ9/1RtehkszU9qcTii0Q==",[m
[31m-      "dev": true[m
[32m+[m[32m      "integrity": "sha512-nne9/IiQ/hzIhY6pdDnbBtz7DjPTKrY00P/zvPSm5pOFkl6xuGrGnXn/VtTNNfNtAfZ9/1RtehkszU9qcTii0Q=="[m
     },[m
     "node_modules/accepts": {[m
       "version": "1.3.8",[m
[36m@@ -1135,6 +1214,38 @@[m
         "node": ">=12"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/agent-base": {[m
[32m+[m[32m      "version": "6.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/agent-base/-/agent-base-6.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-RZNwNclF7+MS/8bDg70amg32dyeZGZxiDuQmZxKLAlQjr3jGyLx+4Kkk58UO7D2QdgFIQCovuSuZESne6RG6XQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "debug": "4"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 6.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/agent-base/node_modules/debug": {[m
[32m+[m[32m      "version": "4.3.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/debug/-/debug-4.3.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-PRWFHuSU3eDtQJPvnNY7Jcket1j0t5OuOsFzPPzsekD52Zl8qUfFIPEiswXqIvHWGVHOgX+7G/vCNNhehwxfkQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "ms": "2.1.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependenciesMeta": {[m
[32m+[m[32m        "supports-color": {[m
[32m+[m[32m          "optional": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/agent-base/node_modules/ms": {[m
[32m+[m[32m      "version": "2.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w=="[m
[32m+[m[32m    },[m
     "node_modules/ajv": {[m
       "version": "6.12.6",[m
       "resolved": "https://registry.npmjs.org/ajv/-/ajv-6.12.6.tgz",[m
[36m@@ -1164,7 +1275,6 @@[m
       "version": "5.0.1",[m
       "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz",[m
       "integrity": "sha512-quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==",[m
[31m-      "dev": true,[m
       "engines": {[m
         "node": ">=8"[m
       }[m
[36m@@ -1201,6 +1311,36 @@[m
       "resolved": "https://registry.npmjs.org/append-field/-/append-field-1.0.0.tgz",[m
       "integrity": "sha512-klpgFSWLW1ZEs8svjfb7g4qWY0YS5imI82dTg+QahUvJ8YqAY0P10Uk8tTyh9ZGuYEZEMaeJYCF5BFuX552hsw=="[m
     },[m
[32m+[m[32m    "node_modules/aproba": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/aproba/-/aproba-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-lYe4Gx7QT+MKGbDsA+Z+he/Wtef0BiwDOlK/XkBrdfsh9J/jPPXbX0tE9x9cl27Tmu5gg3QUbUrQYa/y+KOHPQ=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/are-we-there-yet": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Ci/qENmwHnsYo9xKIcUJN5LeDKdJ6R1Z1j9V/J5wyq8nh/mYPEpIKJbBZXtZjG04HiK7zV/p6Vs9952MrMeUIw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "delegates": "^1.0.0",[m
[32m+[m[32m        "readable-stream": "^3.6.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/are-we-there-yet/node_modules/readable-stream": {[m
[32m+[m[32m      "version": "3.6.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-3.6.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-9u/sniCrY3D5WdsERHzHE4G2YCXqoG5FTHUiCC4SIbr6XcLZBY05ya9EKjYek9O5xOAwjGq+1JdGBAS7Q9ScoA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "inherits": "^2.0.3",[m
[32m+[m[32m        "string_decoder": "^1.1.1",[m
[32m+[m[32m        "util-deprecate": "^1.0.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/arg": {[m
       "version": "4.1.3",[m
       "resolved": "https://registry.npmjs.org/arg/-/arg-4.1.3.tgz",[m
[36m@@ -1301,6 +1441,19 @@[m
       "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz",[m
       "integrity": "sha512-Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g=="[m
     },[m
[32m+[m[32m    "node_modules/bcrypt": {[m
[32m+[m[32m      "version": "5.1.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/bcrypt/-/bcrypt-5.1.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-RHBS7HI5N5tEnGTmtR/pppX0mmDSBpQ4aCBsj7CEQfYXDcO74A8sIBYcJMuCsis2E81zDxeENYhv66oZwLiA+Q==",[m
[32m+[m[32m      "hasInstallScript": true,[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@mapbox/node-pre-gyp": "^1.0.10",[m
[32m+[m[32m        "node-addon-api": "^5.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 10.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/binary-extensions": {[m
       "version": "2.2.0",[m
       "resolved": "https://registry.npmjs.org/binary-extensions/-/binary-extensions-2.2.0.tgz",[m
[36m@@ -1487,6 +1640,11 @@[m
         "node": ">=0.4.0"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/buffer-equal-constant-time": {[m
[32m+[m[32m      "version": "1.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/buffer-equal-constant-time/-/buffer-equal-constant-time-1.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-zRpUiDwd/xk6ADqPMATG8vc9VPrkck7T07OIx0gnjmJAnHnTVXNQG3vfvWNuiZIkwu9KrKdA1iJKfsfTVxE6NA=="[m
[32m+[m[32m    },[m
     "node_modules/buffer-from": {[m
       "version": "1.1.2",[m
       "resolved": "https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.2.tgz",[m
[36m@@ -1625,6 +1783,14 @@[m
         "node": ">= 6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/chownr": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/chownr/-/chownr-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-bIomtDF5KGpdogkLd9VspvFzk9KfpyyGlS8YFVZl7TGPBHL5snIOnxeshwVgPteQ9b4Eydl+pVbIyE1DcvCWgQ==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/clone": {[m
       "version": "1.0.4",[m
       "resolved": "https://registry.npmjs.org/clone/-/clone-1.0.4.tgz",[m
[36m@@ -1654,6 +1820,14 @@[m
       "resolved": "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz",[m
       "integrity": "sha512-dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA=="[m
     },[m
[32m+[m[32m    "node_modules/color-support": {[m
[32m+[m[32m      "version": "1.1.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/color-support/-/color-support-1.1.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-qiBjkpbMLO/HL68y+lh4q0/O1MZFj2RX6X/KmMa3+gJD3z+WwI1ZzDHysvqHGS3mP6mznPckpXmw1nI9cJjyRg==",[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "color-support": "bin.js"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/colors": {[m
       "version": "1.3.0",[m
       "resolved": "https://registry.npmjs.org/colors/-/colors-1.3.0.tgz",[m
[36m@@ -1807,6 +1981,11 @@[m
         "node": ">= 0.4.0"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/console-control-strings": {[m
[32m+[m[32m      "version": "1.1.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-ty/fTekppD2fIwRvnZAVdeOiGd1c7YXEixbgJTNzqcxJWKQnjJ/V1bNEEE6hygpM3WjwHFUVK6HTjWSzV4a8sQ=="[m
[32m+[m[32m    },[m
     "node_modules/content-disposition": {[m
       "version": "0.5.4",[m
       "resolved": "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.4.tgz",[m
[36m@@ -1867,6 +2046,18 @@[m
       "resolved": "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.3.tgz",[m
       "integrity": "sha512-ZQBvi1DcpJ4GDqanjucZ2Hj3wEO5pZDS89BWbkcrvdxksJorwUDDZamX9ldFkp9aw2lmBDLgkObEA4DWNJ9FYQ=="[m
     },[m
[32m+[m[32m    "node_modules/cors": {[m
[32m+[m[32m      "version": "2.8.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/cors/-/cors-2.8.5.tgz",[m
[32m+[m[32m      "integrity": "sha512-KIHbLJqu73RGr/hnbrO9uBeixNGuvSQjul/jdFvS/KFSIH1hWVd1ng7zOHx+YrEfInLG7q4n6GHQ9cDtxv/P6g==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "object-assign": "^4",[m
[32m+[m[32m        "vary": "^1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/create-require": {[m
       "version": "1.1.1",[m
       "resolved": "https://registry.npmjs.org/create-require/-/create-require-1.1.1.tgz",[m
[36m@@ -2240,6 +2431,11 @@[m
         "node": ">=0.4.0"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/delegates": {[m
[32m+[m[32m      "version": "1.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-bd2L678uiWATM6m5Z1VzNCErI3jiGzt6HGY8OVICs40JQq/HALfbyNJmp0UDakEY4pMMaN0Ly5om/B1VI/+xfQ=="[m
[32m+[m[32m    },[m
     "node_modules/depd": {[m
       "version": "2.0.0",[m
       "resolved": "https://registry.npmjs.org/depd/-/depd-2.0.0.tgz",[m
[36m@@ -2257,6 +2453,14 @@[m
         "npm": "1.2.8000 || >= 1.4.16"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/detect-libc": {[m
[32m+[m[32m      "version": "2.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/detect-libc/-/detect-libc-2.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-463v3ZeIrcWtdgIg6vI6XUncguvr2TnGl4SzDXinkt9mSLpBJKXT3mW6xT3VQdDN11+WVs29pgvivTc4Lp8v+w==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/dezalgo": {[m
       "version": "1.0.4",[m
       "resolved": "https://registry.npmjs.org/dezalgo/-/dezalgo-1.0.4.tgz",[m
[36m@@ -2335,6 +2539,14 @@[m
       "integrity": "sha512-I88TYZWc9XiYHRQ4/3c5rjjfgkjhLyW2luGIheGERbNQ6OY7yTybanSpDXZa8y7VUP9YmDcYa+eyq4ca7iLqWA==",[m
       "dev": true[m
     },[m
[32m+[m[32m    "node_modules/ecdsa-sig-formatter": {[m
[32m+[m[32m      "version": "1.0.11",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ecdsa-sig-formatter/-/ecdsa-sig-formatter-1.0.11.tgz",[m
[32m+[m[32m      "integrity": "sha512-nagl3RYrbNv6kQkeJIpt6NJZy8twLB/2vtz6yN9Z4vRKHN4/QZJIEbqohALSgwKdnksuY3k5Addp5lg8sVoVcQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/ee-first": {[m
       "version": "1.1.1",[m
       "resolved": "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz",[m
[36m@@ -2373,6 +2585,22 @@[m
         "node": ">= 0.8"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/envalid": {[m
[32m+[m[32m      "version": "7.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/envalid/-/envalid-7.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-KL1YRwn8WcoF/Ty7t+yLLtZol01xr9ZJMTjzoGRM8NaSU+nQQjSWOQKKJhJP2P57bpdakJ9jbxqQX4fGTOicZg==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "tslib": "2.3.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8.12"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/envalid/node_modules/tslib": {[m
[32m+[m[32m      "version": "2.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/tslib/-/tslib-2.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-77EbyPPpMz+FRFRuAFlWMtmgUWGe9UOG2Z25NqCwiIjRhOf5iKGuzSe5P2w1laq+FkRy4p+PCuVkJSGkzTEKVw=="[m
[32m+[m[32m    },[m
     "node_modules/es5-ext": {[m
       "version": "0.10.62",[m
       "resolved": "https://registry.npmjs.org/es5-ext/-/es5-ext-0.10.62.tgz",[m
[36m@@ -3205,11 +3433,32 @@[m
         "node": ">=14.14"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/fs-minipass": {[m
[32m+[m[32m      "version": "2.1.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/fs-minipass/-/fs-minipass-2.1.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-V/JgOLFCS+R6Vcq0slCuaeWEdNC3ouDlJMNIsacH2VtALiu9mV4LPrHc5cDl8k5aw6J8jwgWWpiTo5RYhmIzvg==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "minipass": "^3.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/fs-minipass/node_modules/minipass": {[m
[32m+[m[32m      "version": "3.3.6",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/minipass/-/minipass-3.3.6.tgz",[m
[32m+[m[32m      "integrity": "sha512-DxiNidxSEK+tHG6zOIklvNOwm3hvCrbUrdtzY74U6HKTJxvIDfOUL5W5P2Ghd3DTkhhKPYGqeNUIh5qcM4YBfw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "yallist": "^4.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/fs.realpath": {[m
       "version": "1.0.0",[m
       "resolved": "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz",[m
[31m-      "integrity": "sha512-OO0pH2lK6a0hZnAdau5ItzHPI6pUlvI7jMVnxUQRtw4owF2wk8lOSabtGDCTP4Ggrg2MbGnWO9X8K1t4+fGMDw==",[m
[31m-      "dev": true[m
[32m+[m[32m      "integrity": "sha512-OO0pH2lK6a0hZnAdau5ItzHPI6pUlvI7jMVnxUQRtw4owF2wk8lOSabtGDCTP4Ggrg2MbGnWO9X8K1t4+fGMDw=="[m
     },[m
     "node_modules/fsevents": {[m
       "version": "2.3.2",[m
[36m@@ -3243,6 +3492,48 @@[m
         "url": "https://github.com/sponsors/ljharb"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/gauge": {[m
[32m+[m[32m      "version": "3.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/gauge/-/gauge-3.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-+5J6MS/5XksCuXq++uFRsnUd7Ovu1XenbeuIuNRJxYWjgQbPuFhT14lAvsWfqfAmnwluf1OwMjz39HjfLPci0Q==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "aproba": "^1.0.3 || ^2.0.0",[m
[32m+[m[32m        "color-support": "^1.1.2",[m
[32m+[m[32m        "console-control-strings": "^1.0.0",[m
[32m+[m[32m        "has-unicode": "^2.0.1",[m
[32m+[m[32m        "object-assign": "^4.1.1",[m
[32m+[m[32m        "signal-exit": "^3.0.0",[m
[32m+[m[32m        "string-width": "^4.2.3",[m
[32m+[m[32m        "strip-ansi": "^6.0.1",[m
[32m+[m[32m        "wide-align": "^1.1.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/gauge/node_modules/emoji-regex": {[m
[32m+[m[32m      "version": "8.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/emoji-regex/-/emoji-regex-8.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/gauge/node_modules/signal-exit": {[m
[32m+[m[32m      "version": "3.0.7",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.7.tgz",[m
[32m+[m[32m      "integrity": "sha512-wnD2ZE+l+SPC/uoS0vXeE9L1+0wuaMqKlfz9AMUo38JsyLSBWSFcHR1Rri62LZc12vLr1gb3jl7iwQhgwpAbGQ=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/gauge/node_modules/string-width": {[m
[32m+[m[32m      "version": "4.2.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/string-width/-/string-width-4.2.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "emoji-regex": "^8.0.0",[m
[32m+[m[32m        "is-fullwidth-code-point": "^3.0.0",[m
[32m+[m[32m        "strip-ansi": "^6.0.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/get-assigned-identifiers": {[m
       "version": "1.2.0",[m
       "resolved": "https://registry.npmjs.org/get-assigned-identifiers/-/get-assigned-identifiers-1.2.0.tgz",[m
[36m@@ -3438,6 +3729,11 @@[m
         "url": "https://github.com/sponsors/ljharb"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/has-unicode": {[m
[32m+[m[32m      "version": "2.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-8Rf9Y83NBReMnx0gFzA8JImQACstCYWUplepDa9xprwwtmgEZUF0h/i5xSA625zB/I37EtrswSST6OXxwaaIJQ=="[m
[32m+[m[32m    },[m
     "node_modules/helmet": {[m
       "version": "7.0.0",[m
       "resolved": "https://registry.npmjs.org/helmet/-/helmet-7.0.0.tgz",[m
[36m@@ -3470,6 +3766,39 @@[m
         "node": ">= 0.8"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/https-proxy-agent": {[m
[32m+[m[32m      "version": "5.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/https-proxy-agent/-/https-proxy-agent-5.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-dFcAjpTQFgoLMzC2VwU+C/CbS7uRL0lWmxDITmqm7C+7F0Odmj6s9l6alZc6AELXhrnggM2CeWSXHGOdX2YtwA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "agent-base": "6",[m
[32m+[m[32m        "debug": "4"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/https-proxy-agent/node_modules/debug": {[m
[32m+[m[32m      "version": "4.3.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/debug/-/debug-4.3.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-PRWFHuSU3eDtQJPvnNY7Jcket1j0t5OuOsFzPPzsekD52Zl8qUfFIPEiswXqIvHWGVHOgX+7G/vCNNhehwxfkQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "ms": "2.1.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependenciesMeta": {[m
[32m+[m[32m        "supports-color": {[m
[32m+[m[32m          "optional": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/https-proxy-agent/node_modules/ms": {[m
[32m+[m[32m      "version": "2.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w=="[m
[32m+[m[32m    },[m
     "node_modules/icheck-bootstrap": {[m
       "version": "3.0.1",[m
       "resolved": "https://registry.npmjs.org/icheck-bootstrap/-/icheck-bootstrap-3.0.1.tgz",[m
[36m@@ -3543,7 +3872,6 @@[m
       "version": "1.0.6",[m
       "resolved": "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz",[m
       "integrity": "sha512-k92I/b08q4wvFscXCLvqfsHCrjrF7yiXsQuIVvVE7N82W3+aqpzuUdBbfhWcy/FZR3/4IgflMgKLOsvPDrGCJA==",[m
[31m-      "dev": true,[m
       "dependencies": {[m
         "once": "^1.3.0",[m
         "wrappy": "1"[m
[36m@@ -3650,7 +3978,6 @@[m
       "version": "3.0.0",[m
       "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz",[m
       "integrity": "sha512-zymm5+u+sCsSWyD9qNaejV3DFvhCKclKdizYaJUuHA83RLjb7nSuGnddCHGv0hk+KY7BMAlsWeK4Ueg6EV6XQg==",[m
[31m-      "dev": true,[m
       "engines": {[m
         "node": ">=8"[m
       }[m
[36m@@ -3887,6 +4214,26 @@[m
         "graceful-fs": "^4.1.6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/jsonwebtoken": {[m
[32m+[m[32m      "version": "9.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/jsonwebtoken/-/jsonwebtoken-9.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-tuGfYXxkQGDPnLJ7SibiQgVgeDgfbPq2k2ICcbgqW8WxWLBAxKQM/ZCu/IT8SOSwmaYl4dpTFCW5xZv7YbbWUw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "jws": "^3.2.2",[m
[32m+[m[32m        "lodash": "^4.17.21",[m
[32m+[m[32m        "ms": "^2.1.1",[m
[32m+[m[32m        "semver": "^7.3.8"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=12",[m
[32m+[m[32m        "npm": ">=6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/jsonwebtoken/node_modules/ms": {[m
[32m+[m[32m      "version": "2.1.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-6FlzubTLZG3J2a/NVCAleEhjzq5oxgHyaCU9yYXvcLsvoVaHJq/s5xXI6/XXP6tz7R9xAOtHnSO/tXtF3WRTlA=="[m
[32m+[m[32m    },[m
     "node_modules/jszip": {[m
       "version": "3.10.1",[m
       "resolved": "https://registry.npmjs.org/jszip/-/jszip-3.10.1.tgz",[m
[36m@@ -3898,6 +4245,25 @@[m
         "setimmediate": "^1.0.5"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/jwa": {[m
[32m+[m[32m      "version": "1.4.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/jwa/-/jwa-1.4.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-qiLX/xhEEFKUAJ6FiBMbes3w9ATzyk5W7Hvzpa/SLYdxNtng+gcurvrI7TbACjIXlsJyr05/S1oUhZrc63evQA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "buffer-equal-constant-time": "1.0.1",[m
[32m+[m[32m        "ecdsa-sig-formatter": "1.0.11",[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/jws": {[m
[32m+[m[32m      "version": "3.2.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/jws/-/jws-3.2.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-YHlZCB6lMTllWDtSPHz/ZXTsi8S00usEV6v1tjq8tOUZzw7DpSDWVXjXDre6ed1w/pd495ODpHZYSdkRTsa0HA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "jwa": "^1.4.1",[m
[32m+[m[32m        "safe-buffer": "^5.0.1"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/kareem": {[m
       "version": "2.5.1",[m
       "resolved": "https://registry.npmjs.org/kareem/-/kareem-2.5.1.tgz",[m
[36m@@ -3942,6 +4308,11 @@[m
         "url": "https://github.com/sponsors/sindresorhus"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/lodash": {[m
[32m+[m[32m      "version": "4.17.21",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz",[m
[32m+[m[32m      "integrity": "sha512-v2kDEe57lecTulaDIuNTPy3Ry4gLGJ6Z1O3vE1krgXZNrsQ+LFTGHVxVjcXPs17LhbZVGedAJv8XZ1tvj5FvSg=="[m
[32m+[m[32m    },[m
     "node_modules/lodash.camelcase": {[m
       "version": "4.3.0",[m
       "resolved": "https://registry.npmjs.org/lodash.camelcase/-/lodash.camelcase-4.3.0.tgz",[m
[36m@@ -3970,6 +4341,28 @@[m
         "sourcemap-codec": "^1.4.1"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/make-dir": {[m
[32m+[m[32m      "version": "3.1.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/make-dir/-/make-dir-3.1.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-g3FeP20LNwhALb/6Cz6Dd4F2ngze0jz7tbzrD2wAV+o9FeNHe4rL+yK2md0J/fiSf1sa1ADhXqi5+oVwOM/eGw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": "^6.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      },[m
[32m+[m[32m      "funding": {[m
[32m+[m[32m        "url": "https://github.com/sponsors/sindresorhus"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/make-dir/node_modules/semver": {[m
[32m+[m[32m      "version": "6.3.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/semver/-/semver-6.3.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-b39TBaTSfV6yBrapU89p5fKekE2m/NwnDocOVruQFS1/veMgdzuPcnOM34M6CwxW8jH/lxEa5rBoDeUwu5HHTw==",[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "semver": "bin/semver.js"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/make-error": {[m
       "version": "1.3.6",[m
       "resolved": "https://registry.npmjs.org/make-error/-/make-error-1.3.6.tgz",[m
[36m@@ -4121,6 +4514,29 @@[m
         "node": ">=16 || 14 >=14.17"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/minizlib": {[m
[32m+[m[32m      "version": "2.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/minizlib/-/minizlib-2.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-bAxsR8BVfj60DWXHE3u30oHzfl4G7khkSuPW+qvpd7jFRHm7dLxOjUk1EHACJ/hxLY8phGJ0YhYHZo7jil7Qdg==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "minipass": "^3.0.0",[m
[32m+[m[32m        "yallist": "^4.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/minizlib/node_modules/minipass": {[m
[32m+[m[32m      "version": "3.3.6",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/minipass/-/minipass-3.3.6.tgz",[m
[32m+[m[32m      "integrity": "sha512-DxiNidxSEK+tHG6zOIklvNOwm3hvCrbUrdtzY74U6HKTJxvIDfOUL5W5P2Ghd3DTkhhKPYGqeNUIh5qcM4YBfw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "yallist": "^4.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/mkdirp": {[m
       "version": "0.5.6",[m
       "resolved": "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.6.tgz",[m
[36m@@ -4336,6 +4752,49 @@[m
       "resolved": "https://registry.npmjs.org/next-tick/-/next-tick-1.1.0.tgz",[m
       "integrity": "sha512-CXdUiJembsNjuToQvxayPZF9Vqht7hewsvy2sOWafLvi2awflj9mOC6bHIg50orX8IJvWKY9wYQ/zB2kogPslQ=="[m
     },[m
[32m+[m[32m    "node_modules/node-addon-api": {[m
[32m+[m[32m      "version": "5.1.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/node-addon-api/-/node-addon-api-5.1.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-eh0GgfEkpnoWDq+VY8OyvYhFEzBk6jIYbRKdIlyTiAXIVJ8PyBaKb0rp7oDtoddbdoHWhq8wwr+XZ81F1rpNdA=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/node-fetch": {[m
[32m+[m[32m      "version": "2.6.12",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/node-fetch/-/node-fetch-2.6.12.tgz",[m
[32m+[m[32m      "integrity": "sha512-C/fGU2E8ToujUivIO0H+tpQ6HWo4eEmchoPIoXtxCrVghxdKq+QOHqEZW7tuP3KlV3bC8FRMO5nMCC7Zm1VP6g==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "whatwg-url": "^5.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": "4.x || >=6.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependencies": {[m
[32m+[m[32m        "encoding": "^0.1.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependenciesMeta": {[m
[32m+[m[32m        "encoding": {[m
[32m+[m[32m          "optional": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/node-fetch/node_modules/tr46": {[m
[32m+[m[32m      "version": "0.0.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/tr46/-/tr46-0.0.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-N3WMsuqV66lT30CrXNbEjx4GEwlow3v6rr4mCcv6prnfwhS01rkgyFdjPNBYd9br7LpXV1+Emh01fHnq2Gdgrw=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/node-fetch/node_modules/webidl-conversions": {[m
[32m+[m[32m      "version": "3.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/webidl-conversions/-/webidl-conversions-3.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-2JAn3z8AR6rjK8Sm8orRC0h/bcl/DqL7tRPdGZ4I1CjdF+EaMLmYxBHyXuKL849eucPFhvBoxMsflfOb8kxaeQ=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/node-fetch/node_modules/whatwg-url": {[m
[32m+[m[32m      "version": "5.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/whatwg-url/-/whatwg-url-5.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-saE57nupxk6v3HY35+jzBwYa0rKSy0XR8JSxZPwgLr7ys0IBzhGviA1/TUGJLmSVqs8pb9AnvICXEuOHLprYTw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "tr46": "~0.0.3",[m
[32m+[m[32m        "webidl-conversions": "^3.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/nodemon": {[m
       "version": "2.0.22",[m
       "resolved": "https://registry.npmjs.org/nodemon/-/nodemon-2.0.22.tgz",[m
[36m@@ -4433,6 +4892,17 @@[m
         "node": ">=0.10.0"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/npmlog": {[m
[32m+[m[32m      "version": "5.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/npmlog/-/npmlog-5.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-AqZtDUWOMKs1G/8lwylVjrdYgqA4d9nu8hc+0gzRxlDb1I10+FHBGMXs6aiQHFdCUUlqH99MUMuLfzWDNDtfxw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "are-we-there-yet": "^2.0.0",[m
[32m+[m[32m        "console-control-strings": "^1.1.0",[m
[32m+[m[32m        "gauge": "^3.0.0",[m
[32m+[m[32m        "set-blocking": "^2.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/object-assign": {[m
       "version": "4.1.1",[m
       "resolved": "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz",[m
[36m@@ -4495,7 +4965,6 @@[m
       "version": "1.4.0",[m
       "resolved": "https://registry.npmjs.org/once/-/once-1.4.0.tgz",[m
       "integrity": "sha512-lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==",[m
[31m-      "dev": true,[m
       "dependencies": {[m
         "wrappy": "1"[m
       }[m
[36m@@ -4590,7 +5059,6 @@[m
       "version": "1.0.1",[m
       "resolved": "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz",[m
       "integrity": "sha512-AVbw3UJ2e9bq64vSaS9Am0fje1Pa8pbGqTTsmXfaIiMpnr5DlDhfJOuLj9Sf95ZPVDAUerDfEk88MPmPe7UCQg==",[m
[31m-      "dev": true,[m
       "engines": {[m
         "node": ">=0.10.0"[m
       }[m
[36m@@ -4922,7 +5390,6 @@[m
       "version": "3.0.2",[m
       "resolved": "https://registry.npmjs.org/rimraf/-/rimraf-3.0.2.tgz",[m
       "integrity": "sha512-JZkJMZkAGFFPP2YqXZXPbMlMBgsxzE8ILs4lMIX/2o0L9UBw9O/Y3o6wFw/i9YLapcUJWwqbi3kdxIPdC62TIA==",[m
[31m-      "dev": true,[m
       "dependencies": {[m
         "glob": "^7.1.3"[m
       },[m
[36m@@ -4937,7 +5404,6 @@[m
       "version": "7.2.3",[m
       "resolved": "https://registry.npmjs.org/glob/-/glob-7.2.3.tgz",[m
       "integrity": "sha512-nFR0zLpU2YCaRxwoCJvL6UvCH2JFyFVIvwTLsIf21AuHlMskA1hhTdk+LlYJtOlYt9v6dvszD2BGRqBL+iQK9Q==",[m
[31m-      "dev": true,[m
       "dependencies": {[m
         "fs.realpath": "^1.0.0",[m
         "inflight": "^1.0.4",[m
[36m@@ -5040,7 +5506,6 @@[m
       "version": "7.5.2",[m
       "resolved": "https://registry.npmjs.org/semver/-/semver-7.5.2.tgz",[m
       "integrity": "sha512-SoftuTROv/cRjCze/scjGyiDtcUyxw1rgYQSZY7XTmtR5hX+dm76iDbTH8TkLPHCQmlbQVSSbNZCPM2hb0knnQ==",[m
[31m-      "dev": true,[m
       "dependencies": {[m
         "lru-cache": "^6.0.0"[m
       },[m
[36m@@ -5055,7 +5520,6 @@[m
       "version": "6.0.0",[m
       "resolved": "https://registry.npmjs.org/lru-cache/-/lru-cache-6.0.0.tgz",[m
       "integrity": "sha512-Jo6dJ04CmSjuznwJSS3pUeWmd/H0ffTlkXXgwZi+eq1UCmqQwCh+eLsYOYCwY991i2Fah4h1BEMCx4qThGbsiA==",[m
[31m-      "dev": true,[m
       "dependencies": {[m
         "yallist": "^4.0.0"[m
       },[m
[36m@@ -5105,6 +5569,11 @@[m
         "node": ">= 0.8.0"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/set-blocking": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-KiKBS8AnWGEyLzofFfmvKwpdPzqiy16LvQfK3yv/fVH7Bj13/wl3JSR1J+rfgRE9q7xUJK4qvgS8raSOeLUehw=="[m
[32m+[m[32m    },[m
     "node_modules/setimmediate": {[m
       "version": "1.0.5",[m
       "resolved": "https://registry.npmjs.org/setimmediate/-/setimmediate-1.0.5.tgz",[m
[36m@@ -5565,7 +6034,6 @@[m
       "version": "6.0.1",[m
       "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz",[m
       "integrity": "sha512-Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==",[m
[31m-      "dev": true,[m
       "dependencies": {[m
         "ansi-regex": "^5.0.1"[m
       },[m
[36m@@ -5743,6 +6211,41 @@[m
         "node": ">=8"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/tar": {[m
[32m+[m[32m      "version": "6.1.15",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/tar/-/tar-6.1.15.tgz",[m
[32m+[m[32m      "integrity": "sha512-/zKt9UyngnxIT/EAGYuxaMYgOIJiP81ab9ZfkILq4oNLPFX50qyYmu7jRj9qeXoxmJHjGlbH0+cm2uy1WCs10A==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "chownr": "^2.0.0",[m
[32m+[m[32m        "fs-minipass": "^2.0.0",[m
[32m+[m[32m        "minipass": "^5.0.0",[m
[32m+[m[32m        "minizlib": "^2.1.1",[m
[32m+[m[32m        "mkdirp": "^1.0.3",[m
[32m+[m[32m        "yallist": "^4.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/tar/node_modules/minipass": {[m
[32m+[m[32m      "version": "5.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/minipass/-/minipass-5.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-3FnjYuehv9k6ovOEbyOswadCDPX1piCfhV8ncmYtHOjuPwylVWsghTLo7rabjC3Rx5xD4HDx8Wm1xnMF7S5qFQ==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/tar/node_modules/mkdirp": {[m
[32m+[m[32m      "version": "1.0.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/mkdirp/-/mkdirp-1.0.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-vVqVZQyf3WLx2Shd0qJ9xuvqgAyKPLAiqITEtqW0oIUjzo3PePDd6fW9iFz30ef7Ysp/oiWqbhszeGWW2T6Gzw==",[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "mkdirp": "bin/cmd.js"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/tempusdominus-bootstrap-4": {[m
       "version": "5.39.2",[m
       "resolved": "https://registry.npmjs.org/tempusdominus-bootstrap-4/-/tempusdominus-bootstrap-4-5.39.2.tgz",[m
[36m@@ -6171,6 +6674,32 @@[m
         "node": ">= 8"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/wide-align": {[m
[32m+[m[32m      "version": "1.1.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/wide-align/-/wide-align-1.1.5.tgz",[m
[32m+[m[32m      "integrity": "sha512-eDMORYaPNZ4sQIuuYPDHdQvf4gyCF9rEEV/yPxGfwPkRodwEgiMUUXTx/dex+Me0wxx53S+NgUHaP7y3MGlDmg==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "string-width": "^1.0.2 || 2 || 3 || 4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/wide-align/node_modules/emoji-regex": {[m
[32m+[m[32m      "version": "8.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/emoji-regex/-/emoji-regex-8.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/wide-align/node_modules/string-width": {[m
[32m+[m[32m      "version": "4.2.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/string-width/-/string-width-4.2.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "emoji-regex": "^8.0.0",[m
[32m+[m[32m        "is-fullwidth-code-point": "^3.0.0",[m
[32m+[m[32m        "strip-ansi": "^6.0.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/word-wrap": {[m
       "version": "1.2.3",[m
       "resolved": "https://registry.npmjs.org/word-wrap/-/word-wrap-1.2.3.tgz",[m
[36m@@ -6296,8 +6825,7 @@[m
     "node_modules/wrappy": {[m
       "version": "1.0.2",[m
       "resolved": "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz",[m
[31m-      "integrity": "sha512-l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==",[m
[31m-      "dev": true[m
[32m+[m[32m      "integrity": "sha512-l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ=="[m
     },[m
     "node_modules/xmldoc": {[m
       "version": "1.3.0",[m
[36m@@ -6318,8 +6846,7 @@[m
     "node_modules/yallist": {[m
       "version": "4.0.0",[m
       "resolved": "https://registry.npmjs.org/yallist/-/yallist-4.0.0.tgz",[m
[31m-      "integrity": "sha512-3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A==",[m
[31m-      "dev": true[m
[32m+[m[32m      "integrity": "sha512-3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A=="[m
     },[m
     "node_modules/yn": {[m
       "version": "3.1.1",[m
[1mdiff --git a/package.json b/package.json[m
[1mindex e3174f6..c9be048 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -1,6 +1,7 @@[m
 {[m
   "name": "back-end",[m
   "version": "0.0.0",[m
[32m+[m[32m  "license": "Rizky Reza",[m
   "scripts": {[m
     "build": "npx ts-node build.ts",[m
     "lint": "npx eslint --ext .ts src/",[m
[36m@@ -27,14 +28,14 @@[m
     "node": ">=8.10.0"[m
   },[m
   "dependencies": {[m
[31m-    "@types/method-override": "^0.0.32",[m
[31m-    "@types/mongodb": "^4.0.7",[m
[31m-    "@types/mongoose": "^5.11.97",[m
     "admin-lte": "3.2",[m
[32m+[m[32m    "bcrypt": "^5.1.0",[m
     "connect-flash": "^0.1.1",[m
     "cookie-parser": "^1.4.6",[m
[32m+[m[32m    "cors": "^2.8.5",[m
     "dotenv": "^16.3.1",[m
     "ejs": "^3.1.9",[m
[32m+[m[32m    "envalid": "^7.3.1",[m
     "express": "^4.18.2",[m
     "express-async-errors": "^3.1.1",[m
     "express-session": "^1.17.3",[m
[36m@@ -43,6 +44,7 @@[m
     "jet-logger": "^1.3.1",[m
     "jet-validator": "^1.1.1",[m
     "jsonfile": "^6.1.0",[m
[32m+[m[32m    "jsonwebtoken": "^9.0.0",[m
     "method-override": "^3.0.0",[m
     "module-alias": "^2.2.3",[m
     "mongodb": "^5.6.0",[m
[36m@@ -52,8 +54,10 @@[m
     "ts-command-line-args": "^2.5.1"[m
   },[m
   "devDependencies": {[m
[32m+[m[32m    "@types/bcrypt": "^5.0.0",[m
     "@types/connect-flash": "^0.0.37",[m
     "@types/cookie-parser": "^1.4.3",[m
[32m+[m[32m    "@types/cors": "^2.8.13",[m
     "@types/debug": "^4.1.8",[m
     "@types/ejs": "^3.1.2",[m
     "@types/express": "^4.17.17",[m
[36m@@ -62,6 +66,10 @@[m
     "@types/fs-extra": "^11.0.1",[m
     "@types/jasmine": "^4.3.4",[m
     "@types/jsonfile": "^6.1.1",[m
[32m+[m[32m    "@types/jsonwebtoken": "^9.0.2",[m
[32m+[m[32m    "@types/method-override": "^0.0.32",[m
[32m+[m[32m    "@types/mongodb": "^4.0.7",[m
[32m+[m[32m    "@types/mongoose": "^5.11.97",[m
     "@types/morgan": "^1.9.4",[m
     "@types/multer": "^1.4.7",[m
     "@types/node": "^20.3.1",[m
[1mdiff --git a/src/app.router.ts b/src/app.router.ts[m
[1mindex 40d95f5..b84e153 100644[m
[1m--- a/src/app.router.ts[m
[1m+++ b/src/app.router.ts[m
[36m@@ -2,45 +2,72 @@[m [mimport path from "path";[m
 import express from "express";[m
 import session from "express-session";[m
 import flashNotif from "connect-flash";[m
[31m-import methodOverride from 'method-override'[m
[32m+[m[32mimport methodOverride from "method-override";[m
[32m+[m[32mimport cors from 'cors'[m
 const app = express();[m
[32m+[m[32mconst URL = '/api/v1'[m
 [m
[31m-// setup[m
[32m+[m[32mapp.use(cors({[m
[32m+[m[32m  origin: ['*'][m
[32m+[m[32m}))[m
[32m+[m
[32m+[m
[32m+[m[32m// custom methods[m
 [m
 [m
[32m+[m[32m// setup[m
 app.set("views", path.join(__dirname, "views"));[m
 app.set("view engine", "ejs");[m
 [m
[32m+[m
[32m+[m
 // middleware[m
[31m-app.use(express.static(path.join(__dirname, "/public")))[m
[32m+[m[32mapp.use(express.static(path.join(__dirname, "/public")));[m
 app.use(express.urlencoded({ extended: true }));[m
 app.use(express.json());[m
[31m-app.use(session({[m
[31m-  secret: 'mysecret',[m
[31m-  resave: false,[m
[31m-  saveUninitialized: true,[m
[31m-  cookie: {}[m
[31m-}))[m
[32m+[m[32mapp.use([m
[32m+[m[32m  session({[m
[32m+[m[32m    secret: "mysecret",[m
[32m+[m[32m    resave: false,[m
[32m+[m[32m    saveUninitialized: true,[m
[32m+[m[32m    cookie: {},[m
[32m+[m[32m  })[m
[32m+[m[32m);[m
 [m
[31m-app.use(methodOverride('_method'))[m
[31m-app.use(flashNotif())[m
[32m+[m[32mapp.use(methodOverride("_method"));[m
[32m+[m[32mapp.use(flashNotif());[m
 app.use([m
   "/adminlte",[m
   express.static(path.join(__dirname, "../node_modules/admin-lte"))[m
 );[m
 [m
[31m-[m
[31m-[m
 // route imports[m
 import dashboardRoute from "./app/dashboard/router";[m
 import categoryRoute from "./app/category/router";[m
 import nominalRoute from "./app/nominal/router";[m
 import voucherRoute from "./app/voucher/router";[m
[32m+[m[32mimport bankRoute from "./app/bank/router";[m
[32m+[m[32mimport paymentRoute from "./app/payment/router";[m
[32m+[m[32mimport transactionRoute from "./app/transaction/router";[m
[32m+[m[32mimport usersRoute from "./app/users/router";[m
[32m+[m
[32m+[m[32m// v1 routes[m
[32m+[m[32mimport playerRoute from "./app/player/router";[m
[32m+[m[32mimport authRoute from "./app/auth/router";[m
[32m+[m
[32m+[m[32m// routing users / Players[m
[32m+[m[32mapp.use(`${URL}/player`, playerRoute);[m
[32m+[m[32mapp.use(`${URL}/auth`, authRoute);[m
[32m+[m
 [m
[31m-// routing[m
[31m-app.use( '/' ,dashboardRoute);[m
[31m-app.use('/category' ,categoryRoute);[m
[31m-app.use('/nominal' ,nominalRoute);[m
[31m-app.use('/voucher' ,voucherRoute);[m
[32m+[m[32m// routing admin[m
[32m+[m[32mapp.use("/auth", usersRoute);[m
[32m+[m[32mapp.use("/", dashboardRoute);[m
[32m+[m[32mapp.use("/category", categoryRoute);[m
[32m+[m[32mapp.use("/nominal", nominalRoute);[m
[32m+[m[32mapp.use("/voucher", voucherRoute);[m
[32m+[m[32mapp.use("/bank", bankRoute);[m
[32m+[m[32mapp.use("/payment", paymentRoute);[m
[32m+[m[32mapp.use("/transaction", transactionRoute);[m
 [m
 export default app;[m
[1mdiff --git a/src/app/bank/controller.ts b/src/app/bank/controller.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..acc9aba[m
[1m--- /dev/null[m
[1m+++ b/src/app/bank/controller.ts[m
[36m@@ -0,0 +1,151 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m
[32m+[m[32mimport BankModel, { BankOptions } from "./model";[m
[32m+[m
[32m+[m[32m// import config from "../../config/index";[m
[32m+[m[32m// import fs from "fs";[m
[32m+[m[32m// import path from "path";[m
[32m+[m
[32m+[m[32m// index[m
[32m+[m[32mexport const index_view = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const alertMessage = req.flash("alertMessage");[m
[32m+[m[32m    const alertStatus = req.flash("alertStatus");[m
[32m+[m
[32m+[m[32m    const Alert = { message: alertMessage, status: alertStatus };[m
[32m+[m
[32m+[m[32m    const data = await BankModel.find();[m
[32m+[m
[32m+[m[32m    res.render("admin/bank/view_bank", {[m
[32m+[m[32m      data,[m
[32m+[m[32m      Alert,[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m      Title: "Halaman Bank",[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// create[m
[32m+[m[32mexport const view_create = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    res.render("admin/bank/create", {[m
[32m+[m[32m      Title: "Halaman Tambah Bank",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const action_create = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { name, nameBank, noRekening } = req.body;[m
[32m+[m
[32m+[m[32m    const bank = await BankModel.create({[m
[32m+[m[32m      name,[m
[32m+[m[32m      nameBank,[m
[32m+[m[32m      noRekening,[m
[32m+[m[32m    });[m
[32m+[m[32m    bank.save();[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Tambah Bank");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// edit[m
[32m+[m
[32m+[m[32mexport const view_edit = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m
[32m+[m[32m    const bank = await BankModel.findById(id);[m
[32m+[m
[32m+[m[32m    res.render("admin/bank/edit", {[m
[32m+[m[32m      data: {[m
[32m+[m[32m        bank,[m
[32m+[m[32m        option: BankOptions,[m
[32m+[m[32m      },[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m      Title: "Halaman Edit Bank",[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const action_edit = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m[32m    const { name, nameBank, noRekening } = req.body;[m
[32m+[m
[32m+[m[32m    await BankModel.findByIdAndUpdate([m
[32m+[m[32m      id,[m
[32m+[m[32m      { name, nameBank, noRekening },[m
[32m+[m[32m      {[m
[32m+[m[32m        new: true,[m
[32m+[m[32m        runValidators: true,[m
[32m+[m[32m      }[m
[32m+[m[32m    );[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Edit data Bank");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// delete[m
[32m+[m
[32m+[m[32mexport const action_delete = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m
[32m+[m[32m    await BankModel.findByIdAndDelete(id);[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Hapus Bank");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/bank");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[1mdiff --git a/src/app/bank/model.ts b/src/app/bank/model.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..8128430[m
[1m--- /dev/null[m
[1m+++ b/src/app/bank/model.ts[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32mimport mongoose, { Schema, model } from "mongoose";[m
[32m+[m
[32m+[m[32mexport const BankOptions = ["MANDIRI", "BCA", "BRI", "DANAMON", "PAYPAL", "BNI"];[m
[32m+[m
[32m+[m[32mconst BankSchema = new Schema([m
[32m+[m[32m  {[m
[32m+[m[32m    name: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Nama pemilik harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m    nameBank: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      enum: BankOptions,[m
[32m+[m[32m      required: [true, "Nama Bank harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m    noRekening: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Nomor Rekening Bank harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m  }[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mexport default model("Bank", BankSchema);[m
[1mdiff --git a/src/app/bank/router.ts b/src/app/bank/router.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..bf923f3[m
[1m--- /dev/null[m
[1m+++ b/src/app/bank/router.ts[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mconst router = express.Router();[m
[32m+[m
[32m+[m[32mimport {[m
[32m+[m[32m  index_view,[m
[32m+[m[32m  view_create,[m
[32m+[m[32m  action_create,[m
[32m+[m[32m  view_edit,[m
[32m+[m[32m  action_edit,[m
[32m+[m[32m  action_delete,[m
[32m+[m[32m} from "./controller";[m
[32m+[m
[32m+[m[32mimport { isLogin, isSession } from "@src/middleware/auth";[m
[32m+[m[32m// auth[m
[32m+[m[32mrouter.use(isLogin);[m
[32m+[m
[32m+[m[32m// views[m
[32m+[m[32mrouter.get("/", index_view);[m
[32m+[m[32mrouter.get("/create", view_create);[m
[32m+[m[32mrouter.get("/edit/:id", view_edit);[m
[32m+[m
[32m+[m[32m// // actions[m
[32m+[m[32mrouter.post("/create", action_create);[m
[32m+[m[32mrouter.put("/edit/:id", action_edit);[m
[32m+[m[32mrouter.delete("/delete/:id", action_delete);[m
[32m+[m
[32m+[m[32m// other action[m
[32m+[m
[32m+[m[32mexport default router;[m
[1mdiff --git a/src/app/category/controller.ts b/src/app/category/controller.ts[m
[1mindex 2ed0285..40d898c 100644[m
[1m--- a/src/app/category/controller.ts[m
[1m+++ b/src/app/category/controller.ts[m
[36m@@ -14,9 +14,13 @@[m [mexport const index_view = async ([m
     const alertStatus = req.flash("alertStatus");[m
 [m
     const Alert = { message: alertMessage, status: alertStatus };[m
[31m-    console.log({Alert})[m
 [m
[31m-    res.render("admin/category/view_category", { data, Alert });[m
[32m+[m[32m    res.render("admin/category/view_category", {[m
[32m+[m[32m      data,[m
[32m+[m[32m      Alert,[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m      Title: "Halaman Category",[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -30,7 +34,10 @@[m [mexport const view_create = async ([m
   res: express.Response[m
 ) => {[m
   try {[m
[31m-    res.render("admin/category/create");[m
[32m+[m[32m    res.render("admin/category/create", {[m
[32m+[m[32m      Title: "Halaman Tambah Category",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -45,17 +52,16 @@[m [mexport const action_create = async ([m
   try {[m
     const { name } = req.body;[m
 [m
[31m-    const alertMessage = req.flash('alertMessage', 'Berhasil Tambah Kategori');[m
[31m-    const alertStatus = req.flash('alertStatus', 'success');[m
[31m-[m
[32m+[m[32m    const alertMessage = req.flash("alertMessage", "Berhasil Tambah Kategori");[m
[32m+[m[32m    const alertStatus = req.flash("alertStatus", "success");[m
 [m
     const category = await CategoryModel.create({ name });[m
     await category.save();[m
 [m
[31m-    const Alert = {message: alertMessage, status: alertStatus}[m
[31m-    console.log({Alert})[m
[32m+[m[32m    const Alert = { message: alertMessage, status: alertStatus };[m
[32m+[m[32m    console.log({ Alert });[m
 [m
[31m-    res.redirect("/category",);[m
[32m+[m[32m    res.redirect("/category");[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -73,7 +79,11 @@[m [mexport const view_edit = async ([m
 [m
     const category = await CategoryModel.findById(id);[m
 [m
[31m-    res.render("admin/category/edit", { data: category });[m
[32m+[m[32m    res.render("admin/category/edit", {[m
[32m+[m[32m      data: category,[m
[32m+[m[32m      Title: "Halaman Edit Category",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -98,10 +108,10 @@[m [mexport const action_edit = async ([m
       }[m
     );[m
 [m
[31m-    const alertMessage = req.flash('alertMessage', 'Berhasil Ubah Kategori');[m
[31m-    const alertStatus = req.flash('alertStatus', 'success');[m
[32m+[m[32m    const alertMessage = req.flash("alertMessage", "Berhasil Ubah Kategori");[m
[32m+[m[32m    const alertStatus = req.flash("alertStatus", "success");[m
 [m
[31m-    const Alert = {message: alertMessage, status: alertStatus}[m
[32m+[m[32m    const Alert = { message: alertMessage, status: alertStatus };[m
 [m
     res.redirect("/category");[m
   } catch (error) {[m
[36m@@ -122,8 +132,8 @@[m [mexport const action_delete = async ([m
 [m
     await CategoryModel.findByIdAndDelete(id);[m
 [m
[31m-    const alertMessage = req.flash("alertMessage", 'Berhasil Delete Kategori');[m
[31m-    const alertStatus = req.flash("alertStatus", 'success');[m
[32m+[m[32m    const alertMessage = req.flash("alertMessage", "Berhasil Delete Kategori");[m
[32m+[m[32m    const alertStatus = req.flash("alertStatus", "success");[m
 [m
     const Alert = { message: alertMessage, status: alertStatus };[m
 [m
[1mdiff --git a/src/app/category/model.ts b/src/app/category/model.ts[m
[1mindex ab2de09..1fb1ffd 100644[m
[1m--- a/src/app/category/model.ts[m
[1m+++ b/src/app/category/model.ts[m
[36m@@ -1,12 +1,17 @@[m
 import mongoose, {Schema, model} from "mongoose";[m
 [m
 [m
[31m-const CategorySchema = new Schema({[m
[32m+[m[32mconst CategorySchema = new Schema([m
[32m+[m[32m  {[m
     name: {[m
[31m-        type: String,[m
[31m-        required: [true, 'Nama Kategori harus diisi'],[m
[31m-    }[m
[31m-})[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Nama Kategori harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m  }[m
[32m+[m[32m);[m
 [m
 [m
 export default model('Category', CategorySchema)[m
\ No newline at end of file[m
[1mdiff --git a/src/app/category/router.ts b/src/app/category/router.ts[m
[1mindex 83a6387..9e6e24b 100644[m
[1m--- a/src/app/category/router.ts[m
[1m+++ b/src/app/category/router.ts[m
[36m@@ -9,6 +9,10 @@[m [mimport {[m
   view_create,[m
   view_edit,[m
 } from "./controller";[m
[32m+[m[32mimport { isLogin } from "../../middleware/auth";[m
[32m+[m
[32m+[m[32m// middleware[m
[32m+[m[32mrouter.use(isLogin)[m
 [m
 // views[m
 router.get("/", index_view);[m
[1mdiff --git a/src/app/dashboard/controller.ts b/src/app/dashboard/controller.ts[m
[1mindex b40f4b0..8ed926a 100644[m
[1m--- a/src/app/dashboard/controller.ts[m
[1m+++ b/src/app/dashboard/controller.ts[m
[36m@@ -1,11 +1,26 @@[m
[31m-import express from 'express'[m
[32m+[m[32mimport express from "express";[m
[32m+[m
[32m+[m[32mimport TransactionModel from '../transaction/model'[m
[32m+[m[32mimport VoucherModel from '../voucher/model'[m
[32m+[m[32mimport CategoryModel from '../category/model'[m
[32m+[m[32mimport PlayerModel from '../player/model'[m
 [m
 [m
 export const index = async (req: express.Request, res: express.Response) => {[m
[31m-    try {[m
[31m-      [m
[31m-      res.render('index')[m
[31m-    } catch (error) {[m
[31m-      console.log(error)[m
[31m-    }[m
[31m-  }[m
\ No newline at end of file[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { name, email, id, status } = req.session.user;[m
[32m+[m
[32m+[m[32m    const transaction = await TransactionModel.countDocuments()[m
[32m+[m[32m    const voucher = await VoucherModel.countDocuments()[m
[32m+[m[32m    const category = await CategoryModel.countDocuments()[m
[32m+[m[32m    const player = await PlayerModel.countDocuments()[m
[32m+[m
[32m+[m[32m    res.render("index", {[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m      Title: "Halaman Dashboard",[m
[32m+[m[32m      countDoc: {transaction, voucher, category, player},[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    console.log(error);[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[1mdiff --git a/src/app/dashboard/router.ts b/src/app/dashboard/router.ts[m
[1mindex e7f8785..2f76c59 100644[m
[1m--- a/src/app/dashboard/router.ts[m
[1m+++ b/src/app/dashboard/router.ts[m
[36m@@ -1,14 +1,13 @@[m
[31m-import express from 'express'[m
[31m-const router = express.Router()[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mconst router = express.Router();[m
 [m
[32m+[m[32mimport { index } from "./controller";[m
 [m
[31m-import {index} from './controller'[m
[32m+[m[32mimport { isLogin, isSession } from "@src/middleware/auth";[m
 [m
[32m+[m[32m// auth[m
[32m+[m[32mrouter.use(isLogin);[m
 [m
[32m+[m[32mrouter.get("/", index);[m
 [m
[31m-router.get('/', index)[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-export default router[m
[32m+[m[32mexport default router;[m
[1mdiff --git a/src/app/nominal/controller.ts b/src/app/nominal/controller.ts[m
[1mindex fa9798c..eea84c0 100644[m
[1m--- a/src/app/nominal/controller.ts[m
[1m+++ b/src/app/nominal/controller.ts[m
[36m@@ -15,7 +15,12 @@[m [mexport const index_view = async ([m
 [m
     const data = await NominalModel.find();[m
 [m
[31m-    res.render("admin/nominal/view_nominal", { data, Alert });[m
[32m+[m[32m    res.render("admin/nominal/view_nominal", {[m
[32m+[m[32m      data,[m
[32m+[m[32m      Alert,[m
[32m+[m[32m      Title: "Halaman Nominal",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -29,7 +34,10 @@[m [mexport const view_create = async ([m
   res: express.Response[m
 ) => {[m
   try {[m
[31m-    res.render("admin/nominal/create");[m
[32m+[m[32m    res.render("admin/nominal/create", {[m
[32m+[m[32m      Title: "Halaman Tambah Nominal",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -43,18 +51,16 @@[m [mexport const action_create = async ([m
 ) => {[m
   try {[m
     const { coinName, coinQuantity, coinPrice } = req.body;[m
[31m-[m
[31m-    const alertMessage = req.flash("alertMessage", "Berhasil Tambah Nominal");[m
[31m-    const alertStatus = req.flash("alertStatus", "success");[m
[31m-[m
[32m+[m[41m    [m
     const Nominal = await NominalModel.create({[m
       coinName,[m
       coinQuantity,[m
       price: coinPrice,[m
     });[m
     await Nominal.save();[m
[31m-[m
[31m-    const Alert = { message: alertMessage, status: alertStatus };[m
[32m+[m[41m    [m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Tambah Nominal");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
 [m
     res.redirect("/nominal");[m
   } catch (error) {[m
[36m@@ -75,7 +81,11 @@[m [mexport const view_edit = async ([m
 [m
     const nominal = await NominalModel.findById(id);[m
 [m
[31m-    res.render("admin/nominal/edit", { data: nominal });[m
[32m+[m[32m    res.render("admin/nominal/edit", {[m
[32m+[m[32m      data: nominal,[m
[32m+[m[32m      Title: "Halaman Edit Nominal",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -100,10 +110,8 @@[m [mexport const action_edit = async ([m
       runValidators: true,[m
     })[m
 [m
[31m-    const alertMessage = req.flash("alertMessage", "Berhasil Ubah Data Nominal");[m
[31m-    const alertStatus = req.flash("alertStatus", "success");[m
[31m-[m
[31m-    const Alert = { message: alertMessage, status: alertStatus };[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Ubah Data Nominal");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
 [m
     res.redirect("/nominal");[m
   } catch (error) {[m
[1mdiff --git a/src/app/nominal/model.ts b/src/app/nominal/model.ts[m
[1mindex 8545004..2b9bbb3 100644[m
[1m--- a/src/app/nominal/model.ts[m
[1m+++ b/src/app/nominal/model.ts[m
[36m@@ -3,21 +3,26 @@[m [mimport mongoose, {Schema, model} from "mongoose";[m
 [m
 const coinSchema = ['diamond', 'gold', 'silver', 'jewel'][m
 [m
[31m-const NominalSchema = new Schema({[m
[32m+[m[32mconst NominalSchema = new Schema([m
[32m+[m[32m  {[m
     coinQuantity: {[m
[31m-        type: Number,[m
[31m-        default: 0[m
[32m+[m[32m      type: Number,[m
[32m+[m[32m      default: 0,[m
     },[m
     coinName: {[m
[31m-        type: String,[m
[31m-        enum: coinSchema,[m
[31m-        required: [true, 'Nama Coin harus diisi'],[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      enum: coinSchema,[m
[32m+[m[32m      required: [true, "Nama Coin harus diisi"],[m
     },[m
     price: {[m
[31m-        type: Number,[m
[31m-        default: 0,[m
[31m-    }[m
[31m-})[m
[32m+[m[32m      type: Number,[m
[32m+[m[32m      default: 0,[m
[32m+[m[32m    },[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m  }[m
[32m+[m[32m);[m
 [m
 [m
 export default model('Nominal', NominalSchema)[m
\ No newline at end of file[m
[1mdiff --git a/src/app/nominal/router.ts b/src/app/nominal/router.ts[m
[1mindex 42c22a5..eabdaf9 100644[m
[1m--- a/src/app/nominal/router.ts[m
[1m+++ b/src/app/nominal/router.ts[m
[36m@@ -1,19 +1,27 @@[m
[31m-import express from 'express'[m
[31m-const router = express.Router()[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mconst router = express.Router();[m
 [m
[32m+[m[32mimport {[m
[32m+[m[32m  action_create,[m
[32m+[m[32m  action_delete,[m
[32m+[m[32m  action_edit,[m
[32m+[m[32m  index_view,[m
[32m+[m[32m  view_create,[m
[32m+[m[32m  view_edit,[m
[32m+[m[32m} from "./controller";[m
 [m
[31m-import {action_create, action_delete, action_edit, index_view, view_create, view_edit} from './controller'[m
[32m+[m[32mimport { isLogin, isSession } from "@src/middleware/auth";[m
[32m+[m[32m// auth[m
[32m+[m[32mrouter.use(isLogin);[m
 [m
 // views[m
[31m-router.get('/', index_view)[m
[31m-router.get('/create', view_create)[m
[31m-router.get('/edit/:id', view_edit)[m
[31m-[m
[32m+[m[32mrouter.get("/", index_view);[m
[32m+[m[32mrouter.get("/create", view_create);[m
[32m+[m[32mrouter.get("/edit/:id", view_edit);[m
 [m
 // actions[m
[31m-router.post('/create', action_create)[m
[31m-router.put('/edit/:id', action_edit)[m
[31m-router.delete('/delete/:id', action_delete)[m
[31m-[m
[32m+[m[32mrouter.post("/create", action_create);[m
[32m+[m[32mrouter.put("/edit/:id", action_edit);[m
[32m+[m[32mrouter.delete("/delete/:id", action_delete);[m
 [m
[31m-export default router[m
\ No newline at end of file[m
[32m+[m[32mexport default router;[m
[1mdiff --git a/src/app/payment/controller.ts b/src/app/payment/controller.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..9402ed4[m
[1m--- /dev/null[m
[1m+++ b/src/app/payment/controller.ts[m
[36m@@ -0,0 +1,175 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m
[32m+[m[32mimport PaymentModel from "./model";[m
[32m+[m[32mimport BankModel from "../bank/model";[m
[32m+[m
[32m+[m[32m// index[m
[32m+[m[32mexport const index_view = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const alertMessage = req.flash("alertMessage");[m
[32m+[m[32m    const alertStatus = req.flash("alertStatus");[m
[32m+[m
[32m+[m[32m    const Alert = { message: alertMessage, status: alertStatus };[m
[32m+[m
[32m+[m[32m    const data = await PaymentModel.find().populate("bank");[m
[32m+[m
[32m+[m[32m    res.render("admin/payment/view_payment", {[m
[32m+[m[32m      data,[m
[32m+[m[32m      Alert,[m
[32m+[m[32m      Title: "Halaman Pembayaran",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// create[m
[32m+[m[32mexport const view_create = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const bank = await BankModel.find();[m
[32m+[m[32m    // const payment = await PaymentModel.find();[m
[32m+[m
[32m+[m[32m    res.render("admin/payment/create", {[m
[32m+[m[32m      data: { bank },[m
[32m+[m[32m      Title: "Halaman Tambah Pembayaran",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const action_create = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { type, status, bank } = req.body;[m
[32m+[m
[32m+[m[32m    const payment = await PaymentModel.create({[m
[32m+[m[32m      type,[m
[32m+[m[32m      status,[m
[32m+[m[32m      bank,[m
[32m+[m[32m    });[m
[32m+[m[32m    await payment.save();[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Tambah Payment");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// edit[m
[32m+[m
[32m+[m[32mexport const view_edit = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m
[32m+[m[32m    const bank = await BankModel.find();[m
[32m+[m[32m    const payment = await PaymentModel.findById(id).populate("bank");[m
[32m+[m
[32m+[m[32m    res.render("admin/payment/edit", {[m
[32m+[m[32m      data: { bank, payment },[m
[32m+[m[32m      Title: "Halaman Edit Pembayaran",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const action_edit = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m[32m    const { bank, status, type } = req.body;[m
[32m+[m
[32m+[m[32m    await PaymentModel.findByIdAndUpdate([m
[32m+[m[32m      id,[m
[32m+[m[32m      { bank, status, type },[m
[32m+[m[32m      {[m
[32m+[m[32m        new: true,[m
[32m+[m[32m        runValidators: true,[m
[32m+[m[32m      }[m
[32m+[m[32m    );[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Edit data Payment");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// delete[m
[32m+[m
[32m+[m[32mexport const action_delete = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m
[32m+[m[32m    await PaymentModel.findByIdAndDelete(id);[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Hapus Payment");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// ubah status[m
[32m+[m[32mexport const action_changeStatus = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m
[32m+[m[32m    const payment = await PaymentModel.findById(id);[m
[32m+[m
[32m+[m[32m    let PaymentStatus = payment?.status === "aktif" ? "nonaktif" : "aktif";[m
[32m+[m
[32m+[m[32m    await payment?.updateOne({ status: PaymentStatus });[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Ubah Status payment");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/payment");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[1mdiff --git a/src/app/payment/model.ts b/src/app/payment/model.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..483cd62[m
[1m--- /dev/null[m
[1m+++ b/src/app/payment/model.ts[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32mimport mongoose, { Schema, model } from "mongoose";[m
[32m+[m
[32m+[m[32mconst PaymentSchema = new Schema([m
[32m+[m[32m  {[m
[32m+[m[32m    type: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Tipe Pembayaran harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m    status: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      enum: ["aktif", "nonaktif"],[m
[32m+[m[32m      default: "nonaktif",[m
[32m+[m[32m    },[m
[32m+[m[32m    bank: [[m
[32m+[m[32m      {[m
[32m+[m[32m        type: mongoose.Types.ObjectId,[m
[32m+[m[32m        ref: "Bank",[m
[32m+[m[32m      },[m
[32m+[m[32m    ],[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m  }[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mexport default model("Payment", PaymentSchema);[m
[1mdiff --git a/src/app/payment/router.ts b/src/app/payment/router.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..2c96dba[m
[1m--- /dev/null[m
[1m+++ b/src/app/payment/router.ts[m
[36m@@ -0,0 +1,32 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mconst router = express.Router();[m
[32m+[m
[32m+[m[32mimport {[m
[32m+[m[32m  index_view,[m
[32m+[m[32m  view_create,[m
[32m+[m[32m  action_create,[m
[32m+[m[32m  view_edit,[m
[32m+[m[32m  action_edit,[m
[32m+[m[32m  action_delete,[m
[32m+[m[32m  action_changeStatus,[m
[32m+[m[32m} from "./controller";[m
[32m+[m
[32m+[m
[32m+[m[32mimport { isLogin, isSession } from "@src/middleware/auth";[m
[32m+[m[32m// auth[m
[32m+[m[32mrouter.use(isLogin)[m
[32m+[m
[32m+[m[32m// views[m
[32m+[m[32mrouter.get("/", index_view);[m
[32m+[m[32mrouter.get("/create", view_create);[m
[32m+[m[32mrouter.get("/edit/:id", view_edit);[m
[32m+[m
[32m+[m[32m// // actions[m
[32m+[m[32mrouter.post("/create", action_create);[m
[32m+[m[32mrouter.put("/edit/:id", action_edit);[m
[32m+[m[32mrouter.delete("/delete/:id", action_delete);[m
[32m+[m
[32m+[m[32m// other action[m
[32m+[m[32mrouter.put("/editstatus/:id", action_changeStatus);[m
[32m+[m
[32m+[m[32mexport default router;[m
[1mdiff --git a/src/app/player/controller.ts b/src/app/player/controller.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..1d31628[m
[1m--- /dev/null[m
[1m+++ b/src/app/player/controller.ts[m
[36m@@ -0,0 +1,304 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mimport PlayerModel from "./model";[m
[32m+[m[32mimport VoucherModel from "../voucher/model";[m
[32m+[m[32mimport NominalModel from "../nominal/model";[m
[32m+[m[32mimport CategoryModel from "../category/model";[m
[32m+[m[32mimport BankModel from "../bank/model";[m
[32m+[m[32mimport PaymentModel from "../payment/model";[m
[32m+[m[32mimport TransactionModel from "../transaction/model";[m
[32m+[m[32mimport mongoose from "mongoose";[m
[32m+[m[32mimport config from "@src/config";[m
[32m+[m[32mimport fs from "fs";[m
[32m+[m[32mimport path from "path";[m
[32m+[m
[32m+[m
[32m+[m[32m// view data API[m
[32m+[m[32mexport const landingPage = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const voucher = await VoucherModel.find()[m
[32m+[m[32m      .populate("category")[m
[32m+[m[32m      .select("_id name status category thumbnail");[m
[32m+[m
[32m+[m[32m    res.status(200).json({ data: voucher });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const detailPage = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m
[32m+[m[32m    const voucher = await VoucherModel.findById(id)[m
[32m+[m[32m      .populate("category")[m
[32m+[m[32m      .populate("nominal")[m
[32m+[m[32m      .populate("user", "_id name phoneNumber");[m
[32m+[m
[32m+[m[32m    if (!voucher) {[m
[32m+[m[32m      return res.status(404).json({ message: "voucher not found.!" });[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    res.status(200).json({ data: voucher });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const getCategory = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const category = await CategoryModel.find();[m
[32m+[m
[32m+[m[32m    res.status(200).json({[m
[32m+[m[32m      data: category,[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// transaction API[m
[32m+[m[32mexport const checkout = async (req: express.Request, res: express.Response) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { accountUser, name, nominal, voucher, payment, bank } = req.body;[m
[32m+[m
[32m+[m[32m    const res_voucher: any = await VoucherModel.findById(voucher)[m
[32m+[m[32m      .select("category name _id thumbnail user")[m
[32m+[m[32m      .populate("category")[m
[32m+[m[32m      .populate("user");[m
[32m+[m[32m    if (!res_voucher) return res.status(404).json("Voucher tidak ditemukan");[m
[32m+[m
[32m+[m[32m    const res_nominal: any = await NominalModel.findById(nominal);[m
[32m+[m[32m    if (!res_nominal) return res.status(404).json("Nominal tidak ditemukan");[m
[32m+[m
[32m+[m[32m    const res_bank: any = await BankModel.findById(bank);[m
[32m+[m[32m    if (!res_bank) return res.status(404).json("Bank tidak ditemukan");[m
[32m+[m
[32m+[m[32m    const res_payment: any = await PaymentModel.findById(payment);[m
[32m+[m[32m    if (!res_payment) return res.status(404).json("Payment tidak ditemukan");[m
[32m+[m
[32m+[m[32m    // set values for payloads[m
[32m+[m[32m    let tax_amount = (10 / 100) * res_nominal.price;[m
[32m+[m[32m    let value_amount = res_nominal.price - tax_amount;[m
[32m+[m
[32m+[m[32m    const payload = new TransactionModel({[m
[32m+[m[32m      accountUser: accountUser,[m
[32m+[m[32m      name: name,[m
[32m+[m[32m      user: res_voucher.user._id,[m
[32m+[m[32m      player: req.player._id,[m
[32m+[m[32m      email: req.player.email,[m
[32m+[m[32m      tax: tax_amount,[m
[32m+[m[32m      value: value_amount,[m
[32m+[m[32m      category: res_voucher.category,[m
[32m+[m
[32m+[m[32m      historyUser: {[m
[32m+[m[32m        name: res_voucher.user?.name,[m
[32m+[m[32m        phoneNumber: res_voucher.user?.phoneNumber,[m
[32m+[m[32m      },[m
[32m+[m[32m      historyPayment: {[m
[32m+[m[32m        type: res_payment.type,[m
[32m+[m[32m        name: res_bank.name,[m
[32m+[m[32m        bankName: res_bank.nameBank,[m
[32m+[m[32m        noRekening: res_bank.noRekening,[m
[32m+[m[32m      },[m
[32m+[m
[32m+[m[32m      historyVoucherTopup: {[m
[32m+[m[32m        gameName: res_voucher.name,[m
[32m+[m[32m        category: res_voucher.category.name,[m
[32m+[m[32m        thumbnail: res_voucher.thumbnail,[m
[32m+[m[32m        coinName: res_nominal.coinName,[m
[32m+[m[32m        coinQuantity: res_nominal.coinQuantity,[m
[32m+[m[32m        Price: res_nominal.price,[m
[32m+[m[32m      },[m
[32m+[m[32m    });[m
[32m+[m
[32m+[m[32m    await payload.save();[m
[32m+[m
[32m+[m[32m    res.status(200).json({ data: payload });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const historyTransactions = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { status = "" } = req.query;[m
[32m+[m
[32m+[m[32m    let criteria: object = {};[m
[32m+[m
[32m+[m[32m    if (status.length) {[m
[32m+[m[32m      criteria = {[m
[32m+[m[32m        ...criteria,[m
[32m+[m[32m        status: {[m
[32m+[m[32m          $regex: `${status}`,[m
[32m+[m[32m          $options: "i",[m
[32m+[m[32m        },[m
[32m+[m[32m      };[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    if (req.player._id) {[m
[32m+[m[32m      criteria = { ...criteria, player: req.player._id };[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    const history = await TransactionModel.find(criteria);[m
[32m+[m
[32m+[m[32m    // kalkulasi total nilai dari value yang cocok dari criteria[m
[32m+[m[32m    const total = await TransactionModel.aggregate([[m
[32m+[m[32m      {[m
[32m+[m[32m        $match: criteria,[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        $group: {[m
[32m+[m[32m          _id: null,[m
[32m+[m[32m          value: { $sum: "$value" },[m
[32m+[m[32m        },[m
[32m+[m[32m      },[m
[32m+[m[32m    ]);[m
[32m+[m
[32m+[m[32m    // console.log("total >>>");[m
[32m+[m[32m    // console.log(total);[m
[32m+[m
[32m+[m[32m    res.status(200).json({[m
[32m+[m[32m      data: history,[m
[32m+[m[32m      totalValue: total.length ? total[0] : 0,[m
[32m+[m[32m      dataLength: history.length,[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const historyTransactionDetail = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m
[32m+[m[32m    const history = await TransactionModel.findById(id);[m
[32m+[m
[32m+[m[32m    if (!history) {[m
[32m+[m[32m      return res.status(404).json({ message: "history tidak ditemukan." });[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    res.status(200).json({ data: history });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m
[32m+[m[32m// dashboard[m
[32m+[m[32mexport const dashboard = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const count = await TransactionModel.aggregate([[m
[32m+[m[32m      {[m
[32m+[m[32m        $match: { player: req.player._id },[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        $group: {[m
[32m+[m[32m          _id: "$category",[m
[32m+[m[32m          value: { $sum: "$value" },[m
[32m+[m[32m        },[m
[32m+[m[32m      },[m
[32m+[m[32m    ]);[m
[32m+[m
[32m+[m[32m    const categories = await CategoryModel.find();[m
[32m+[m
[32m+[m[32m    categories.forEach((category) => {[m
[32m+[m[32m      count.forEach((cou) => {[m
[32m+[m[32m        if (category.id == cou._id.toString()) {[m
[32m+[m[32m          cou.name = category.name;[m
[32m+[m[32m        }[m
[32m+[m[32m      });[m
[32m+[m[32m    });[m
[32m+[m
[32m+[m[32m    const history = await TransactionModel.find({ player: req.player._id })[m
[32m+[m[32m      .populate("category")[m
[32m+[m[32m      .sort({ updatedAt: -1 });[m
[32m+[m
[32m+[m[32m    res.status(200).json({ data: history, count });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m
[32m+[m[32m// profile[m
[32m+[m[32mexport const profile = async (req: express.Request, res: express.Response) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const player: object = {[m
[32m+[m[32m      id: req.player.id,[m
[32m+[m[32m      name: req.player.name,[m
[32m+[m[32m      username: req.player.username,[m
[32m+[m[32m      email: req.player.email,[m
[32m+[m[32m      phoneNumber: req.player.phoneNumber,[m
[32m+[m[32m      avatar: req.player.avatar,[m
[32m+[m[32m    };[m
[32m+[m
[32m+[m[32m    res.status(200).json({ data: player });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const updateProfile = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { name, phoneNumber } = req.body;[m
[32m+[m
[32m+[m[32m    let temp: object = {};[m
[32m+[m[32m    // check what is the send for update[m
[32m+[m[32m    if (name) {[m
[32m+[m[32m      temp = { ...temp, name };[m
[32m+[m[32m    }[m
[32m+[m[32m    if (phoneNumber) {[m
[32m+[m[32m      temp = { ...temp, phoneNumber };[m
[32m+[m[32m    }[m
[32m+[m[32m    if (req.file) {[m
[32m+[m[32m      temp = { ...temp, avatar: `uploads/${req.file.filename}` };[m
[32m+[m
[32m+[m[32m      // check and delete last file[m
[32m+[m[32m      const player = await PlayerModel.findById(req.player._id)[m
[32m+[m[32m      let currentImage = `${path.join(__dirname, "../../public/")}${[m
[32m+[m[32m        player?.avatar[m
[32m+[m[32m      }`;[m
[32m+[m[32m      fs.existsSync(currentImage) ? fs.unlinkSync(currentImage) : "";[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    const update = await PlayerModel.findByIdAndUpdate(req.player._id, temp, {[m
[32m+[m[32m      new: true,[m
[32m+[m[32m      runValidators: true,[m
[32m+[m[32m    });[m
[32m+[m
[32m+[m[32m    const payload = {[m
[32m+[m[32m      id: update?.id,[m
[32m+[m[32m      name: update?.name,[m
[32m+[m[32m      phoneNumber: update?.phoneNumber,[m
[32m+[m[32m      avatar: update?.avatar,[m
[32m+[m[32m    };[m
[32m+[m
[32m+[m[32m    res.status(201).json({ data: payload, message: 'Berhasil Update Profile' });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    // if(error.name == 'ValidationError') {[m
[32m+[m[32m    //   return res.status(422).json({message: error.message});[m
[32m+[m[32m    // }[m
[32m+[m[32m    res.status(500).json({ message: error.message || "Internal server error" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[1mdiff --git a/src/app/player/model.ts b/src/app/player/model.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..89dfe72[m
[1m--- /dev/null[m
[1m+++ b/src/app/player/model.ts[m
[36m@@ -0,0 +1,79 @@[m
[32m+[m[32mimport mongoose, { Schema, model } from "mongoose";[m
[32m+[m[32mimport bcrypt from "bcrypt";[m
[32m+[m[32m// import express from 'express';[m
[32m+[m
[32m+[m
[32m+[m[32mconst PlayerSchema = new Schema([m
[32m+[m[32m  {[m
[32m+[m[32m    name: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Nama harus diisi"],[m
[32m+[m[32m      maxlength: [50, "Maximal 50 karakter"],[m
[32m+[m[32m      minlength: [3, "Minimal 3 karakter"],[m
[32m+[m[32m    },[m
[32m+[m[32m    username: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Username harus diisi"],[m
[32m+[m[32m      maxlength: [50, "Maximal 50 karakter"],[m
[32m+[m[32m      minlength: [3, "Minimal 3 karakter"],[m
[32m+[m[32m    },[m
[32m+[m[32m    email: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Email harus diisi"],[m
[32m+[m[32m      unique: [true, "Email tsb sudah terdaftar"],[m
[32m+[m[32m    },[m
[32m+[m[32m    password: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Password harus diisi"],[m
[32m+[m[32m      maxlength: [255, "Maximal 50 karakter"],[m
[32m+[m[32m      minlength: [8, "Minimal 8 karakter"],[m
[32m+[m[32m    },[m
[32m+[m[32m    status: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      enum: ["aktif", "nonaktif"],[m
[32m+[m[32m      default: "nonaktif",[m
[32m+[m[32m    },[m
[32m+[m[32m    phoneNumber: {[m
[32m+[m[32m      type: Number,[m
[32m+[m[32m      required: [true, "Nomor telepon harus diisi"],[m
[32m+[m[32m      maxlength: [13, "Panjang nomor telepon harus antara 9 - 13 karakter"],[m
[32m+[m[32m      minlength: [9, "Panjang nomor telepon harus antara 9 - 13 karakter"],[m
[32m+[m[32m    },[m
[32m+[m[32m    avatar: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m    },[m
[32m+[m[32m    fileName: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m    },[m
[32m+[m[32m    favorite: {[m
[32m+[m[32m      type: mongoose.Types.ObjectId,[m
[32m+[m[32m      ref: "Category",[m
[32m+[m[32m    },[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m  }[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32m// PlayerSchema.path('email').validate( function(value) {[m
[32m+[m
[32m+[m[32m// })[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32mPlayerSchema.pre("save", async function (next: any) {[m
[32m+[m[32m  const user: any = this;[m
[32m+[m[32m  if (user.isModified("password")) {[m
[32m+[m[32m    user.password = await bcrypt.hash(user.password, 15);[m
[32m+[m[32m  }[m
[32m+[m[32m  next();[m
[32m+[m[32m});[m
[32m+[m
[32m+[m
[32m+[m[32mPlayerSchema.methods.checkPassword = async function(password: string) {[m
[32m+[m[32m  const isMatch = await bcrypt.compare(password, this.password)[m
[32m+[m[32m  return isMatch[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default model("Player", PlayerSchema);[m
[1mdiff --git a/src/app/player/router.ts b/src/app/player/router.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..11e4720[m
[1m--- /dev/null[m
[1m+++ b/src/app/player/router.ts[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mconst router = express.Router();[m
[32m+[m
[32m+[m[32mimport { landingPage, detailPage, getCategory, checkout, historyTransactions, historyTransactionDetail, dashboard, profile, updateProfile } from "./controller";[m
[32m+[m
[32m+[m[32mimport {isLoginPlayer} from '../../middleware/auth'[m
[32m+[m[32mimport { uploadMiddleware } from "@src/utils/multer";[m
[32m+[m
[32m+[m
[32m+[m[32m// view & get data[m
[32m+[m[32mrouter.get("/landingpage", landingPage);[m
[32m+[m[32mrouter.get("/:id/detail", detailPage);[m
[32m+[m[32mrouter.get("/dashboard", isLoginPlayer, dashboard);[m
[32m+[m
[32m+[m[32m// get data[m
[32m+[m[32mrouter.get("/category", getCategory);[m
[32m+[m[32mrouter.get("/history/transaction", isLoginPlayer, historyTransactions);[m
[32m+[m[32mrouter.get("/history/transaction/:id", isLoginPlayer, historyTransactionDetail);[m
[32m+[m
[32m+[m
[32m+[m[32m// profile[m
[32m+[m[32mrouter.get("/profile", isLoginPlayer, profile);[m
[32m+[m[32mrouter.put("/profile", isLoginPlayer, uploadMiddleware.single('avatar'), updateProfile);[m
[32m+[m
[32m+[m
[32m+[m[32m// action need login[m
[32m+[m[32mrouter.post("/checkout", isLoginPlayer, checkout);[m
[32m+[m
[32m+[m
[32m+[m[32m// action without login[m
[32m+[m
[32m+[m
[32m+[m[32mexport default router;[m
[1mdiff --git a/src/app/transaction/controller.ts b/src/app/transaction/controller.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..10a750b[m
[1m--- /dev/null[m
[1m+++ b/src/app/transaction/controller.ts[m
[36m@@ -0,0 +1,58 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m
[32m+[m[32mimport TransactiontModel from "./model";[m
[32m+[m[32mimport config from "@src/config";[m
[32m+[m
[32m+[m[32m// index[m
[32m+[m[32mexport const index_view = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const alertMessage = req.flash("alertMessage");[m
[32m+[m[32m    const alertStatus = req.flash("alertStatus");[m
[32m+[m[32m    const Alert = { message: alertMessage, status: alertStatus };[m
[32m+[m
[32m+[m[32m    const data = await TransactiontModel.find()[m
[32m+[m[32m      .populate("historyPayment")[m
[32m+[m[32m      .populate("user")[m
[32m+[m[32m      .populate("category")[m
[32m+[m[32m      .populate("player")[m
[32m+[m[32m    // console.log(data);[m
[32m+[m
[32m+[m[32m    res.render("admin/transaction/view_transaction", {[m
[32m+[m[32m      data,[m
[32m+[m[32m      Alert,[m
[32m+[m[32m      Title: "Halaman Transaction",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m      urlImage: config.urlImage,[m
[32m+[m[32m    });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/transaction");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// edit status Transaction[m
[32m+[m[32mexport const action_changeStatus = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { id } = req.params;[m
[32m+[m[32m    const { status } = req.query;[m
[32m+[m
[32m+[m[32m    await TransactiontModel.findByIdAndUpdate(id, {[m
[32m+[m[32m      status,[m
[32m+[m[32m    });[m
[32m+[m
[32m+[m[32m    req.flash("alertMessage", "Berhasil Ubah Status Transaction");[m
[32m+[m[32m    req.flash("alertStatus", "success");[m
[32m+[m[32m    res.redirect("/transaction");[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/transaction");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[1mdiff --git a/src/app/transaction/model.ts b/src/app/transaction/model.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..3249af7[m
[1m--- /dev/null[m
[1m+++ b/src/app/transaction/model.ts[m
[36m@@ -0,0 +1,112 @@[m
[32m+[m[32mimport mongoose, { Schema, model } from "mongoose";[m
[32m+[m
[32m+[m[32m// part schema[m
[32m+[m[32mconst HistoryVoucherTopUp = {[m
[32m+[m[32m  gameName: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Nama Game harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  category: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Nama Game harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  thumbnail: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m  },[m
[32m+[m[32m  coinName: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Coin Name harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  coinQuantity: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Jumlah Coin harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  Price: {[m
[32m+[m[32m    type: Number,[m
[32m+[m[32m  },[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mconst HistoryPayment = {[m
[32m+[m[32m  name: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Nama harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  type: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Tipe pembayaran harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  bankName: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Nama Bank harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  noRekening: {[m
[32m+[m[32m    type: Number,[m
[32m+[m[32m    required: [true, "Nomor Rekening harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mconst HistoryUser = {[m
[32m+[m[32m  name: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Nama Player harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  phoneNumber: {[m
[32m+[m[32m    type: Number,[m
[32m+[m[32m    required: [true, "Nomor Telepon harus diisi"],[m
[32m+[m[32m    minlength: [9, "panjang phone number harus antara 9 - 13 karakter"],[m
[32m+[m[32m    maxlength: [13, "panjang phone number harus antara 9 - 13 karakter"],[m
[32m+[m[32m  },[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m//[m
[32m+[m
[32m+[m[32m// schema utama[m
[32m+[m[32mconst TransactionSchema = new Schema([m
[32m+[m[32m  {[m
[32m+[m[32m    name: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Nama harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m    email: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Email harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m    accountUser: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Nama Akun harus diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m    tax: {[m
[32m+[m[32m      type: Number,[m
[32m+[m[32m      default: 0,[m
[32m+[m[32m    },[m
[32m+[m[32m    value: {[m
[32m+[m[32m      type: Number,[m
[32m+[m[32m      default: 0,[m
[32m+[m[32m    },[m
[32m+[m[32m    status: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      enum: ["success", "failed", "pending"],[m
[32m+[m[32m      default: "pending",[m
[32m+[m[32m    },[m
[32m+[m[32m    player: {[m
[32m+[m[32m      type: mongoose.Types.ObjectId,[m
[32m+[m[32m      ref: "Player",[m
[32m+[m[32m    },[m
[32m+[m[32m    category: {[m
[32m+[m[32m      type: mongoose.Types.ObjectId,[m
[32m+[m[32m      ref: "Category",[m
[32m+[m[32m    },[m
[32m+[m[32m    user: {[m
[32m+[m[32m      type: mongoose.Types.ObjectId,[m
[32m+[m[32m      ref: "User",[m
[32m+[m[32m    },[m
[32m+[m[32m    historyVoucherTopup: HistoryVoucherTopUp,[m
[32m+[m[32m    historyPayment: HistoryPayment,[m
[32m+[m[32m    historyUser: HistoryUser,[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m  }[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mexport default model("Transaction", TransactionSchema);[m
[1mdiff --git a/src/app/transaction/router.ts b/src/app/transaction/router.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..f935323[m
[1m--- /dev/null[m
[1m+++ b/src/app/transaction/router.ts[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mconst router = express.Router();[m
[32m+[m
[32m+[m[32mimport {[m
[32m+[m[32m  index_view,[m
[32m+[m[32m  action_changeStatus,[m
[32m+[m[32m} from "./controller";[m
[32m+[m
[32m+[m[32mimport { isLogin, isSession } from "@src/middleware/auth";[m
[32m+[m[32m// auth[m
[32m+[m[32mrouter.use(isLogin);[m
[32m+[m
[32m+[m[32m// views[m
[32m+[m[32mrouter.get("/", index_view);[m
[32m+[m
[32m+[m[32m// // // actions[m
[32m+[m[32mrouter.put('/status/:id', action_changeStatus)[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32mexport default router;[m
[1mdiff --git a/src/app/users/controller.ts b/src/app/users/controller.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..00be0a2[m
[1m--- /dev/null[m
[1m+++ b/src/app/users/controller.ts[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m
[32m+[m[32mimport UserModel from "./model";[m
[32m+[m[32mimport bcrypt from "bcrypt";[m
[32m+[m
[32m+[m[32m// index signin[m
[32m+[m[32mexport const index_view_signin = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const alertMessage = req.flash("alertMessage");[m
[32m+[m[32m    const alertStatus = req.flash("alertStatus");[m
[32m+[m[32m    const Alert = {[m
[32m+[m[32m      message: alertMessage,[m
[32m+[m[32m      status: alertStatus,[m
[32m+[m[32m    };[m
[32m+[m
[32m+[m[32m    res.render("admin/users/view_signin", { Alert, Title: "Halaman SignIn" });[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/auth");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// action[m
[32m+[m[32mexport const action_signin = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const { email, password } = req.body;[m
[32m+[m
[32m+[m[32m    if (!email || !password) throw new Error("Please Provide Input");[m
[32m+[m
[32m+[m[32m    const check: any = await UserModel.findOne({ email });[m
[32m+[m[32m    if (!check) throw new Error("account not found");[m
[32m+[m
[32m+[m[32m    if (check?.status === "aktif") {[m
[32m+[m[32m      const checkPassword = await bcrypt.compare(password, check.password);[m
[32m+[m
[32m+[m[32m      if (checkPassword) {[m
[32m+[m[32m          req.session.user = {[m
[32m+[m[32m              id: check._id,[m
[32m+[m[32m              email: check.email,[m
[32m+[m[32m              status: check.status,[m
[32m+[m[32m              name: check.name[m
[32m+[m[32m        };[m
[32m+[m[32m        res.redirect("/");[m
[32m+[m[32m      } else {[m
[32m+[m[32m        req.flash("alertMessage", "Password Invalid");[m
[32m+[m[32m        req.flash("alertStatus", "danger");[m
[32m+[m[32m        res.redirect("/auth");[m
[32m+[m[32m      }[m
[32m+[m[32m    } else {[m
[32m+[m[32m      req.flash("alertMessage", "Mohon maaf status akun anda belum aktif");[m
[32m+[m[32m      req.flash("alertMessage alertStatus", "inavalid", "danger");[m
[32m+[m[32m      res.redirect("/auth");[m
[32m+[m[32m    }[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    req.flash("alertMessage", `${error.message}`);[m
[32m+[m[32m    req.flash("alertStatus", "danger");[m
[32m+[m[32m    res.redirect("/auth");[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const action_logout = async (req: express.Request, res: express.Response) => {[m
[32m+[m[32m  req.session.user = null;[m
[32m+[m[32m  console.log('req.session.user')[m
[32m+[m[32m  console.log(req.session.user)[m
[32m+[m[32m  res.redirect('/auth');[m
[32m+[m[32m}[m
[1mdiff --git a/src/app/users/model.ts b/src/app/users/model.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..e783b43[m
[1m--- /dev/null[m
[1m+++ b/src/app/users/model.ts[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32mimport mongoose, { Schema, model } from "mongoose";[m
[32m+[m
[32m+[m[32mconst UserSchema = new Schema({[m
[32m+[m[32m  name: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Tipe nama harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  email: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Email harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  password: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    required: [true, "Password harus diisi"],[m
[32m+[m[32m  },[m
[32m+[m[32m  status: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    enum: ["aktif", "nonaktif"],[m
[32m+[m[32m    default: 'nonaktif',[m
[32m+[m[32m  },[m
[32m+[m[32m  role: {[m
[32m+[m[32m    type: String,[m
[32m+[m[32m    enum: ["admin", "user"],[m
[32m+[m[32m    default: 'admin',[m
[32m+[m[32m    },[m
[32m+[m[32m    phoneNumber: {[m
[32m+[m[32m        type: Number,[m
[32m+[m[32m        required: [true, "Nomor telepon harus diisi"][m
[32m+[m[32m  }[m
[32m+[m[32m}, {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mexport default model("User", UserSchema);[m
[1mdiff --git a/src/app/users/router.ts b/src/app/users/router.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..5d45f78[m
[1m--- /dev/null[m
[1m+++ b/src/app/users/router.ts[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32mimport express from "express";[m
[32m+[m[32mconst router = express.Router();[m
[32m+[m
[32m+[m[32mimport { index_view_signin, action_signin, action_logout } from "./controller";[m
[32m+[m[32mimport { isSession, isLogin } from "@src/middleware/auth";[m
[32m+[m
[32m+[m[32m// views[m
[32m+[m[32mrouter.get("/", isSession, index_view_signin);[m
[32m+[m
[32m+[m[32m// actions[m
[32m+[m[32mrouter.post("/", isSession, action_signin);[m
[32m+[m[32mrouter.post("/logout", action_logout);[m
[32m+[m
[32m+[m[32mexport default router;[m
[1mdiff --git a/src/app/voucher/controller.ts b/src/app/voucher/controller.ts[m
[1mindex ec35769..611bbc7 100644[m
[1m--- a/src/app/voucher/controller.ts[m
[1m+++ b/src/app/voucher/controller.ts[m
[36m@@ -1,6 +1,3 @@[m
[31m-// import path from "path";[m
[31m-// import config from "../../config/index";[m
[31m-// import fs from "fs";[m
 import express from "express";[m
 [m
 import VoucherModel from "./model";[m
[36m@@ -19,13 +16,21 @@[m [mexport const index_view = async ([m
     const alertMessage = req.flash("alertMessage");[m
     const alertStatus = req.flash("alertStatus");[m
 [m
[31m-    const Alert = { message: alertMessage, status: alertStatus };[m
[32m+[m[32m    const Alert = {[m
[32m+[m[32m      message: alertMessage,[m
[32m+[m[32m      status: alertStatus,[m
[32m+[m[32m    };[m
 [m
     const data = await VoucherModel.find()[m
       .populate("category")[m
       .populate("nominal");[m
 [m
[31m-    res.render("admin/voucher/view_voucher", { data, Alert });[m
[32m+[m[32m    res.render("admin/voucher/view_voucher", {[m
[32m+[m[32m      data,[m
[32m+[m[32m      Alert,[m
[32m+[m[32m      Title: "Halaman Voucher",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -42,7 +47,11 @@[m [mexport const view_create = async ([m
     const category = await CategoryModel.find();[m
     const nominal = await NominalModel.find();[m
 [m
[31m-    res.render("admin/voucher/create", { data: { category, nominal } });[m
[32m+[m[32m    res.render("admin/voucher/create", {[m
[32m+[m[32m      data: { category, nominal },[m
[32m+[m[32m      Title: "Halaman Tambah Voucher",[m
[32m+[m[32m      userName: req.session.user.name,[m
[32m+[m[32m    });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
     req.flash("alertStatus", "danger");[m
[36m@@ -91,6 +100,10 @@[m [mexport const view_edit = async ([m
     const voucher = await VoucherModel.findById(id)[m
       .populate("category")[m
       .populate("nominal");[m
[32m+[m[41m    [m
[32m+[m
[32m+[m[41m    [m
[32m+[m[41m  [m
 [m
     res.render("admin/voucher/edit", {[m
       data: {[m
[36m@@ -99,6 +112,8 @@[m [mexport const view_edit = async ([m
         nominal,[m
         urlImage: config.urlImage,[m
       },[m
[32m+[m[32m      Title: "Halaman Edit Voucher",[m
[32m+[m[32m      userName: req.session.user.name,[m
     });[m
   } catch (error) {[m
     req.flash("alertMessage", `${error.message}`);[m
[36m@@ -120,7 +135,7 @@[m [mexport const action_edit = async ([m
     let currentImage = `${path.join(__dirname, "../../public/")}${[m
       voucher?.thumbnail[m
     }`;[m
[31m-    if (fs.existsSync(currentImage)) {[m
[32m+[m[32m    if ( req.file && fs.existsSync(currentImage)) {[m
       fs.unlinkSync(currentImage);[m
     }[m
 [m
[36m@@ -131,7 +146,7 @@[m [mexport const action_edit = async ([m
         nominal,[m
         name,[m
         status,[m
[31m-        thumbnail: req.file ? `uploads/${req.file.filename}` : currentImage,[m
[32m+[m[32m        thumbnail: req?.file ? `uploads/${req?.file?.filename}` : voucher?.thumbnail,[m
       },[m
       {[m
         new: true,[m
[36m@@ -181,7 +196,6 @@[m [mexport const action_delete = async ([m
   }[m
 };[m
 [m
[31m-[m
 // ubah status[m
 export const action_changeStatus = async ([m
   req: express.Request,[m
[36m@@ -192,9 +206,9 @@[m [mexport const action_changeStatus = async ([m
 [m
     const voucher = await VoucherModel.findById(id);[m
 [m
[31m-    let vocuherStatus = voucher?.status === 'aktif' ? 'nonaktif' : 'aktif'[m
[32m+[m[32m    let vocuherStatus = voucher?.status === "aktif" ? "nonaktif" : "aktif";[m
 [m
[31m-    await voucher?.updateOne({status: vocuherStatus})[m
[32m+[m[32m    await voucher?.updateOne({ status: vocuherStatus });[m
 [m
     req.flash("alertMessage", "Berhasil Ubah Status Voucher");[m
     req.flash("alertStatus", "success");[m
[1mdiff --git a/src/app/voucher/model.ts b/src/app/voucher/model.ts[m
[1mindex bd9aa21..91f4656 100644[m
[1m--- a/src/app/voucher/model.ts[m
[1m+++ b/src/app/voucher/model.ts[m
[36m@@ -1,31 +1,37 @@[m
 import mongoose, {Schema, model} from "mongoose";[m
 [m
 [m
[31m-const VoucherSchema = new Schema({[m
[31m-   name: {[m
[31m-    type: String,[m
[31m-    required: [true, 'Nama Game Harus Diisi'][m
[31m-   },[m
[31m-   status: {[m
[31m-    type: String,[m
[31m-    enum: ['aktif', 'nonaktif'],[m
[31m-    default: 'nonaktif'[m
[31m-   },[m
[31m-   thumbnail: String,[m
[31m-   category: {[m
[31m-    type: mongoose.Types.ObjectId,[m
[31m-    ref: 'Category'[m
[31m-   },[m
[31m-   nominal: [{[m
[31m-    type: mongoose.Types.ObjectId,[m
[31m-    ref: 'Nominal'[m
[31m-   }],[m
[31m-   user: {[m
[31m-    type: Schema.Types.ObjectId,[m
[31m-    ref: 'User'[m
[31m-   }[m
[31m-   [m
[31m-})[m
[32m+[m[32mconst VoucherSchema = new Schema([m
[32m+[m[32m  {[m
[32m+[m[32m    name: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      required: [true, "Nama Game Harus Diisi"],[m
[32m+[m[32m    },[m
[32m+[m[32m    status: {[m
[32m+[m[32m      type: String,[m
[32m+[m[32m      enum: ["aktif", "nonaktif"],[m
[32m+[m[32m      default: "nonaktif",[m
[32m+[m[32m    },[m
[32m+[m[32m    thumbnail: String,[m
[32m+[m[32m    category: {[m
[32m+[m[32m      type: mongoose.Types.ObjectId,[m
[32m+[m[32m      ref: "Category",[m
[32m+[m[32m    },[m
[32m+[m[32m    nominal: [[m
[32m+[m[32m      {[m
[32m+[m[32m        type: mongoose.Types.ObjectId,[m
[32m+[m[32m        ref: "Nominal",[m
[32m+[m[32m      },[m
[32m+[m[32m    ],[m
[32m+[m[32m    user: {[m
[32m+[m[32m      type: Schema.Types.ObjectId,[m
[32m+[m[32m      ref: "User",[m
[32m+[m[32m    },[m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m    timestamps: true,[m
[32m+[m[32m  }[m
[32m+[m[32m);[m
 [m
 [m
 export default model('Voucher', VoucherSchema)[m
\ No newline at end of file[m
[1mdiff --git a/src/app/voucher/router.ts b/src/app/voucher/router.ts[m
[1mindex dbc2a33..5a60cff 100644[m
[1m--- a/src/app/voucher/router.ts[m
[1m+++ b/src/app/voucher/router.ts[m
[36m@@ -2,16 +2,20 @@[m [mimport express from "express";[m
 const router = express.Router();[m
 [m
 import {[m
[31m-    index_view,[m
[31m-    view_create,[m
[32m+[m[32m  index_view,[m
[32m+[m[32m  view_create,[m
   action_create,[m
   view_edit,[m
   action_edit,[m
   action_delete,[m
[31m-  action_changeStatus[m
[32m+[m[32m  action_changeStatus,[m
 } from "./controller";[m
 import { uploadMiddleware as Upload } from "../../utils/multer";[m
 [m
[32m+[m[32mimport { isLogin, isSession } from "@src/middleware/auth";[m
[32m+[m
[32m+[m[32m// auth[m
[32m+[m[32mrouter.use(isLogin);[m
 [m
 // views[m
 router.get("/", index_view);[m
[36m@@ -19,14 +23,11 @@[m [mrouter.get("/create", view_create);[m
 router.get("/edit/:id", view_edit);[m
 [m
 // // actions[m
[31m-router.post("/create", Upload.single('image') , action_create);[m
[31m-router.put("/edit/:id", Upload.single('image'), action_edit);[m
[32m+[m[32mrouter.post("/create", Upload.single("image"), action_create);[m
[32m+[m[32mrouter.put("/edit/:id", Upload.single("image"), action_edit);[m
 router.delete("/delete/:id", action_delete);[m
 [m
 // other action[m
 router.put("/editstatus/:id", action_changeStatus);[m
 [m
[31m-[m
[31m-[m
[31m-[m
 export default router;[m
[1mdiff --git a/src/config/index.ts b/src/config/index.ts[m
[1mindex 7197c35..12e08c9 100644[m
[1m--- a/src/config/index.ts[m
[1m+++ b/src/config/index.ts[m
[36m@@ -1,13 +1,28 @@[m
[32m+[m[32m// import { cleanEnv, str } from 'envalid';[m
 import { config } from "dotenv";[m
 import path from "path";[m
 [m
 config({ path: path.resolve(__dirname, "../../env/development.env") })[m
 [m
[31m-[m
[31m-[m
 export = {[m
   // rootPath: path.resolve(__dirname, '..'),[m
   urlDb: process.env.URL_DB || "",[m
[31m-  urlImage: process.env.URL_IMAGE_HOST || ""[m
[32m+[m[32m  urlImage: process.env.URL_IMAGE_HOST || "",[m
[32m+[m[32m  jwtSecret: process.env.JWT_SECRET || "",[m
 };[m
 [m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m// envalid version[m
[32m+[m[32m// Definisikan skema env sesuai kebutuhan[m
[32m+[m[32m// const env = cleanEnv(process.env, {}, {[m
[32m+[m[32m// })[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[41m+[m
[1mdiff --git a/src/middleware/auth.ts b/src/middleware/auth.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..24848f5[m
[1m--- /dev/null[m
[1m+++ b/src/middleware/auth.ts[m
[36m@@ -0,0 +1,68 @@[m
[32m+[m[32mimport express, { Request } from "express";[m
[32m+[m[32mimport UserModel from "../app/users/model";[m
[32m+[m[32mimport PlayerModel from "../app/player/model";[m
[32m+[m[32mimport jwt from "jsonwebtoken";[m
[32m+[m[32mimport config from "@src/config";[m
[32m+[m
[32m+[m[32m// middleware[m
[32m+[m[32mexport const isLogin = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response,[m
[32m+[m[32m  next: express.NextFunction[m
[32m+[m[32m) => {[m
[32m+[m[32m  if (!req.session.user) {[m
[32m+[m[32m    req.flash("alertMessage", "Session anda telah habis silakan login kembali");[m
[32m+[m[32m    req.flash("alertStatus", "warning");[m
[32m+[m[32m    res.redirect("/auth");[m
[32m+[m[32m  } else {[m
[32m+[m[32m    next();[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mexport const isSession = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response,[m
[32m+[m[32m  next: express.NextFunction[m
[32m+[m[32m) => {[m
[32m+[m[32m  if (req.session.user) {[m
[32m+[m[32m    res.redirect("/");[m
[32m+[m[32m  } else {[m
[32m+[m[32m    next();[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32m// user player[m
[32m+[m
[32m+[m[32mexport const isLoginPlayer = async ([m
[32m+[m[32m  req: express.Request,[m
[32m+[m[32m  res: express.Response,[m
[32m+[m[32m  next: express.NextFunction[m
[32m+[m[32m) => {[m
[32m+[m[32m  try {[m
[32m+[m[32m    const header = req.headers.authorization;[m
[32m+[m
[32m+[m[32m    let token: any = '';[m
[32m+[m[32m    if (header && header.startsWith("Bearer")) {[m
[32m+[m[32m      token = header.split(" ")[1];[m
[32m+[m[41m      [m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    // console.log(config.jwtSecret);[m
[32m+[m[32m    // console.log(token);[m
[32m+[m[32m    const result: any = jwt.verify(token, config.jwtSecret)[m
[32m+[m[41m    [m
[32m+[m[32m    // console.log('result >>>')[m
[32m+[m[32m    // console.log(result)[m
[32m+[m
[32m+[m[32m    const player = await PlayerModel.findById(result.id);[m
[32m+[m[32m    if (!player) throw new Error();[m
[32m+[m
[32m+[m[32m    req.player = player;[m
[32m+[m[32m    req.token = token;[m
[32m+[m
[32m+[m
[32m+[m[32m    next();[m
[32m+[m[32m  } catch (error) {[m
[32m+[m[32m    res.status(401).json({ message: "not authorized this route" });[m
[32m+[m[32m  }[m
[32m+[m[32m};[m
[1mdiff --git a/src/public/css/custom.css b/src/public/css/custom.css[m
[1mindex 1bc3799..49af35f 100644[m
[1m--- a/src/public/css/custom.css[m
[1m+++ b/src/public/css/custom.css[m
[36m@@ -8,4 +8,7 @@[m
     -webkit-user-select: none;[m
 }[m
 [m
[41m+[m
[41m+[m
[41m+[m
     [m
\ No newline at end of file[m
[1mdiff --git a/src/public/uploads/1.png b/src/public/uploads/1.png[m
[1mnew file mode 100644[m
[1mindex 0000000..7470c35[m
Binary files /dev/null and b/src/public/uploads/1.png differ
[1mdiff --git a/src/public/uploads/2.png b/src/public/uploads/2.png[m
[1mnew file mode 100644[m
[1mindex 0000000..a016fd0[m
Binary files /dev/null and b/src/public/uploads/2.png differ
[1mdiff --git a/src/public/uploads/3.png b/src/public/uploads/3.png[m
[1mnew file mode 100644[m
[1mindex 0000000..49e5e18[m
Binary files /dev/null and b/src/public/uploads/3.png differ
[1mdiff --git a/src/public/uploads/30174127-profile.jpg b/src/public/uploads/30174127-profile.jpg[m
[1mdeleted file mode 100644[m
[1mindex 71987fa..0000000[m
Binary files a/src/public/uploads/30174127-profile.jpg and /dev/null differ
[1mdiff --git a/src/public/uploads/4.png b/src/public/uploads/4.png[m
[1mnew file mode 100644[m
[1mindex 0000000..bd4e354[m
Binary files /dev/null and b/src/public/uploads/4.png differ
[1mdiff --git a/src/public/uploads/5.png b/src/public/uploads/5.png[m
[1mnew file mode 100644[m
[1mindex 0000000..0d0af33[m
Binary files /dev/null and b/src/public/uploads/5.png differ
[1mdiff --git a/src/public/uploads/68540321-OIP (2).jpg b/src/public/uploads/68540321-OIP (2).jpg[m
[1mnew file mode 100644[m
[1mindex 0000000..8f89406[m
Binary files /dev/null and b/src/public/uploads/68540321-OIP (2).jpg differ
[1mdiff --git a/src/public/uploads/80348384-OIP.jpg b/src/public/uploads/80348384-OIP.jpg[m
[1mnew file mode 100644[m
[1mindex 0000000..5362812[m
Binary files /dev/null and b/src/public/uploads/80348384-OIP.jpg differ
[1mdiff --git a/src/public/uploads/87753414-OIP (2).jpg b/src/public/uploads/87753414-OIP (2).jpg[m
[1mnew file mode 100644[m
[1mindex 0000000..8f89406[m
Binary files /dev/null and b/src/public/uploads/87753414-OIP (2).jpg differ
[1mdiff --git a/src/views/admin/bank/create.ejs b/src/views/admin/bank/create.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..35983f3[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/bank/create.ejs[m
[36m@@ -0,0 +1,96 @@[m
[32m+[m[32m<%- include('../../partials/head.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/navbar.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/sidebar.ejs') %>[m
[32m+[m
[32m+[m[32m<!--  -->[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <section class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1>Bank</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/Bank">Bank</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Tambah</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-12">[m
[32m+[m[32m          <div class="card card-primary">[m
[32m+[m[32m            <div class="card-header">[m
[32m+[m[32m              <h3 class="card-title">Form Tambah Bank</h3>[m
[32m+[m[32m            </div>[m
[32m+[m
[32m+[m[32m            <!-- form -->[m
[32m+[m[32m            <form[m
[32m+[m[32m              action="/bank/create"[m
[32m+[m[32m              method="post"[m
[32m+[m[32m            >[m
[32m+[m[32m              <div class="card-body">[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="name">Nama Pemilik</label>[m
[32m+[m[32m                  <input[m
[32m+[m[32m                    type="text"[m
[32m+[m[32m                    class="form-control"[m
[32m+[m[32m                    id="name"[m
[32m+[m[32m                    name="name"[m
[32m+[m[32m                    placeholder="Masukan Nama Pemilik"[m
[32m+[m[32m                    required[m
[32m+[m[32m                  />[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="nameBank">Nama Bank</label>[m
[32m+[m[32m                  <select class="select2 form-control" name="nameBank" required>[m
[32m+[m[32m                    <option value="" selected disabled>Pilih Nama Bank</option>[m
[32m+[m[32m                    <option value="BRI">BRI</option>[m
[32m+[m[32m                    <option value="BCA">BCA</option>[m
[32m+[m[32m                    <option value="MANDIRI">MANDIRI</option>[m
[32m+[m[32m                    <option value="BNI">BNI</option>[m
[32m+[m[32m                    <option value="DANAMON">DANAMON</option>[m
[32m+[m[32m                  </select>[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="noRekening">No Rekening</label>[m
[32m+[m[32m                  <input[m
[32m+[m[32m                    type="number"[m
[32m+[m[32m                    class="form-control"[m
[32m+[m[32m                    id="noRekening"[m
[32m+[m[32m                    name="noRekening"[m
[32m+[m[32m                    placeholder="Masukan Nomor Rekening"[m
[32m+[m[32m                    required[m
[32m+[m[32m                  />[m
[32m+[m[32m                </div>[m
[32m+[m[32m              </div>[m
[32m+[m[32m              <div class="card-footer">[m
[32m+[m[32m                <button type="submit" class="btn btn-primary">Simpan</button>[m
[32m+[m[32m              </div>[m
[32m+[m[32m            </form>[m
[32m+[m[32m            <!-- /form -->[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--  -->[m
[32m+[m
[32m+[m[32m<%- include('../../partials/footer.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/script.ejs') %>[m
[1mdiff --git a/src/views/admin/bank/edit.ejs b/src/views/admin/bank/edit.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..d542372[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/bank/edit.ejs[m
[36m@@ -0,0 +1,116 @@[m
[32m+[m[32m<%- include('../../partials/head.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/navbar.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/sidebar.ejs') %>[m
[32m+[m
[32m+[m[32m<!--  -->[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <section class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1>Bank</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/bank">Bank</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Edit</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-12">[m
[32m+[m[32m          <div class="card card-primary">[m
[32m+[m[32m            <div class="card-header">[m
[32m+[m[32m              <h3 class="card-title">Form Edit Bank</h3>[m
[32m+[m[32m            </div>[m
[32m+[m
[32m+[m[32m            <!-- form -->[m
[32m+[m[32m            <form action="/bank/edit/<%= data.bank._id %>?_method=PUT" method="post">[m
[32m+[m[32m              <div class="card-body">[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="name">Nama Pemilik</label>[m
[32m+[m[32m                  <input[m
[32m+[m[32m                    type="text"[m
[32m+[m[32m                    class="form-control"[m
[32m+[m[32m                    id="name"[m
[32m+[m[32m                    name="name"[m
[32m+[m[32m                    placeholder="Masukan Nama Pemilik"[m
[32m+[m[32m                    required[m
[32m+[m[32m                    value="<%= data.bank.name %>"[m
[32m+[m[32m                  />[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="nameBank">Nama Bank</label>[m
[32m+[m[32m                  <select class="select2 form-control" name="nameBank">[m
[32m+[m[32m                    <option value="<%= data?.bank?.nameBank%>" selected><%= data?.bank?.nameBank %></option>[m
[32m+[m[32m                    <% data.option.forEach((bankName, index) => { %>[m
[32m+[m[32m                      <% if (bankName !== data?.bank?.nameBank) { %>[m
[32m+[m[32m                       <option value="<%= bankName %>"><%= bankName %></option>[m
[32m+[m[32m                      <% } %>[m
[32m+[m[32m                    <% }) %>[m
[32m+[m[32m                  </select>[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="noRekening">No Rekening</label>[m
[32m+[m[32m                  <input[m
[32m+[m[32m                    type="number"[m
[32m+[m[32m                    class="form-control"[m
[32m+[m[32m                    id="noRekening"[m
[32m+[m[32m                    name="noRekening"[m
[32m+[m[32m                    placeholder="Masukan Nomor Rekening"[m
[32m+[m[32m                    required[m
[32m+[m[32m                    value="<%= data.bank.noRekening %>"[m
[32m+[m[32m                  />[m
[32m+[m[32m                </div>[m
[32m+[m[32m              </div>[m
[32m+[m[32m              <div class="card-footer">[m
[32m+[m[32m                <button type="submit" class="btn btn-primary">Simpan</button>[m
[32m+[m[32m              </div>[m
[32m+[m[32m            </form>[m
[32m+[m
[32m+[m[32m            <!-- /form -->[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--  -->[m
[32m+[m
[32m+[m[32m<%- include('../../partials/footer.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/script.ejs') %>[m
[32m+[m
[32m+[m[32m<script>[m
[32m+[m[32m  function readUrl(input) {[m
[32m+[m[32m    if (input.files && input.files[0]) {[m
[32m+[m[32m      const reader = new FileReader()[m
[32m+[m
[32m+[m[32m      reader.onload = function (e) {[m
[32m+[m[32m        $('#preview').attr('src', e.target.result)[m
[32m+[m[32m        $('#preview').attr('width', '20%')[m
[32m+[m[32m        $('#preview').attr('height', '20%')[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      reader.readAsDataURL(input.files[0])[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  $('#image').change(function () {[m
[32m+[m[32m    readUrl(this)[m
[32m+[m[32m  })[m
[32m+[m[32m</script>[m
[1mdiff --git a/src/views/admin/bank/table.ejs b/src/views/admin/bank/table.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..30f8d67[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/bank/table.ejs[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32m<table id="example2" class="table table-bordered table-hover">[m
[32m+[m[32m  <!-- head -->[m
[32m+[m[32m  <thead>[m
[32m+[m[32m    <tr>[m
[32m+[m[32m      <th>No</th>[m
[32m+[m[32m      <th>Nama Pemilik</th>[m
[32m+[m[32m      <th>Nama Bank</th>[m
[32m+[m[32m      <th>Nomor Rekening</th>[m
[32m+[m[32m      <th>Action</th>[m
[32m+[m[32m    </tr>[m
[32m+[m[32m  </thead>[m
[32m+[m[32m  <tbody>[m
[32m+[m[32m    <% data.forEach((data, index) => { %>[m
[32m+[m[32m    <tr>[m
[32m+[m[32m      <td><%= index + 1 %></td>[m
[32m+[m[32m      <td><%= data.name %></td>[m
[32m+[m[32m      <td><%= data.nameBank %></td>[m
[32m+[m[32m      <td><%= data.noRekening %></td>[m
[32m+[m[41m      [m
[32m+[m
[32m+[m[32m      <!-- action -->[m
[32m+[m[32m      <td>[m
[32m+[m[32m        <form action="/bank/delete/<%= data._id %>?_method=DELETE" method="post" class="d-inline-block">[m
[32m+[m[32m          <a href=<%- "/bank/edit/" + data._id %> class="btn btn-warning btn-sm[m
[32m+[m[32m">[m
[32m+[m[32m            <i class="fas fa-pencil-alt"></i>[m
[32m+[m[32m            Edit</a>[m
[32m+[m[32m          <button class="btn btn-danger btn-sm" type="submit">[m
[32m+[m[32m            <i class="fas fa-trash"></i> Hapus[m
[32m+[m[32m          </button>[m
[32m+[m[32m        </form>[m
[32m+[m[32m      </td>[m
[32m+[m[32m    </tr>[m
[32m+[m[32m    <% }) %>[m
[32m+[m[32m  </tbody>[m
[32m+[m[32m</table>[m
\ No newline at end of file[m
[1mdiff --git a/src/views/admin/bank/view_bank.ejs b/src/views/admin/bank/view_bank.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..a199fb4[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/bank/view_bank.ejs[m
[36m@@ -0,0 +1,61 @@[m
[32m+[m[32m<%- include('../../partials/head.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/navbar.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/sidebar.ejs') %>[m
[32m+[m
[32m+[m[32m<!-- Content Wrapper. Contains page content -->[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <section class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1>Bank</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Bank</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <%- include('../../partials/alert.ejs') %>[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-12">[m
[32m+[m[32m          <!-- /.card -->[m
[32m+[m[32m          <div class="card">[m
[32m+[m[32m            <div class="card-header">[m
[32m+[m[32m              <h3 class="card-title">[m
[32m+[m[32m                <a href="/bank/create" class="btn btn-primary">[m
[32m+[m[32m                  <i class="nav-icon far fa-plus-square mr-1"></i>[m
[32m+[m[32m                  Tambah[m
[32m+[m[32m                </a>[m
[32m+[m[32m              </h3>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <!-- /.card-header -->[m
[32m+[m[32m            <div class="card-body">[m
[32m+[m[32m                <%- include('./table.ejs') %>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <!-- /.card-body -->[m
[32m+[m[32m          </div>[m
[32m+[m
[32m+[m[32m          <!-- /.card -->[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--  -->[m
[32m+[m
[32m+[m[32m<%- include('../../partials/footer.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/script.ejs') %>[m
[1mdiff --git a/src/views/admin/dashboard/view_dashboard.ejs b/src/views/admin/dashboard/view_dashboard.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..d1636ed[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/dashboard/view_dashboard.ejs[m
[36m@@ -0,0 +1,105 @@[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <div class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1 class="m-0">Dashboard</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Dashboard v1</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </div>[m
[32m+[m[32m  <!-- /.content-header -->[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <!-- Small boxes (Stat box) -->[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <!--  -->[m
[32m+[m[32m        <div class="col-lg-3 col-6">[m
[32m+[m[32m          <!-- small box -->[m
[32m+[m[32m          <div class="small-box bg-info">[m
[32m+[m[32m            <div class="inner">[m
[32m+[m[32m              <h3><%= countDoc.transaction %></h3>[m
[32m+[m
[32m+[m[32m              <p>Transaksi</p>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="icon">[m
[32m+[m[32m              <i class="ion ion-bag"></i>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <a href="/transaction" class="small-box-footer"[m
[32m+[m[32m              >Lihat <i class="fas fa-arrow-circle-right"></i[m
[32m+[m[32m            ></a>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- ./col -->[m
[32m+[m[32m        <div class="col-lg-3 col-6">[m
[32m+[m[32m          <!-- small box -->[m
[32m+[m[32m          <div class="small-box bg-success">[m
[32m+[m[32m            <div class="inner">[m
[32m+[m[32m              <h3><%= countDoc.voucher %></h3>[m
[32m+[m
[32m+[m[32m              <p>Voucher</p>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="icon">[m
[32m+[m[32m              <i class="ion ion-stats-bars"></i>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <a href="/voucher" class="small-box-footer"[m
[32m+[m[32m              >Lihat <i class="fas fa-arrow-circle-right"></i[m
[32m+[m[32m            ></a>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- ./col -->[m
[32m+[m[32m        <div class="col-lg-3 col-6">[m
[32m+[m[32m          <!-- small box -->[m
[32m+[m[32m          <div class="small-box bg-warning">[m
[32m+[m[32m            <div class="inner">[m
[32m+[m[32m              <h3><%= countDoc.player %></h3>[m
[32m+[m
[32m+[m[32m              <p>Pengguna</p>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="icon">[m
[32m+[m[32m              <i class="ion ion-person-add"></i>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <a href="/player" class="small-box-footer"[m
[32m+[m[32m              >Lihat <i class="fas fa-arrow-circle-right"></i[m
[32m+[m[32m            ></a>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- ./col -->[m
[32m+[m[32m        <div class="col-lg-3 col-6">[m
[32m+[m[32m          <!-- small box -->[m
[32m+[m[32m          <div class="small-box bg-danger">[m
[32m+[m[32m            <div class="inner">[m
[32m+[m[32m              <h3><%= countDoc.category %></h3>[m
[32m+[m
[32m+[m[32m              <p>Category</p>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="icon">[m
[32m+[m[32m              <i class="ion ion-pie-graph"></i>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <a href="/category" class="small-box-footer"[m
[32m+[m[32m              >Lihat <i class="fas fa-arrow-circle-right"></i[m
[32m+[m[32m            ></a>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!--  -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!-- /.content-wrapper -->[m
[1mdiff --git a/src/views/admin/nominal/create.ejs b/src/views/admin/nominal/create.ejs[m
[1mindex b1d8868..5e76788 100644[m
[1m--- a/src/views/admin/nominal/create.ejs[m
[1m+++ b/src/views/admin/nominal/create.ejs[m
[36m@@ -36,6 +36,7 @@[m [minclude('../../partials/sidebar.ejs') %>[m
             <!-- form -->[m
             <form action="/nominal/create" method="post">[m
               <div class="card-body">[m
[32m+[m[32m                <!--  -->[m
                 <div class="form-group">[m
                   <label>Nama Coin</label>[m
                   <select[m
[1mdiff --git a/src/views/admin/payment/create.ejs b/src/views/admin/payment/create.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..299acd7[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/payment/create.ejs[m
[36m@@ -0,0 +1,100 @@[m
[32m+[m[32m<%- include('../../partials/head.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/navbar.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/sidebar.ejs') %>[m
[32m+[m
[32m+[m[32m<!--  -->[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <section class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1>Payment</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/category">Payment</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Tambah</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-12">[m
[32m+[m[32m          <div class="card card-primary">[m
[32m+[m[32m            <div class="card-header">[m
[32m+[m[32m              <h3 class="card-title">Form Tambah Payment</h3>[m
[32m+[m[32m            </div>[m
[32m+[m
[32m+[m[32m            <!-- form -->[m
[32m+[m[32m            <form action="/payment/create" method="post">[m
[32m+[m[32m              <div class="card-body">[m
[32m+[m[32m                <!--  -->[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="type">Masukan Tipe Payment</label>[m
[32m+[m[32m                  <input[m
[32m+[m[32m                    type="text"[m
[32m+[m[32m                    class="form-control"[m
[32m+[m[32m                    id="type"[m
[32m+[m[32m                    name="type"[m
[32m+[m[32m                    required[m
[32m+[m[32m                    placeholder="Masukan Tipe Pembayaran"[m
[32m+[m[32m                  />[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="status">Status</label>[m
[32m+[m[32m                  <select class="select2 form-control" name="status" required>[m
[32m+[m[32m                    <option value="" selected disabled>Pilih Status</option>[m
[32m+[m[32m                    <option value="aktif">Aktif</option>[m
[32m+[m[32m                    <option value="nonaktif">Nonaktif</option>[m
[32m+[m[32m                  </select>[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group select2-blue">[m
[32m+[m[32m                  <label>Bank</label>[m
[32m+[m[32m                  <select[m
[32m+[m[32m                    name="bank"[m
[32m+[m[32m                    class="form-control select2"[m
[32m+[m[32m                    style="width: 100%"[m
[32m+[m[32m                    required[m
[32m+[m[32m                    multiple[m
[32m+[m[32m                    data-placeholder="Pilih Bank"[m
[32m+[m[32m                  >[m
[32m+[m[32m                    <% data.bank.forEach((bank, index) => { %>[m
[32m+[m[32m                    <option value="<%= bank._id %>" >[m
[32m+[m[32m                      <td><%= bank.name %></td>[m
[32m+[m[32m                      <td><%= bank.nameBank %></td>[m
[32m+[m[32m                      <td><%= bank.noRekening %></td>[m
[32m+[m[32m                    </option>[m
[32m+[m[32m                    <% }) %>[m
[32m+[m[32m                  </select>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <!--  -->[m
[32m+[m[32m              </div>[m
[32m+[m[32m              <div class="card-footer">[m
[32m+[m[32m                <button type="submit" class="btn btn-primary">Simpan</button>[m
[32m+[m[32m              </div>[m
[32m+[m[32m            </form>[m
[32m+[m[32m            <!-- /form -->[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--  -->[m
[32m+[m
[32m+[m[32m<%- include('../../partials/footer.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/script.ejs') %>[m
[1mdiff --git a/src/views/admin/payment/edit.ejs b/src/views/admin/payment/edit.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..5724f07[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/payment/edit.ejs[m
[36m@@ -0,0 +1,120 @@[m
[32m+[m[32m<%- include('../../partials/head.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/navbar.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/sidebar.ejs') %>[m
[32m+[m
[32m+[m[32m<!--  -->[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <section class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1>Payment</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/category">Payment</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Edit</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-12">[m
[32m+[m[32m          <div class="card card-primary">[m
[32m+[m[32m            <div class="card-header">[m
[32m+[m[32m              <h3 class="card-title">Form Tambah Payment</h3>[m
[32m+[m[32m            </div>[m
[32m+[m
[32m+[m[32m            <!-- form -->[m
[32m+[m[32m            <form action="/payment/edit/<%= data.payment._id %>?_method=PUT" method="post">[m
[32m+[m[32m              <div class="card-body">[m
[32m+[m[32m                <!--  -->[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="type">Masukan Tipe Payment</label>[m
[32m+[m[32m                  <input[m
[32m+[m[32m                    type="text"[m
[32m+[m[32m                    class="form-control"[m
[32m+[m[32m                    id="type"[m
[32m+[m[32m                    name="type"[m
[32m+[m[32m                    required[m
[32m+[m[32m                    placeholder="Masukan Tipe Pembayaran"[m
[32m+[m[32m                    value="<%= data.payment.type %>"[m
[32m+[m[32m                  />[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group">[m
[32m+[m[32m                  <label for="status">Status</label>[m
[32m+[m[32m                  <select class="select2 select2-blue form-control" name="status" required style="max-width: 960px; width: 100%;">[m
[32m+[m
[32m+[m[32m                    <option selected value="<%= data.payment.status %>"><%= data.payment.status %></option>[m
[32m+[m
[32m+[m[32m                    <% if (data.payment.status === 'nonaktif' ) { %>[m
[32m+[m[32m                    <option value="aktif">aktif</option>[m
[32m+[m[32m                    <% } else { %>[m
[32m+[m[32m                    <option value="nonaktif">nonaktif</option>[m
[32m+[m[32m                    <%} %>[m
[32m+[m
[32m+[m[32m                  </select>[m
[32m+[m[32m                </div>[m
[32m+[m
[32m+[m[32m                <div class="form-group select2-blue">[m
[32m+[m[32m                  <label>Bank</label>[m
[32m+[m[32m                  <select[m
[32m+[m[32m                    name="bank"[m
[32m+[m[32m                    class="form-control select2"[m
[32m+[m[32m                    style="width: 100%"[m
[32m+[m[32m                    required[m
[32m+[m[32m                    multiple[m
[32m+[m[32m                    data-placeholder="Pilih Bank"[m
[32m+[m[32m                  >[m
[32m+[m[41m                   [m
[32m+[m[32m                  <% if (data?.payment) { %>[m
[32m+[m[32m                    <% data.bank.forEach((bank, i) => { %>[m
[32m+[m
[32m+[m[32m                      <option value="<%= bank._id %>"[m
[32m+[m[32m                         <% data.payment.bank.forEach((pay) => { %>[m
[32m+[m[32m                            <% if (pay._id.toString() == bank._id.toString()) { %>[m
[32m+[m[32m                             selected[m
[32m+[m[32m                            <% } %>[m
[32m+[m[32m                         <% }) %>[m
[32m+[m[32m                      >[m
[32m+[m[32m                        <%= bank.name %>-[m
[32m+[m[32m                        <%= bank.nameBank %>-[m
[32m+[m[32m                        <%= bank.noRekening %>[m
[32m+[m[32m                      </option>[m
[32m+[m
[32m+[m[32m                    <% }) %>[m[41m   [m
[32m+[m[32m                  <% } %>[m
[32m+[m
[32m+[m
[32m+[m[32m                  </select>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <!--  -->[m
[32m+[m[32m              </div>[m
[32m+[m[32m              <div class="card-footer">[m
[32m+[m[32m                <button type="submit" class="btn btn-primary">Simpan</button>[m
[32m+[m[32m              </div>[m
[32m+[m[32m            </form>[m
[32m+[m[32m            <!-- /form -->[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--  -->[m
[32m+[m
[32m+[m[32m<%- include('../../partials/footer.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/script.ejs') %>[m
[1mdiff --git a/src/views/admin/payment/table.ejs b/src/views/admin/payment/table.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..3a0c698[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/payment/table.ejs[m
[36m@@ -0,0 +1,72 @@[m
[32m+[m[32m<table id="example2" class="table table-bordered table-hover">[m
[32m+[m[32m  <!-- head -->[m
[32m+[m[32m  <thead>[m
[32m+[m[32m    <tr>[m
[32m+[m[32m      <th>No</th>[m
[32m+[m[32m      <th>Tipe</th>[m
[32m+[m[32m      <th>Bank</th>[m
[32m+[m[32m      <th>Status</th>[m
[32m+[m[32m      <th>Aksi</th>[m
[32m+[m[32m    </tr>[m
[32m+[m[32m  </thead>[m
[32m+[m[32m  <tbody>[m
[32m+[m[32m    <% data.forEach((data, index) => { %>[m
[32m+[m[32m    <tr>[m
[32m+[m[32m      <td><%= index + 1 %></td>[m
[32m+[m[32m      <td><%= data.type %></td>[m
[32m+[m
[32m+[m[32m      <td>[m
[32m+[m[32m        <% data.bank.forEach((bank) => { %>[m
[32m+[m[32m        <span class="font-weight-bold"><%= bank.name %> --> <%= bank.nameBank %> --> <%= bank.noRekening %></span>[m
[32m+[m[32m        <hr />[m
[32m+[m[32m        <% }) %>[m
[32m+[m[32m      </td>[m
[32m+[m
[32m+[m
[32m+[m[32m      <!-- status -->[m
[32m+[m[32m      <% if (data.status == 'aktif') { %>[m
[32m+[m[32m      <td>[m
[32m+[m[32m        <span class="badge-success badge text-md">[m
[32m+[m[32m          <%= data.status %>[m
[32m+[m[32m        </span>[m
[32m+[m[32m      </td>[m
[32m+[m[32m      <% }[m[41m [m
[32m+[m[32m      else { %>[m
[32m+[m[32m      <td>[m
[32m+[m[32m        <span class="badge-danger badge text-md"> <%= data.status %> </span>[m
[32m+[m[32m      </td>[m
[32m+[m[32m      <% } %>[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m      <td>[m
[32m+[m[32m        <form[m
[32m+[m[32m          action="/payment/editstatus/<%= data._id %>?_method=PUT"[m
[32m+[m[32m          method="post"[m
[32m+[m[32m          class="d-inline-block"[m
[32m+[m[32m        >[m
[32m+[m[32m          <button class="btn btn-primary btn-sm" type="submit">[m
[32m+[m[32m            <i class="fas fa-folder"></i>[m
[32m+[m[32m            <% if (data.status === 'aktif') { %>[m
[32m+[m[32m            <span>Matikan</span>[m
[32m+[m[32m            <% } else { %>[m
[32m+[m[32m            <span>Hidupkan</span>[m
[32m+[m[32m            <% } %>[m
[32m+[m[32m          </button>[m
[32m+[m[32m        </form>[m
[32m+[m
[32m+[m[32m        <form action="/payment/delete/<%= data._id %>?_method=DELETE" method="post" class="d-inline-block">[m
[32m+[m[32m          <a href="/payment/edit/<%= data._id %>" class="btn btn-warning btn-sm">[m
[32m+[m[32m            <i class="fas fa-pencil-alt"></i>[m
[32m+[m[32m            Edit</a>[m
[32m+[m[32m          <button class="btn btn-danger btn-sm">[m
[32m+[m[32m            <i class="fas fa-trash"></i> Hapus[m
[32m+[m[32m          </button>[m
[32m+[m[32m        </form>[m
[32m+[m[32m      </td>[m
[32m+[m[32m    </tr>[m
[32m+[m[32m    <% }) %>[m
[32m+[m[32m  </tbody>[m
[32m+[m[32m</table>[m
\ No newline at end of file[m
[1mdiff --git a/src/views/admin/payment/view_payment.ejs b/src/views/admin/payment/view_payment.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..ab7e8f3[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/payment/view_payment.ejs[m
[36m@@ -0,0 +1,61 @@[m
[32m+[m[32m<%- include('../../partials/head.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/navbar.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/sidebar.ejs') %>[m
[32m+[m
[32m+[m[32m<!-- Content Wrapper. Contains page content -->[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <section class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1>Payment</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Payment</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <%- include('../../partials/alert.ejs') %>[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-12">[m
[32m+[m[32m          <!-- /.card -->[m
[32m+[m[32m          <div class="card">[m
[32m+[m[32m            <div class="card-header">[m
[32m+[m[32m              <h3 class="card-title">[m
[32m+[m[32m                <a href="/payment/create" class="btn btn-primary">[m
[32m+[m[32m                  <i class="nav-icon far fa-plus-square mr-1"></i>[m
[32m+[m[32m                  Tambah[m
[32m+[m[32m                </a>[m
[32m+[m[32m              </h3>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <!-- /.card-header -->[m
[32m+[m[32m            <div class="card-body">[m
[32m+[m[32m             <%- include('./table.ejs') %>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <!-- /.card-body -->[m
[32m+[m[32m          </div>[m
[32m+[m
[32m+[m[32m          <!-- /.card -->[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--  -->[m
[32m+[m
[32m+[m[32m<%- include('../../partials/footer.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/script.ejs') %>[m
[1mdiff --git a/src/views/admin/transaction/table.ejs b/src/views/admin/transaction/table.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..edc6d81[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/transaction/table.ejs[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32m<table id="example2" class="table table-bordered table-hover">[m
[32m+[m[32m  <!-- head -->[m
[32m+[m[32m  <thead>[m
[32m+[m[32m    <tr>[m
[32m+[m[32m      <th class="text-center">No</th>[m
[32m+[m[32m      <th class="text-center">Nama Game</th>[m
[32m+[m[32m      <th class="text-center">Category</th>[m
[32m+[m[32m      <th class="text-center">Coin</th>[m
[32m+[m[32m      <th class="text-center">Status</th>[m
[32m+[m[32m      <th class="text-center">Bank</th>[m
[32m+[m[32m      <th class="text-center">Player Name</th>[m
[32m+[m[32m      <th class="text-center">Action</th>[m
[32m+[m[32m    </tr>[m
[32m+[m[32m  </thead>[m
[32m+[m[32m  <tbody>[m
[32m+[m[32m    <% data.forEach((data, index) => { %>[m
[32m+[m[32m    <tr>[m
[32m+[m[32m      <td class="text-center"><%= index + 1 %></td>[m
[32m+[m[32m      <td class="d-flex flex-column">[m
[32m+[m[32m        <img[m
[32m+[m[32m          src="<%= urlImage %>/<%= data.historyVoucherTopup.thumbnail %>"[m
[32m+[m[32m          class="img-fluid mx-auto"[m
[32m+[m[32m          width="100"[m
[32m+[m[32m          height="30"[m
[32m+[m[32m        />[m
[32m+[m[32m        <span class="font-weight-bold mx-auto mt-3">[m
[32m+[m[32m          <%= data?.historyVoucherTopup?.gameName %>[m
[32m+[m[32m        </span>[m
[32m+[m[32m      </td>[m
[32m+[m[32m      <td class="text-center"><%= data?.historyVoucherTopup?.category %></td>[m
[32m+[m[32m      <td class="text-center font-weight-bold">[m
[32m+[m[32m        <%= data?.historyVoucherTopup?.coinQuantity %> <%=[m
[32m+[m[32m        data?.historyVoucherTopup?.coinName %>[m
[32m+[m[32m      </td>[m
[32m+[m[32m      <td class="text-center">[m
[32m+[m[32m        <span[m
[32m+[m[32m          class="badge text-sm <% if (data.status == 'success') { %> badge-success <% } else if(data.status == 'failed') { %> badge-danger <% } else { %> badge-warning <% } %>"[m
[32m+[m[32m        >[m
[32m+[m[32m          <%= data.status %>[m
[32m+[m[32m        </span>[m
[32m+[m[32m      </td>[m
[32m+[m[32m      <td class="text-center">[m
[32m+[m[32m        <span class="badge badge-info text-md">[m
[32m+[m[32m          <%= data.historyPayment.bankName %>- <%= data.historyPayment.name %>-[m
[32m+[m[32m          <%= data.historyPayment.noRekening %>[m
[32m+[m[32m        </span>[m
[32m+[m[32m      </td>[m
[32m+[m
[32m+[m[32m      <td class="text-center"><%= data.player.name %></td>[m
[32m+[m[32m<!-- action -->[m
[32m+[m[32m      <td>[m
[32m+[m
[32m+[m[32m        <% if (data.status === 'pending') { %>[m
[32m+[m[32m          <form class="d-inline-block mb-4" action="/transaction/status/<%= data._id %>?status=failed&_method=PUT" method="post">[m
[32m+[m[32m            <button class="btn btn-danger text-sm">[m
[32m+[m[32m              <i class="fas fa-times-circle"></i>[m
[32m+[m[32m              Tolak[m
[32m+[m[32m            </button>[m
[32m+[m[32m          </form>[m
[32m+[m[32m          <form class="d-inline-block" action="/transaction/status/<%= data._id %>?status=success&_method=PUT" method="post">[m
[32m+[m[32m            <button class="btn btn-success tetx-sm">[m
[32m+[m[32m              <i class="fas fa-check"></i>[m
[32m+[m[32m              Terima[m
[32m+[m[32m            </button>[m
[32m+[m[32m          </form>[m
[32m+[m[32m        <% } else {%>[m
[32m+[m[32m            No Action[m
[32m+[m[32m        <%}[m
[32m+[m[32m         %>[m
[32m+[m[32m      </td>[m
[32m+[m[32m    </tr>[m
[32m+[m[32m    <% }) %>[m
[32m+[m[32m  </tbody>[m
[32m+[m[32m</table>[m
[1mdiff --git a/src/views/admin/transaction/view_transaction.ejs b/src/views/admin/transaction/view_transaction.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..ebb82af[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/transaction/view_transaction.ejs[m
[36m@@ -0,0 +1,59 @@[m
[32m+[m[32m<%- include('../../partials/head.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/navbar.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/sidebar.ejs') %>[m
[32m+[m
[32m+[m[32m<!-- Content Wrapper. Contains page content -->[m
[32m+[m[32m<div class="content-wrapper">[m
[32m+[m[32m  <!-- Content Header (Page header) -->[m
[32m+[m[32m  <section class="content-header">[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row mb-2">[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <h1>Transaction</h1>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="col-sm-6">[m
[32m+[m[32m          <ol class="breadcrumb float-sm-right">[m
[32m+[m[32m            <li class="breadcrumb-item"><a href="/">Beranda</a></li>[m
[32m+[m[32m            <li class="breadcrumb-item active">Transaction</li>[m
[32m+[m[32m          </ol>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m
[32m+[m[32m  <!-- Main content -->[m
[32m+[m[32m  <section class="content">[m
[32m+[m[32m    <%- include('../../partials/alert.ejs') %>[m
[32m+[m[32m    <div class="container-fluid">[m
[32m+[m[32m      <div class="row">[m
[32m+[m[32m        <div class="col-12">[m
[32m+[m[32m          <!-- /.card -->[m
[32m+[m[32m          <div class="card">[m
[32m+[m[32m            <div class="card-header">[m
[32m+[m[32m              <h3 class="card-title">[m
[32m+[m[32m                <a href="/transaction/create" class="btn btn-primary">[m
[32m+[m[32m                  <i class="nav-icon far fa-plus-square mr-1"></i>[m
[32m+[m[32m                  Tambah[m
[32m+[m[32m                </a>[m
[32m+[m[32m              </h3>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <!-- /.card-header -->[m
[32m+[m[32m           <%- include('./table.ejs') %>[m
[32m+[m[32m            <!-- /.card-body -->[m
[32m+[m[32m          </div>[m
[32m+[m
[32m+[m[32m          <!-- /.card -->[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.col -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.row -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.container-fluid -->[m
[32m+[m[32m  </section>[m
[32m+[m[32m  <!-- /.content -->[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--  -->[m
[32m+[m
[32m+[m[32m<%- include('../../partials/footer.ejs') %> <%-[m
[32m+[m[32minclude('../../partials/script.ejs') %>[m
[1mdiff --git a/src/views/admin/users/view_signin.ejs b/src/views/admin/users/view_signin.ejs[m
[1mnew file mode 100644[m
[1mindex 0000000..7c1b51a[m
[1m--- /dev/null[m
[1m+++ b/src/views/admin/users/view_signin.ejs[m
[36m@@ -0,0 +1,89 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <meta charset="utf-8" />[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1" />[m
[32m+[m[32m    <title><%= Title %></title>[m
[32m+[m
[32m+[m[32m    <!-- Google Font: Source Sans Pro -->[m
[32m+[m[32m    <link[m
[32m+[m[32m      rel="stylesheet"[m
[32m+[m[32m      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"[m
[32m+[m[32m    />[m
[32m+[m[32m    <!-- Font Awesome -->[m
[32m+[m[32m    <link[m
[32m+[m[32m      rel="stylesheet"[m
[32m+[m[32m      href="/adminlte/plugins/fontawesome-free/css/all.min.css"[m
[32m+[m[32m    />[m
[32m+[m[32m    <!-- icheck bootstrap -->[m
[32m+[m[32m    <link[m
[32m+[m[32m      rel="stylesheet"[m
[32m+[m[32m      href="/adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css"[m
[32m+[m[32m    />[m
[32m+[m[32m    <!-- Theme style -->[m
[32m+[m[32m    <link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css" />[m
[32m+[m[32m  </head>[m
[32m+[m[32m  <body class="hold-transition login-page">[m
[32m+[m[32m    <div class="login-box">[m
[32m+[m[32m        <!-- alert notif -->[m
[32m+[m[32m        <%- include('../../partials/alert.ejs') %>[m
[32m+[m[32m      <!-- /.login-logo -->[m
[32m+[m[32m      <div class="card card-outline card-primary">[m
[32m+[m[32m        <div class="card-header text-center">[m
[32m+[m[32m          <span class="h1"><b>Store</b>GG</span>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div class="card-body">[m
[32m+[m[32m          <p class="login-box-msg">Masuk untuk memulai sesi Anda</p>[m
[32m+[m
[32m+[m
[32m+[m[32m          <!-- form -->[m
[32m+[m[32m          <form action="/auth" novalidate method="post">[m
[32m+[m[32m            <div class="input-group mb-3">[m
[32m+[m[32m              <input type="email" class="form-control" placeholder="Email" name="email" />[m
[32m+[m[32m              <div class="input-group-append">[m
[32m+[m[32m                <div class="input-group-text">[m
[32m+[m[32m                  <span class="fas fa-envelope"></span>[m
[32m+[m[32m                </div>[m
[32m+[m[32m              </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="input-group mb-3">[m
[32m+[m[32m              <input[m
[32m+[m[32m                type="password"[m
[32m+[m[32m                class="form-control"[m
[32m+[m[32m                placeholder="Password"[m
[32m+[m[32m                name="password"[m
[32m+[m[32m              />[m
[32m+[m[32m              <div class="input-group-append">[m
[32m+[m[32m                <div class="input-group-text">[m
[32m+[m[32m                  <span class="fas fa-lock"></span>[m
[32m+[m[32m                </div>[m
[32m+[m[32m              </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="row">[m
[32m+[m[32m              <!-- /.col -->[m
[32m+[m[32m              <div class="col-4 mx-auto">[m
[32m+[m[32m                <button type="submit" class="btn btn-primary btn-block">[m
[32m+[m[32m                  Sign In[m
[32m+[m[32m                </button>[m
[32m+[m[32m              </div>[m
[32m+[m[32m              <!-- /.col -->[m
[32m+[m[32m            </div>[m
[32m+[m[32m          </form>[m
[32m+[m[32m          <!-- /form -->[m
[32m+[m
[32m+[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <!-- /.card-body -->[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <!-- /.card -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <!-- /.login-box -->[m
[32m+[m
[32m+[m[32m    <!-- jQuery -->[m
[32m+[m[32m    <script src="/adminlte/plugins/jquery/jquery.min.js"></script>[m
[32m+[m[32m    <!-- Bootstrap 4 -->[m
[32m+[m[32m    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>[m
[32m+[m[32m    <!-- AdminLTE App -->[m
[32m+[m[32m    <script src="/adminlte/dist/js/adminlte.min.js"></script>[m
[32m+[m[32m  </body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/src/views/admin/voucher/edit.ejs b/src/views/admin/voucher/edit.ejs[m
[1mindex e091fdc..46ba61c 100644[m
[1m--- a/src/views/admin/voucher/edit.ejs[m
[1m+++ b/src/views/admin/voucher/edit.ejs[m
[36m@@ -90,22 +90,24 @@[m [minclude('../../partials/sidebar.ejs') %>[m
                   >[m
 [m
                   <% if (data?.voucher?.nominal) { %>[m
[31m-                    <% data.voucher.nominal.forEach((nominal) => { %>[m
[31m-                      <option selected value="<%= nominal._id %>">[m
[31m-                        <%= nominal.coinName %> <%= nominal.coinQuantity %>  [m
[32m+[m[32m                    <% data.nominal.forEach((nominal, i) => { %>[m
[32m+[m
[32m+[m[32m                      <option value="<%= nominal._id %>"[m
[32m+[m[32m                         <% data.voucher.nominal.forEach((nom) => { %>[m
[32m+[m[32m                            <% if (nom._id.toString() == nominal._id.toString()) { %>[m
[32m+[m[32m                             selected[m
[32m+[m[32m                            <% } %>[m
[32m+[m[32m                         <% }) %>[m
[32m+[m[32m                      >[m
[32m+[m[32m                        <%= nominal.coinName %>[m
[32m+[m[32m                        <%= nominal.coinQuantity %>[m
                       </option>[m
[32m+[m
                     <% }) %>   [m
                   <% } %>[m
 [m
[31m-                  <% if (data.nominal) { %>[m
[31m-                    <% data.nominal.forEach((nom, i) => { %>[m
[31m-                      <% data.voucher.nominal.forEach((vouNom) => { %>[m
[31m-                        <% if (vouNom._id.toString() != nom._id.toString()) { %>[m
[31m-                          <option value="<%= nom._id %>"><%= nom.coinName %> <%= nom.coinQuantity %></option>[m
[31m-                        <% } %>[m
[31m-                      <% }) %>[m
[31m-                    <% }) %>       [m
[31m-                  <% } %>[m
[32m+[m
[32m+[m
 [m
 [m
 [m
[36m@@ -123,9 +125,9 @@[m [minclude('../../partials/sidebar.ejs') %>[m
                     <option value="<%= data.voucher.status %>" selected><%= data.voucher.status %></option>[m
                     [m
                     <% if (data.voucher.status === 'nonaktif') { %>[m
[31m-                      <option value="aktif">Aktif</option>[m
[32m+[m[32m                      <option value="aktif">aktif</option>[m
                     <% } else {%>[m
[31m-                        <option value="nonaktif">Nonaktif</option>[m
[32m+[m[32m                        <option value="nonaktif">nonaktif</option>[m
                       <%} %> [m
                     [m
                   </select>[m
[36m@@ -139,6 +141,7 @@[m [minclude('../../partials/sidebar.ejs') %>[m
                     id="image"[m
                     name="image"[m
                     placeholder="Masukan Gambar"[m
[32m+[m[32m                    value="<%= data.urlImage %>/<%= data.voucher.thumbnail %>"[m
                   />[m
                   <br />[m
                   <img src="<%= data.urlImage %>/<%= data.voucher.thumbnail %>" id="preview" />[m
[1mdiff --git a/src/views/index.ejs b/src/views/index.ejs[m
[1mindex 51c086a..a52f954 100644[m
[1m--- a/src/views/index.ejs[m
[1m+++ b/src/views/index.ejs[m
[36m@@ -2,7 +2,7 @@[m
 <%- include('./partials/navbar.ejs') %>[m
 <%- include('./partials/sidebar.ejs') %>[m
 <!-- main -->[m
[31m-<%- include('./partials/main.ejs') %>[m
[32m+[m[32m<%- include('./admin/dashboard/view_dashboard.ejs') %>[m
 <!-- /main -->[m
 <%- include('./partials/footer.ejs') %>[m
 <%- include('./partials/script.ejs') %>[m
[1mdiff --git a/src/views/partials/alert.ejs b/src/views/partials/alert.ejs[m
[1mindex 2e96165..84d38ae 100644[m
[1m--- a/src/views/partials/alert.ejs[m
[1m+++ b/src/views/partials/alert.ejs[m
[36m@@ -1,5 +1,4 @@[m
[31m-<% if(Alert.message != "") { [m
[31m-    %>[m
[32m+[m[32m<% if(Alert.message != "") { %>[m
 <div class="alert alert-<%= Alert.status %> alert-dismissible">[m
   <button type="button" class="close" data-dismiss="alert" aria-hidden="true">[m
     &times;[m
[1mdiff --git a/src/views/partials/footer.ejs b/src/views/partials/footer.ejs[m
[1mindex 54ba3d9..ba008c5 100644[m
[1m--- a/src/views/partials/footer.ejs[m
[1m+++ b/src/views/partials/footer.ejs[m
[36m@@ -1,8 +1,7 @@[m
 <footer class="main-footer">[m
[31m-    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>[m
[31m-    All rights reserved.[m
[32m+[m[32m    <strong>Copyright &copy; 2022-2023.</strong>[m
     <div class="float-right d-none d-sm-inline-block">[m
[31m-      <b>Version</b> 3.2.0[m
[32m+[m[32m      <b>MERN STORE GG</b>[m
     </div>[m
   </footer>[m
 [m
[1mdiff --git a/src/views/partials/head.ejs b/src/views/partials/head.ejs[m
[1mindex f17143e..ebacbbf 100644[m
[1m--- a/src/views/partials/head.ejs[m
[1m+++ b/src/views/partials/head.ejs[m
[36m@@ -3,9 +3,8 @@[m
   <head>[m
     <meta charset="utf-8" />[m
     <meta name="viewport" content="width=device-width, initial-scale=1" />[m
[31m-    <title>AdminLTE 3 | Dashboard</title>[m
[32m+[m[32m    <title><%= Title %></title>[m
 [m
[31m-    [m
     <!-- Google Font: Source Sans Pro -->[m
     <link[m
       rel="stylesheet"[m
[1mdiff --git a/src/views/partials/navbar.ejs b/src/views/partials/navbar.ejs[m
[1mindex c525f50..14114e4 100644[m
[1m--- a/src/views/partials/navbar.ejs[m
[1m+++ b/src/views/partials/navbar.ejs[m
[36m@@ -7,174 +7,25 @@[m
         ><i class="fas fa-bars"></i[m
       ></a>[m
     </li>[m
[31m-    <li class="nav-item d-none d-sm-inline-block">[m
[31m-      <a href="index3.html" class="nav-link">Home</a>[m
[31m-    </li>[m
[31m-    <li class="nav-item d-none d-sm-inline-block">[m
[31m-      <a href="#" class="nav-link">Contact</a>[m
[31m-    </li>[m
   </ul>[m
 [m
   <!-- Right navbar links -->[m
   <ul class="navbar-nav ml-auto">[m
[31m-    <!-- Navbar Search -->[m
[31m-    <li class="nav-item">[m
[31m-      <a class="nav-link" data-widget="navbar-search" href="#" role="button">[m
[31m-        <i class="fas fa-search"></i>[m
[31m-      </a>[m
[31m-      <div class="navbar-search-block">[m
[31m-        <form class="form-inline">[m
[31m-          <div class="input-group input-group-sm">[m
[31m-            <input[m
[31m-              class="form-control form-control-navbar"[m
[31m-              type="search"[m
[31m-              placeholder="Search"[m
[31m-              aria-label="Search"[m
[31m-            />[m
[31m-            <div class="input-group-append">[m
[31m-              <button class="btn btn-navbar" type="submit">[m
[31m-                <i class="fas fa-search"></i>[m
[31m-              </button>[m
[31m-              <button[m
[31m-                class="btn btn-navbar"[m
[31m-                type="button"[m
[31m-                data-widget="navbar-search"[m
[31m-              >[m
[31m-                <i class="fas fa-times"></i>[m
[31m-              </button>[m
[31m-            </div>[m
[31m-          </div>[m
[31m-        </form>[m
[31m-      </div>[m
[31m-    </li>[m
[31m-[m
     <!-- Messages Dropdown Menu -->[m
     <li class="nav-item dropdown">[m
       <a class="nav-link" data-toggle="dropdown" href="#">[m
[31m-        <i class="far fa-comments"></i>[m
[31m-        <span class="badge badge-danger navbar-badge">3</span>[m
[31m-      </a>[m
[31m-      <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">[m
[31m-        <a href="#" class="dropdown-item">[m
[31m-          <!-- Message Start -->[m
[31m-          <div class="media">[m
[31m-            <img[m
[31m-              src="/adminlte/[m
[31m-dist/img/user1-128x128.jpg"[m
[31m-              alt="User Avatar"[m
[31m-              class="img-size-50 mr-3 img-circle"[m
[31m-            />[m
[31m-            <div class="media-body">[m
[31m-              <h3 class="dropdown-item-title">[m
[31m-                Brad Diesel[m
[31m-                <span class="float-right text-sm text-danger"[m
[31m-                  ><i class="fas fa-star"></i[m
[31m-                ></span>[m
[31m-              </h3>[m
[31m-              <p class="text-sm">Call me whenever you can...</p>[m
[31m-              <p class="text-sm text-muted">[m
[31m-                <i class="far fa-clock mr-1"></i> 4 Hours Ago[m
[31m-              </p>[m
[31m-            </div>[m
[31m-          </div>[m
[31m-          <!-- Message End -->[m
[31m-        </a>[m
[31m-        <div class="dropdown-divider"></div>[m
[31m-        <a href="#" class="dropdown-item">[m
[31m-          <!-- Message Start -->[m
[31m-          <div class="media">[m
[31m-            <img[m
[31m-              src="dist/img/user8-128x128.jpg"[m
[31m-              alt="User Avatar"[m
[31m-              class="img-size-50 img-circle mr-3"[m
[31m-            />[m
[31m-            <div class="media-body">[m
[31m-              <h3 class="dropdown-item-title">[m
[31m-                John Pierce[m
[31m-                <span class="float-right text-sm text-muted"[m
[31m-                  ><i class="fas fa-star"></i[m
[31m-                ></span>[m
[31m-              </h3>[m
[31m-              <p class="text-sm">I got your message bro</p>[m
[31m-              <p class="text-sm text-muted">[m
[31m-                <i class="far fa-clock mr-1"></i> 4 Hours Ago[m
[31m-              </p>[m
[31m-            </div>[m
[31m-          </div>[m
[31m-          <!-- Message End -->[m
[31m-        </a>[m
[31m-        <div class="dropdown-divider"></div>[m
[31m-        <a href="#" class="dropdown-item">[m
[31m-          <!-- Message Start -->[m
[31m-          <div class="media">[m
[31m-            <img[m
[31m-              src="dist/img/user3-128x128.jpg"[m
[31m-              alt="User Avatar"[m
[31m-              class="img-size-50 img-circle mr-3"[m
[31m-            />[m
[31m-            <div class="media-body">[m
[31m-              <h3 class="dropdown-item-title">[m
[31m-                Nora Silvester[m
[31m-                <span class="float-right text-sm text-warning"[m
[31m-                  ><i class="fas fa-star"></i[m
[31m-                ></span>[m
[31m-              </h3>[m
[31m-              <p class="text-sm">The subject goes here</p>[m
[31m-              <p class="text-sm text-muted">[m
[31m-                <i class="far fa-clock mr-1"></i> 4 Hours Ago[m
[31m-              </p>[m
[31m-            </div>[m
[31m-          </div>[m
[31m-          <!-- Message End -->[m
[31m-        </a>[m
[31m-        <div class="dropdown-divider"></div>[m
[31m-        <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>[m
[31m-      </div>[m
[31m-    </li>[m
[31m-    <!-- Notifications Dropdown Menu -->[m
[31m-    <li class="nav-item dropdown">[m
[31m-      <a class="nav-link" data-toggle="dropdown" href="#">[m
[31m-        <i class="far fa-bell"></i>[m
[31m-        <span class="badge badge-warning navbar-badge">15</span>[m
[31m-      </a>[m
[31m-      <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">[m
[31m-        <span class="dropdown-item dropdown-header">15 Notifications</span>[m
[31m-        <div class="dropdown-divider"></div>[m
[31m-        <a href="#" class="dropdown-item">[m
[31m-          <i class="fas fa-envelope mr-2"></i> 4 new messages[m
[31m-          <span class="float-right text-muted text-sm">3 mins</span>[m
[31m-        </a>[m
[31m-        <div class="dropdown-divider"></div>[m
[31m-        <a href="#" class="dropdown-item">[m
[31m-          <i class="fas fa-users mr-2"></i> 8 friend requests[m
[31m-          <span class="float-right text-muted text-sm">12 hours</span>[m
[31m-        </a>[m
[31m-        <div class="dropdown-divider"></div>[m
[31m-        <a href="#" class="dropdown-item">[m
[31m-          <i class="fas fa-file mr-2"></i> 3 new reports[m
[31m-          <span class="float-right text-muted text-sm">2 days</span>[m
[31m-        </a>[m
[31m-        <div class="dropdown-divider"></div>[m
[31m-        <a href="#" class="dropdown-item dropdown-footer"[m
[31m-          >See All Notifications</a[m
[31m-        >[m
[31m-      </div>[m
[31m-    </li>[m
[31m-    <li class="nav-item">[m
[31m-      <a class="nav-link" data-widget="fullscreen" href="#" role="button">[m
[31m-        <i class="fas fa-expand-arrows-alt"></i>[m
[32m+[m[32m        <span class="badge text-md text-primary font-weight-bold">[m
[32m+[m[32m          <%= userName %>[m
[32m+[m[32m        </span>[m
       </a>[m
[31m-    </li>[m
[31m-    <li class="nav-item">[m
[31m-      <a[m
[31m-        class="nav-link"[m
[31m-        data-widget="control-sidebar"[m
[31m-        data-controlsidebar-slide="true"[m
[31m-        href="#"[m
[31m-        role="button"[m
[32m+[m[32m      <form[m
[32m+[m[32m        action="/auth/logout"[m
[32m+[m[32m        method="post"[m
[32m+[m[32m        class="dropdown-menu dropdown-menu-right opacity-0"[m
       >[m
[31m-        <i class="fas fa-th-large"></i>[m
[31m-      </a>[m
[32m+[m[32m        <button class="btn btn-block font-weight-bold text-dark text-md dropdown-hover"> Logout </button>[m
[32m+[m[32m        <div class="w-100 h-100 bg-dark text-white"></div>[m
[32m+[m[32m      </form>[m
     </li>[m
   </ul>[m
 </nav>[m
[1mdiff --git a/src/views/partials/sidebar.ejs b/src/views/partials/sidebar.ejs[m
[1mindex cb9c7fd..60acfc3 100644[m
[1m--- a/src/views/partials/sidebar.ejs[m
[1m+++ b/src/views/partials/sidebar.ejs[m
[36m@@ -53,13 +53,13 @@[m
         <!-- Payment -->[m
         <li class="nav-header">Metode Pembayaran</li>[m
         <li class="nav-item">[m
[31m-          <a href="pages/calendar.html" class="nav-link">[m
[32m+[m[32m          <a href="/bank" class="nav-link">[m
             <i class="nav-icon fas fa-money-check"></i>[m
             <p>Bank</p>[m
           </a>[m
         </li>[m
         <li class="nav-item">[m
[31m-          <a href="pages/calendar.html" class="nav-link">[m
[32m+[m[32m          <a href="/payment" class="nav-link">[m
             <i class="nav-icon fas fa-money-check-alt"></i>[m
             <p>Jenis Pembayaran</p>[m
           </a>[m
[36m@@ -68,7 +68,7 @@[m
         <!-- transaksi -->[m
         <li class="nav-header">Transaksi</li>[m
         <li class="nav-item">[m
[31m-          <a href="pages/calendar.html" class="nav-link">[m
[32m+[m[32m          <a href="/transaction" class="nav-link">[m
             <i class="nav-icon fas fa-shopping-cart"></i>[m
             <p>Transaksi</p>[m
           </a>[m
[1mdiff --git a/tsconfig.json b/tsconfig.json[m
[1mindex f9cb581..9f6cd84 100644[m
[1m--- a/tsconfig.json[m
[1m+++ b/tsconfig.json[m
[36m@@ -76,8 +76,9 @@[m
   "include": [[m
     "src/**/*.ts",[m
     "spec/**/*.ts",[m
[31m-    "build.ts"[m
[31m-, "src/template-config.ts"  ],[m
[32m+[m[32m    "build.ts",[m[41m [m
[32m+[m[32m    "./customTypes.d.ts",[m
[32m+[m[32m    "src/template-config.ts"  ],[m
   "exclude": [[m
     "src/public/"[m
   ][m
