import { auth } from "firebase-admin";
import { https } from "firebase-functions/v2";
import { AuthData } from "firebase-functions/v2/tasks";
import { checkUserApproved } from "./hasura_interface";

export function hasuraClaims(hasura_uid: string) {
  return {
    "x-hasura-user-id": hasura_uid,
    "x-hasura-default-role": "user",
    "x-hasura-allowed-roles": ["user"],
  };
}

/**
 * Asserts the caller owns their email address, without requiring them to be a
 * fully onboarded user yet.
 *
 * An invitee calling this has no Hasura user, no 2FA and no approval — that is
 * precisely what claiming the invite is meant to give them.
 */
export async function assertUserEmailVerified(
  authData: AuthData | undefined
): Promise<auth.UserRecord> {
  if (!authData) {
    console.error("User not authenticated");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  } else if (!(authData?.token.email_verified ?? false)) {
    console.error("User email not verified");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return auth().getUser(authData.uid!);
}

export async function assertUserAuthenticatedAndApproved(
  authData: AuthData | undefined
): Promise<auth.UserRecord> {
  const authUser = await assertUserEmailVerified(authData);

  if (!authUser.multiFactor) {
    console.error("User does not have 2FA enabled");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  } else if (!(await checkUserApproved(authData!.token["x-hasura-user-id"]))) {
    console.error("User is not approved", authData!.token["x-hasura-user-id"]);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}
