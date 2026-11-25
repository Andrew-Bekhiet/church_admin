import { https } from "firebase-functions/v2";
import * as z from "zod";
import { assertUserAuthenticatedAndApproved } from "./common";
import { registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens } from "./hasura_interface";
import { hasuraAdminSecret } from "./secrets";

const RegisterFirebaseInstallationRequest = z.object({
  installationId: z.string().trim().min(1),
});

export const registerFirebaseInstallation = https.onCall<
  z.infer<typeof RegisterFirebaseInstallationRequest>
>({ secrets: [hasuraAdminSecret] }, async (request) => {
  await assertUserAuthenticatedAndApproved(request.auth);

  const requestData = RegisterFirebaseInstallationRequest.safeParse(request.data);
  if (!requestData.success) {
    throw new https.HttpsError(
      "invalid-argument",
      "invalid-installation-id",
      requestData.error.issues,
    );
  }

  const uid = request.auth!.token["x-hasura-user-id"];
  try {
    await registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens(
      uid,
      requestData.data.installationId,
    );
  } catch (e) {
    console.error("Could not register Firebase installation", uid, e);
    throw new https.HttpsError("internal", "installation-registration-failed");
  }
});
