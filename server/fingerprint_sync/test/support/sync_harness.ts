import { DateTime } from "luxon";
import { mkdtemp, rm } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join } from "node:path";
import { TestContext } from "node:test";
import { FingerprintSyncConfig } from "../../src/config";
import { FingerprintSync } from "../../src/fingerprint_sync";
import {
  BIOTIME_PASSWORD,
  BIOTIME_USERNAME,
  FakeBiotimeServer,
} from "./fake_biotime_server";
import { FakeRecordFingerprintPunches, FUNCTION_SECRET } from "./fake_record_fingerprint_punches";

export interface SyncHarness {
  biotime: FakeBiotimeServer;
  recordFingerprintPunches: FakeRecordFingerprintPunches;
  config: FingerprintSyncConfig;
  serverLocalTime: string;
  newSync(): FingerprintSync;
}

export async function startSyncHarness(
  t: TestContext,
  serverLocalTime: string,
): Promise<SyncHarness> {
  const biotime = await FakeBiotimeServer.start();
  const recordFingerprintPunches = await FakeRecordFingerprintPunches.start();
  const directory = await mkdtemp(join(tmpdir(), "fingerprint-sync-"));

  t.after(async () => {
    await biotime.stop();
    await recordFingerprintPunches.stop();
    await rm(directory, { recursive: true, force: true });
  });

  const harness: SyncHarness = {
    biotime,
    recordFingerprintPunches,
    serverLocalTime,
    config: {
      biotime: {
        baseUrl: biotime.baseUrl,
        username: BIOTIME_USERNAME,
        password: BIOTIME_PASSWORD,
      },
      recordFingerprintPunches: {
        url: recordFingerprintPunches.url,
        secret: FUNCTION_SECRET,
      },
      cursorFile: join(directory, "cursor.json"),
      pollIntervalSeconds: 20,
    },
    newSync: () =>
      new FingerprintSync(
        harness.config,
        () => DateTime.fromSQL(harness.serverLocalTime) as DateTime<true>,
      ),
  };

  return harness;
}
