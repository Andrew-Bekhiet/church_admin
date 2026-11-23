import assert from "node:assert/strict";
import { mkdtemp, rm, writeFile } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join } from "node:path";
import { test, TestContext } from "node:test";
import { loadConfig } from "../src/config";

const configWithoutPollInterval = {
  biotime: {
    baseUrl: "http://127.0.0.1:8090",
    username: "api-user",
    password: "api-password",
  },
  recordPunchesFunction: {
    url: "https://example.cloudfunctions.net/recordFingerprintPunches",
    secret: "secret",
  },
  cursorFile: "cursor.json",
};

async function configFileWith(t: TestContext, content: unknown) {
  const directory = await mkdtemp(join(tmpdir(), "fingerprint-sync-config-"));
  t.after(() => rm(directory, { recursive: true, force: true }));
  const path = join(directory, "config.json");
  await writeFile(path, JSON.stringify(content));

  return { directory, path };
}

test("keeps the cursor file next to the config file when its path is relative", async (t) => {
  const { directory, path } = await configFileWith(t, {
    ...configWithoutPollInterval,
    cursorFile: join("state", "cursor.json"),
  });

  const config = await loadConfig(path);

  assert.equal(config.cursorFile, join(directory, "state", "cursor.json"));
});

test("polls every 20 seconds unless the config says otherwise", async (t) => {
  const { path } = await configFileWith(t, configWithoutPollInterval);

  const config = await loadConfig(path);

  assert.equal(config.pollIntervalSeconds, 20);
});

test("names the missing setting when the config is incomplete", async (t) => {
  const { path } = await configFileWith(t, {
    ...configWithoutPollInterval,
    recordPunchesFunction: {
      url: configWithoutPollInterval.recordPunchesFunction.url,
    },
  });

  await assert.rejects(loadConfig(path), /recordPunchesFunction\.secret/);
});
