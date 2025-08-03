import { auth } from "firebase-admin";
import { https } from "firebase-functions/v2";

export const deleteMyAccount = https.onCall(async (data) => {
  const uid = data.auth?.uid;

  if (!uid) {
    throw new https.HttpsError("unauthenticated", "User not authenticated");
  }

  try {
    await auth().deleteUser(uid);

    console.log(`User ${uid} deleted successfully`);

    return { success: true };
  } catch (error) {
    console.error("Error deleting user:", error);
    throw new https.HttpsError("internal", "Error deleting user");
  }
});
