import { defineSecret, defineString } from "firebase-functions/params";

export const hasuraServer = defineString("HASURA_SERVER", {
    description: "The URL of the Hasura server",
});

export const hasuraAdminSecret = defineSecret("HASURA_ADMIN_SECRET", {
    description: "The admin secret for the Hasura server",
});

export const invitationCodeHmacSecret = defineSecret(
    "INVITATION_CODE_HMAC_SECRET",
    {
        description:
            "The HMAC secret used to store invitation codes as digests",
    },
);

export const appReleaseBucketName = defineString("APP_RELEASE_GCS_BUCKET", {
    description: "The name of the GCS bucket where app releases are stored",
    default: "church-admin-local-releases",
});
