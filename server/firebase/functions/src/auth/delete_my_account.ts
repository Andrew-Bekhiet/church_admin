import { getAuth } from "firebase-admin/auth";
import { https } from "firebase-functions/v2";
import { getHasuraUIDOrThrow, releaseUserAccount } from "../hasura_interface";

export const deleteMyAccount = https.onCall(async (data) => {
  const uid = data.auth?.uid;

  if (!uid) {
    throw new https.HttpsError("unauthenticated", "User not authenticated");
  }

  try {
    const hasuraUID = await getHasuraUIDOrThrow(uid);

    if (hasuraUID) await releaseUserAccount(hasuraUID);

    await getAuth().deleteUser(uid);

    console.log(`User ${uid} deleted successfully`);

    return { success: true };
  } catch (error) {
    console.error("Error deleting user:", error);
    throw new https.HttpsError("internal", "Error deleting user");
  }
});
