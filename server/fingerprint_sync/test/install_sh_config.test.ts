import assert from "node:assert/strict";
import { execFileSync } from "node:child_process";
import { mkdtemp, rm, writeFile } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join } from "node:path";
import { test, TestContext } from "node:test";
import { loadConfig } from "../src/config";

const INSTALL_SCRIPT = join(__dirname, "..", "..", "scripts", "install.sh");
const RUNS_ONLY_WHERE_THE_SCRIPT_RUNS = { skip: process.platform === "win32" };

const awkwardSettings = {
  biotimeUrl: "http://127.0.0.1:8090/path?a=1&b=\"two\"",
  biotimeUsername: "o\"brien \\ tab\there\nnew line é ✓",
  functionUrl: "https://europe-west1-example.cloudfunctions.net/recordFingerprintPunches",
  pollIntervalSeconds: "45",
};

function runInstallScriptFunction(shellCode: string, ...args: string[]): string {
  return execFileSync(
    "bash",
    ["-c", `source "$1"; shift; ${shellCode}`, "install-sh-test", INSTALL_SCRIPT, ...args],
    { encoding: "utf8" },
  );
}

function renderedConfigFor(settings: typeof awkwardSettings): string {
  return runInstallScriptFunction(
    "render_config \"$1\" \"$2\" \"$3\" \"$4\"",
    settings.biotimeUrl,
    settings.biotimeUsername,
    settings.functionUrl,
    settings.pollIntervalSeconds,
  );
}

async function fileWith(t: TestContext, text: string): Promise<string> {
  const directory = await mkdtemp(join(tmpdir(), "fingerprint-sync-install-"));
  t.after(() => rm(directory, { recursive: true, force: true }));
  const path = join(directory, "config.json");
  await writeFile(path, text);

  return path;
}

test("the Linux wizard writes awkward settings as a config the service accepts", RUNS_ONLY_WHERE_THE_SCRIPT_RUNS, async (t) => {
  const path = await fileWith(t, renderedConfigFor(awkwardSettings));

  const config = await loadConfig(path, {
    BIOTIME_PASSWORD: "api-password",
    FINGERPRINT_SYNC_SECRET: "sync-secret",
  });

  assert.equal(config.biotime.baseUrl, awkwardSettings.biotimeUrl);
  assert.equal(config.biotime.username, awkwardSettings.biotimeUsername);
  assert.equal(config.recordFingerprintPunches.url, awkwardSettings.functionUrl);
  assert.equal(config.pollIntervalSeconds, 45);
});

test("the Linux wizard reads back the settings it wrote", RUNS_ONLY_WHERE_THE_SCRIPT_RUNS, async (t) => {
  const path = await fileWith(t, renderedConfigFor(awkwardSettings));

  const readBack = runInstallScriptFunction(
    "read_settings_from \"$1\"; printf '%s\\0' \"$biotime_url\" \"$biotime_username\" \"$function_url\" \"$poll_interval_seconds\"",
    path,
  ).split("\0").slice(0, 4);

  assert.deepEqual(readBack, [
    awkwardSettings.biotimeUrl,
    awkwardSettings.biotimeUsername,
    awkwardSettings.functionUrl,
    awkwardSettings.pollIntervalSeconds,
  ]);
});
