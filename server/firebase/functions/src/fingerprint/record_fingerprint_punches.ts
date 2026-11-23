import { defineSecret } from "firebase-functions/params";
import { https } from "firebase-functions/v2";
import { DateTime } from "luxon";
import { createHash, timingSafeEqual } from "node:crypto";
import { hasuraAdminSecret } from "../secrets";
import { recordFingerprintPunchesAndMarkSynced } from "./application/record_fingerprint_punches_and_mark_synced";
import { fingerprintPunchesRequest } from "./domain/fingerprint_punches_request";

const fingerprintSyncSecret = defineSecret("FINGERPRINT_SYNC_SECRET");

export const recordFingerprintPunches = https.onRequest(
  { secrets: [hasuraAdminSecret, fingerprintSyncSecret] },
  async (req, res) => {
    const configuredSecret = fingerprintSyncSecret.value();

    if (!configuredSecret) {
      console.error(
        "FINGERPRINT_SYNC_SECRET is not configured, rejecting request",
      );
      res.status(401).send();

      return;
    }

    if (
      !isSameSecret(req.header("X-Fingerprint-Sync-Secret"), configuredSecret)
    ) {
      console.error("Invalid or missing fingerprint sync secret");
      res.status(401).send();

      return;
    }

    const requestData = fingerprintPunchesRequest.safeParse(req.body);

    if (!requestData.success) {
      console.error("Malformed fingerprint punches request", requestData.error);
      res.status(400).send();

      return;
    }

    try {
      await recordFingerprintPunchesAndMarkSynced(
        requestData.data,
        DateTime.now(),
      );
    } catch (e) {
      console.error("Failed to record fingerprint punches", e);
      res.status(500).send();

      return;
    }

    res.status(204).send();
  },
);

function isSameSecret(received: string | undefined, configured: string) {
  return received !== undefined &&
    timingSafeEqual(
      fixedLengthDigestOf(received),
      fixedLengthDigestOf(configured),
    );
}

function fixedLengthDigestOf(secret: string): Buffer {
  return createHash("sha256").update(secret).digest();
}
