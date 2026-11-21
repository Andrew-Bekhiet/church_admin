import { DateTime } from "luxon";
import { requestAsFingerprintSync } from "./request_as_fingerprint_sync";

export async function markFingerprintSyncedAtUnlessALaterSyncIsRecorded(
  syncedAt: DateTime<true>,
): Promise<void> {
  await requestAsFingerprintSync(
    `
      mutation markFingerprintSyncedAtUnlessALaterSyncIsRecorded($lastSyncedAt: timestamptz!) {
        insertOperationsFingerprintSyncStatus(
          objects: [{ lastSyncedAt: $lastSyncedAt }]
          onConflict: {
            constraint: fingerprint_sync_status_pkey
            updateColumns: [lastSyncedAt]
            where: { lastSyncedAt: { _lt: $lastSyncedAt } }
          }
        ) {
          affectedRows
        }
      }
    `,
    { lastSyncedAt: syncedAt.toUTC().toISO() },
    "markFingerprintSyncedAtUnlessALaterSyncIsRecorded",
  );
}
