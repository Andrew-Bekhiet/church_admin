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
import { FakePunchesFunction, FUNCTION_SECRET } from "./fake_punches_function";

export interface SyncHarness {
  biotime: FakeBiotimeServer;
  punchesFunction: FakePunchesFunction;
  config: FingerprintSyncConfig;
  serverLocalTime: string;
  startSync(): FingerprintSync;
}

export async function startSyncHarness(
  t: TestContext,
  serverLocalTime: string,
): Promise<SyncHarness> {
  const biotime = await FakeBiotimeServer.start();
  const punchesFunction = await FakePunchesFunction.start();
  const directory = await mkdtemp(join(tmpdir(), "fingerprint-sync-"));

  t.after(async () => {
    await biotime.stop();
    await punchesFunction.stop();
    await rm(directory, { recursive: true, force: true });
  });

  const harness: SyncHarness = {
    biotime,
    punchesFunction,
    serverLocalTime,
    config: {
      biotime: {
        baseUrl: biotime.baseUrl,
        username: BIOTIME_USERNAME,
        password: BIOTIME_PASSWORD,
      },
      recordPunchesFunction: {
        url: punchesFunction.url,
        secret: FUNCTION_SECRET,
      },
      cursorFile: join(directory, "cursor.json"),
      pollIntervalSeconds: 20,
    },
    startSync: () =>
      new FingerprintSync(
        harness.config,
        () => DateTime.fromSQL(harness.serverLocalTime) as DateTime<true>,
      ),
  };

  return harness;
}
