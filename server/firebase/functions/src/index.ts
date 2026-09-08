import * as admin from "firebase-admin";
import { setGlobalOptions } from "firebase-functions/v2";

admin.initializeApp();

setGlobalOptions({ region: "europe-west6" });

export * from "./auth";
export * from "./download_app";
export * from "./export/export";
export * from "./notify_study_year_roll_failure";
export * from "./register_fcm_token";
export * from "./storage_proxy";
export * from "./storage_triggers";
