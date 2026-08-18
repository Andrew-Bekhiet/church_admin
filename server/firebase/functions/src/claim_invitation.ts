import { auth } from "firebase-admin";
import { https } from "firebase-functions/v2";
import { assertUserEmailVerified, hasuraClaims } from "./common";
import { upsertUser } from "./hasura_interface";

/**
 * Claims the invite seeded for the caller's now-verified email address.
 *
 * Signup deliberately defers the claim for unverified emails, and no Firebase
 * event fires on verification, so the client calls this once the address is
 * confirmed and then force-refreshes its ID token to pick up the new claims.
 */
export const claimInvitation = https.onCall({}, async (request) => {
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
