import { getAuth } from "firebase-admin/auth";
import { https } from "firebase-functions/v2";
import * as z from "zod";
import { assertUserAuthenticated, defaultHasuraClaims } from "../common";
import { claimInvitation } from "../hasura_interface";
import { hasuraAdminSecret, invitationCodeHmacSecret } from "../secrets";
import { recordInvitationAttemptOrThrow } from "./invitation_attempt_limiter";
import { invitationCodeDigest, InviteCode } from "./invitation_code";

const ApplyInvitationCodeRequest = z.object({ code: InviteCode });

function throwNotFound(): never {
  throw new https.HttpsError("not-found", "not-found");
}

export const applyInvitationCode = https.onCall<
  z.infer<typeof ApplyInvitationCodeRequest>
>({ secrets: [hasuraAdminSecret, invitationCodeHmacSecret] }, async (request) => {
  const authUser = await assertUserAuthenticated(request.auth);

  await recordInvitationAttemptOrThrow(
    authUser.uid,
    new https.HttpsError(
      "resource-exhausted",
      "Invitation-code attempt limit exceeded",
    ),
  );

  const requestData = ApplyInvitationCodeRequest.safeParse(request.data);
  if (!requestData.success) {
    throw new https.HttpsError(
      "invalid-argument",
      "Invalid request data",
      requestData.error.issues,
    );
  }

  const code = requestData.data?.code;

  if (!code || !authUser.email) {
    console.error(
      "Invitation code or Firebase email is falsy",
      authUser.uid,
    );
    throwNotFound();
  }

  let hasuraUID: string | null;
  try {
    const codeDigest = invitationCodeDigest(
      code,
      invitationCodeHmacSecret.value(),
    );

    const newUser = await claimInvitation({
      codeDigest: codeDigest,
      firebaseAuthUID: authUser.uid,
      email: authUser.email,
    });

    hasuraUID = newUser?.hasuraUid ?? null;
  } catch (e) {
    console.error("Could not claim invitation", authUser.uid, e);
    throwNotFound();
  }

  if (!hasuraUID) {
    console.error("Invitation code could not be claimed", authUser.uid);
    throwNotFound();
  }

  if (!authUser.emailVerified) {
    await getAuth().updateUser(authUser.uid, { emailVerified: true });
  }

  await getAuth().setCustomUserClaims(
    authUser.uid,
    defaultHasuraClaims(hasuraUID),
  );
});
