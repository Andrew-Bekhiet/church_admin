import assert from "node:assert/strict";
import { execFile } from "node:child_process";
import { writeFile } from "node:fs/promises";
import { dirname, join } from "node:path";
import { test } from "node:test";
import { SyncHarness, startSyncHarness } from "./support/sync_harness";

const MAIN_SCRIPT = join(__dirname, "..", "src", "main.js");

interface CommandResult {
  exitCode: number;
  output: string;
}

function runMain(
  args: string[],
  environment: Record<string, string>,
): Promise<CommandResult> {
  return new Promise((resolveResult) => {
    execFile(
      process.execPath,
      [MAIN_SCRIPT, ...args],
      { env: { ...process.env, ...environment } },
      (error, stdout, stderr) => {
        resolveResult({
          exitCode: error === null ? 0 : Number(error.code),
          output: stdout + stderr,
        });
      },
    );
  });
}

async function configFileFor(harness: SyncHarness): Promise<string> {
  const path = join(dirname(harness.config.cursorFile), "config.json");
  await writeFile(path, JSON.stringify({
    biotime: {
      baseUrl: harness.config.biotime.baseUrl,
      username: harness.config.biotime.username,
    },
    recordFingerprintPunches: { url: harness.config.recordFingerprintPunches.url },
    cursorFile: "cursor.json",
  }));

  return path;
}

test("check exits 0 when BioTime and the function accept the config", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const configPath = await configFileFor(harness);

  const result = await runMain(["check", "--config", configPath], {
    BIOTIME_PASSWORD: harness.config.biotime.password,
    FINGERPRINT_SYNC_SECRET: harness.config.recordFingerprintPunches.secret,
  });

  assert.equal(result.exitCode, 0, result.output);
});

test("check exits 1 and names the function when it rejects the secret", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const configPath = await configFileFor(harness);

  const result = await runMain(["check", "--config", configPath], {
    BIOTIME_PASSWORD: harness.config.biotime.password,
    FINGERPRINT_SYNC_SECRET: "wrong-secret",
  });

  assert.equal(result.exitCode, 1);
  assert.match(result.output, /recordFingerprintPunches/);
});

test("an unknown command prints the usage and exits 2 without reading a config", async () => {
  const result = await runMain(
    ["unknown-command", "--config", join(__dirname, "no-such-config.json")],
    {},
  );

  assert.equal(result.exitCode, 2);
  assert.match(result.output, /Usage:/);
});

test("send-range with an unreadable time prints the usage and exits 2", async () => {
  const result = await runMain(
    ["send-range", "--from", "yesterday", "--to", "2026-11-27 13:00:00"],
    {},
  );

  assert.equal(result.exitCode, 2);
  assert.match(result.output, /Usage:/);
});
