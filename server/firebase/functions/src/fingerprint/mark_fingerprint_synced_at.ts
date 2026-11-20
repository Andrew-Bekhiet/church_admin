import { requestAsFingerprintSync } from "./request_as_fingerprint_sync";

export async function markFingerprintSyncedAt(syncedAt: Date): Promise<void> {
  await requestAsFingerprintSync(
    `
      mutation markFingerprintSyncedAt($lastSyncedAt: timestamptz!) {
        insertOperationsFingerprintSyncStatus(
          objects: [{ lastSyncedAt: $lastSyncedAt }]
          onConflict: {
            constraint: fingerprint_sync_status_pkey
            updateColumns: [lastSyncedAt]
          }
        ) {
          affectedRows
        }
      }
    `,
    { lastSyncedAt: syncedAt.toISOString() },
    "markFingerprintSyncedAt",
  );
}
