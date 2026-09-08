import { getAuth, UserRecord } from "firebase-admin/auth";
import { https } from "firebase-functions/v2";
import { AuthData } from "firebase-functions/v2/tasks";
import { checkUserApproved } from "./hasura_interface";

export async function assertUserAuthenticatedWithVerifiedEmail(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  if (!authData) {
    console.error("User not authenticated");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  // The ID token keeps email_verified=false until it is force-refreshed,
  // so the user record is the only value that is current right after
  // the user follows the verification link.
  const authUser = await getAuth().getUser(authData.uid);

  if (!authUser.emailVerified) {
    console.error("User email not verified", authData.uid);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}

export async function assertUserAuthenticatedAndApproved(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  const authUser = await assertUserAuthenticatedWithVerifiedEmail(authData);

  const hasuraUserId = authData?.token["x-hasura-user-id"];

  if (!(await checkUserApproved(hasuraUserId))) {
    console.error("User is not approved", hasuraUserId);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}
