import { https } from "firebase-functions/v2";
import { assertUserAuthenticatedWithVerifiedEmail } from "./common";
import {
  getHasuraUID,
  insertAllPermissionsForFirstUser,
} from "./hasura_interface";

export const grantFirstUserAllPermissions = https.onCall({}, async (
  request,
) => {
  const currentUser = await assertUserAuthenticatedWithVerifiedEmail(
    request.auth,
  );

  const hasuraUID = await getHasuraUID(currentUser.uid);

  if (!hasuraUID) {
    console.error("Could not find hasura_uid for user", currentUser.uid);
    throw new https.HttpsError("not-found", "User not found in database");
  }

  const granted = await insertAllPermissionsForFirstUser(hasuraUID);

  return { granted: granted.length > 0 };
});
