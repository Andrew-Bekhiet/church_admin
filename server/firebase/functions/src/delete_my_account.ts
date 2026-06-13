import { auth } from "firebase-admin";
import { https } from "firebase-functions/v2";
import { getHasuraUID, unapproveUser } from "./hasura_interface";

export const deleteMyAccount = https.onCall(async (data) => {
  const uid = data.auth?.uid;

  if (!uid) {
    throw new https.HttpsError("unauthenticated", "User not authenticated");
  }

  try {
    const hasuraUID = await getHasuraUID(uid);

    await auth().deleteUser(uid);

    if (hasuraUID) await unapproveUser(hasuraUID);

    console.log(`User ${uid} deleted successfully`);

    return { success: true };
  } catch (error) {
    console.error("Error deleting user:", error);
    throw new https.HttpsError("internal", "Error deleting user");
  }
});
