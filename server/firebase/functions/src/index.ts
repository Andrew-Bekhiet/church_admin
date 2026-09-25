import * as admin from "firebase-admin";
import { setGlobalOptions } from "firebase-functions/v2";
import { hasuraAdminSecret } from "./secrets";

admin.initializeApp();

setGlobalOptions({
  region: "europe-west6",
  secrets: [hasuraAdminSecret],
});

export * from "./auth/apply_invitation_code";
export * from "./auth/create_user";
export * from "./auth/delete_my_account";
export * from "./auth/triggers";
export * from "./auth/try_claim_account";
export * from "./download_app";
export * from "./export/export";
export * from "./notify_study_year_roll_failure";
export * from "./register_fcm_token";
export * from "./storage_proxy";
export * from "./storage_triggers";
