import * as admin from "firebase-admin";

admin.initializeApp();

export * from "./auth";
export * from "./storage_proxy";
export * from "./storage_triggers";
