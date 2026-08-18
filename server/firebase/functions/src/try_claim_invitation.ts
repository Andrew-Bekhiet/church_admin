import { auth } from "firebase-admin";
import { https } from "firebase-functions/v2";
import { assertUserEmailVerified, hasuraClaims } from "./common";
import { upsertUser } from "./hasura_interface";

export const tryClaimInvitation = https.onCall({}, async (request) => {
  const authUser = await assertUserEmailVerified(request.auth);

  const dbUser = await upsertUser({
    name: authUser.displayName ?? authUser.email!,
    email: authUser.email!,
    uid: authUser.uid,
  });

  if (!dbUser) {
    console.error("Could not claim or create a user for", authUser.uid);
    throw new https.HttpsError("not-found", "User not found in database");
  }

  await auth().setCustomUserClaims(authUser.uid, hasuraClaims(dbUser.hasura_uid));
});
