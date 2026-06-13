import * as admin from "firebase-admin";
import { setGlobalOptions } from "firebase-functions/v2";

admin.initializeApp();

setGlobalOptions({
  enforceAppCheck: process.env["IS_APP_LIVE"] == "true",
  region: "europe-west6",
});

export * from "./auth";
export * from "./download_app";
export * from "./export/export";
export * from "./register_fcm_token";
export * from "./storage_proxy";
export * from "./storage_triggers";
