import { getAuth, UserRecord } from "firebase-admin/auth";
import { https } from "firebase-functions/v2";
import { AuthData } from "firebase-functions/v2/tasks";
import { checkUserApproved } from "./hasura_interface";

export function hasuraClaims(hasuraUID: string) {
  return {
    "x-hasura-user-id": hasuraUID,
    "x-hasura-default-role": "user",
    "x-hasura-allowed-roles": ["user"],
  };
}

function assertEmailVerified(authData: AuthData | undefined): AuthData {
  if (!authData) {
    console.error("User not authenticated");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  if (!authData.token.email_verified) {
    console.error("User email not verified");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authData;
}

export async function assertUserEmailVerified(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  return getAuth().getUser(assertEmailVerified(authData).uid);
}

export async function assertUserAuthenticatedAndApproved(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  const { uid, token } = assertEmailVerified(authData);
  const authUser = await getAuth().getUser(uid);

  if (!(await checkUserApproved(token["x-hasura-user-id"]))) {
    console.error("User is not approved", token["x-hasura-user-id"]);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}
