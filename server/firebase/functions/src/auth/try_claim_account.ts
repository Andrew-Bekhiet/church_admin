import { getAuth } from "firebase-admin/auth";
import { getRemoteConfig } from "firebase-admin/remote-config";
import { https } from "firebase-functions/v2";
import { assertUserEmailVerified, defaultHasuraClaims } from "../common";
import {
  findUserDataByEmail,
  getHasuraUID,
  linkAuthAccount,
  UserData,
} from "../hasura_interface";

const enableAccountClaimingByEmailKey = "enableAccountClaimingByEmail";

async function isAccountClaimingByEmailEnabled(): Promise<boolean> {
  if (process.env.FUNCTIONS_EMULATOR) return true;

  try {
    const template = await getRemoteConfig().getServerTemplate({
      defaultConfig: { [enableAccountClaimingByEmailKey]: true },
    });

    return template.evaluate().getBoolean(enableAccountClaimingByEmailKey);
  } catch (e) {
    console.error("Could not read account-claiming feature flag", e);

    return false;
  }
}

export const tryClaimAccount = https.onCall({}, async (request) => {
  const authUser = await assertUserEmailVerified(request.auth);

  if (!(await isAccountClaimingByEmailEnabled())) {
    console.error("Account claiming by email is disabled", authUser.uid);
    throw new https.HttpsError("not-found", "not-found");
  }

  const hasuraUid = authUser.customClaims?.hasura_uid ??
    await getHasuraUID(authUser.uid);
  if (hasuraUid) {
    console.error(
      "Firebase account already has a Hasura user with uid",
      hasuraUid,
    );
    throw new https.HttpsError(
      "aborted",
      "Account already exists for this user",
    );
  }

  if (!authUser.email) {
    console.error("Firebase account has no email", authUser.uid);
    throw new https.HttpsError("not-found", "not-found");
  }

  const claimed = await maybeClaimUserData({
    email: authUser.email,
    uid: authUser.uid,
  });

  if (!claimed) {
    console.error("No account to claim for Firebase user", authUser.uid);
    throw new https.HttpsError("not-found", "not-found");
  }

  await getAuth().setCustomUserClaims(
    authUser.uid,
    defaultHasuraClaims(claimed.hasura_uid),
  );
});

export async function maybeClaimUserData(authUser: {
  email: string;
  uid: string;
}): Promise<UserData | null> {
  try {
    const userData = await findUserDataByEmail(authUser.email);

    if (!userData) {
      console.log("No user data found for email", authUser.email);

      return null;
    }

    if (userData?.auth_id && userData.auth_id !== authUser.uid) {
      console.warn(
        "User data already linked to a different Firebase account",
        userData.auth_id,
        "!=",
        authUser.uid,
      );

      return null;
    }

    const claimed = await linkAuthAccount(userData.hasura_uid, authUser.uid);

    if (!claimed) {
      console.error("Could not link auth account for user", authUser.uid);
      return null;
    }

    return claimed;
  } catch (e) {
    console.error(e);
  }

  return null;
}
