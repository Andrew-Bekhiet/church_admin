import { createHash, timingSafeEqual } from "node:crypto";
import { defineSecret } from "firebase-functions/params";
import { https } from "firebase-functions/v2";
import {
  fingerprintPunchesRequest,
  recordFingerprintPunchesAndMarkSynced,
} from "./fingerprint/record_fingerprint_punches_and_mark_synced";
import { hasuraAdminSecret } from "./secrets";

const fingerprintSyncSecret = defineSecret("FINGERPRINT_SYNC_SECRET");

function isSameSecret(received: string | undefined, configured: string) {
  const digestOf = (value: string) =>
    createHash("sha256").update(value).digest();

  return received !== undefined &&
    timingSafeEqual(digestOf(received), digestOf(configured));
}

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

    if (!isSameSecret(req.header("X-Fingerprint-Sync-Secret"), configuredSecret)) {
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
      await recordFingerprintPunchesAndMarkSynced(requestData.data, new Date());
    } catch (e) {
      console.error("Failed to record fingerprint punches", e);
      res.status(500).send();

      return;
    }

    res.status(204).send();
  },
);
