import { getAuth, UserRecord } from "firebase-admin/auth";
import { https } from "firebase-functions/v2";
import { AuthData } from "firebase-functions/v2/tasks";
import { checkUserApproved } from "./hasura_interface";

export async function assertUserAuthenticatedAndApproved(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  if (!authData) {
    console.error("User not authenticated");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  } else if (!(authData?.token.email_verified ?? false)) {
    console.error("User email not verified");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  const authUser = await getAuth().getUser(authData!.uid!);

  if (!authUser.multiFactor) {
    console.error("User does not have 2FA enabled");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  } else if (!(await checkUserApproved(authData.token["x-hasura-user-id"]))) {
    console.error("User is not approved", authData.token["x-hasura-user-id"]);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}
