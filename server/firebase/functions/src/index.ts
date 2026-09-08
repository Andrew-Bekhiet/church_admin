import * as admin from "firebase-admin";
import { defineSecret, defineString } from "firebase-functions/params";
import { setGlobalOptions } from "firebase-functions/v2";

export const hasuraServer = defineString("HASURA_SERVER", {
  description: "The URL of the Hasura server",
});

export const hasuraAdminSecret = defineSecret("HASURA_ADMIN_SECRET", {
  description: "The admin secret for the Hasura server",
});

admin.initializeApp();

setGlobalOptions({ region: "europe-west6", secrets: [hasuraAdminSecret] });

export * from "./auth";
export * from "./download_app";
export * from "./export/export";
export * from "./grant_first_user_all_permissions";
export * from "./notify_study_year_roll_failure";
export * from "./register_fcm_token";
export * from "./storage_proxy";
export * from "./storage_triggers";
