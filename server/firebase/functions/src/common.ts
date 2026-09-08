import { getAuth, UserRecord } from "firebase-admin/auth";
import { https } from "firebase-functions/v2";
import { AuthData } from "firebase-functions/v2/tasks";
import {
  checkUserApproved,
  getUserPermissionsByFirebaseUID,
} from "./hasura_interface";

export function requiredName(value: unknown): string {
  if (typeof value !== "string" || value.trim().length === 0) {
    throw new https.HttpsError("invalid-argument", "invalid name");
  }

  return value.trim();
}

export function defaultHasuraClaims(hasuraUID: string) {
  return {
    "x-hasura-user-id": hasuraUID,
    "x-hasura-default-role": "user",
    "x-hasura-allowed-roles": ["user"],
  };
}

function assertAuthenticated(authData: AuthData | undefined): AuthData {
  if (!authData) {
    console.error("User not authenticated");
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authData;
}

export async function assertUserAuthenticated(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  return getAuth().getUser(assertAuthenticated(authData).uid);
}

export async function assertUserEmailVerified(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  const authUser = await assertUserAuthenticated(authData);

  if (!authUser.emailVerified) {
    console.error("User email not verified", authUser.uid);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}

export async function assertUserAuthenticatedAndApproved(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  const { token } = assertAuthenticated(authData);
  const authUser = await assertUserEmailVerified(authData);

  if (!(await checkUserApproved(token["x-hasura-user-id"]))) {
    console.error("User is not approved", token["x-hasura-user-id"]);
    throw new https.HttpsError("unauthenticated", "unauthenticated");
  }

  return authUser;
}

export async function assertUserCanOnboard(
  authData: AuthData | undefined,
): Promise<UserRecord> {
  const authUser = await assertUserEmailVerified(authData);
  const permissions = await getUserPermissionsByFirebaseUID(authUser.uid);

  if (
    !permissions.includes("approved") ||
    (!permissions.includes("manageAllUsers") &&
      !permissions.includes("onboardUsers"))
  ) {
    console.error("User cannot onboard accounts", authUser.uid);
    throw new https.HttpsError("permission-denied", "permission-denied");
  }

  return authUser;
}
