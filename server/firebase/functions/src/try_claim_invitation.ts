import { getAuth } from "firebase-admin/auth";
import { https } from "firebase-functions/v2";
import { assertUserEmailVerified, hasuraClaims } from "./common";
import { claimSeededUser } from "./hasura_interface";

export const tryClaimInvitation = https.onCall({}, async (request) => {
  const authUser = await assertUserEmailVerified(request.auth);

  const claimed = await claimSeededUser({
    email: authUser.email!,
    uid: authUser.uid,
  });

  if (!claimed) {
    console.error("No invitation to claim for", authUser.uid);
    throw new https.HttpsError("not-found", "auth/no-invitation-to-claim");
  }

  await getAuth().setCustomUserClaims(
    authUser.uid,
    hasuraClaims(claimed.hasura_uid),
  );
});
