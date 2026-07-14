import { https } from "firebase-functions/v2";
import { assertUserAuthenticatedAndApproved } from "./common";
import { getHasuraUID, insertFcmToken } from "./hasura_interface";

export const registerFCMToken = https.onCall({}, async (request) => {
  const currentUser = await assertUserAuthenticatedAndApproved(request.auth);

  const { token } = request.data;

  if (!token) {
    throw new https.HttpsError("invalid-argument", "missing token");
  }

  const hasuraUID = (await getHasuraUID(currentUser.uid))!;

  await insertFcmToken(hasuraUID, token);
});
