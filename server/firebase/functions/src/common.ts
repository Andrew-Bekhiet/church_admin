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

export async function assertUserAuthenticatedAndApproved(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  if (!authData) {
    console.error("User not authenticated");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  if (!authData.token.email_verified) {
    console.error("User email not verified");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  const authUser = await getAuth().getUser(authData.uid);

  if (!(await checkUserApproved(authData.token["x-hasura-user-id"]))) {
    console.error("User is not approved", authData.token["x-hasura-user-id"]);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}
