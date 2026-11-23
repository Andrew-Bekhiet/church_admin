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
  },
  recordFingerprintPunches: {
    url: "https://example.cloudfunctions.net/recordFingerprintPunches",
  },
  cursorFile: "cursor.json",
};

const secretsInVariables = {
  BIOTIME_PASSWORD: "api-password",
  FINGERPRINT_SYNC_SECRET: "sync-secret",
};

async function directoryFor(t: TestContext) {
  const directory = await mkdtemp(join(tmpdir(), "fingerprint-sync-config-"));
  t.after(() => rm(directory, { recursive: true, force: true }));

  return directory;
}

async function configFileWith(t: TestContext, content: unknown) {
  const directory = await directoryFor(t);
  const path = join(directory, "config.json");
  await writeFile(path, JSON.stringify(content));

  return { directory, path };
}

test("keeps the cursor file next to the config file when its path is relative", async (t) => {
  const { directory, path } = await configFileWith(t, {
    ...configWithoutPollInterval,
    cursorFile: join("state", "cursor.json"),
  });

  const config = await loadConfig(path, secretsInVariables);

  assert.equal(config.cursorFile, join(directory, "state", "cursor.json"));
});

test("polls every 20 seconds by default", async (t) => {
  const { path } = await configFileWith(t, configWithoutPollInterval);

  const config = await loadConfig(path, secretsInVariables);

  assert.equal(config.pollIntervalSeconds, 20);
});

test("names the missing setting when the config is incomplete", async (t) => {
  const { path } = await configFileWith(t, {
    ...configWithoutPollInterval,
    recordFingerprintPunches: {},
  });

  await assert.rejects(
    loadConfig(path, secretsInVariables),
    /recordFingerprintPunches\.url/,
  );
});

test("reads the secrets from environment variables", async (t) => {
  const { path } = await configFileWith(t, configWithoutPollInterval);

  const config = await loadConfig(path, {
    BIOTIME_PASSWORD: "api-password",
    FINGERPRINT_SYNC_SECRET: "sync-secret",
  });

  assert.equal(config.biotime.password, "api-password");
  assert.equal(config.recordFingerprintPunches.secret, "sync-secret");
});

test("reads the secrets from the files their _FILE variables name, without a trailing newline or BOM", async (t) => {
  const { directory, path } = await configFileWith(t, configWithoutPollInterval);
  const passwordFile = join(directory, "biotime-password");
  const secretFile = join(directory, "fingerprint-sync-secret");
  await writeFile(passwordFile, "\uFEFFapi-password\r\n");
  await writeFile(secretFile, "sync-secret\n");

  const config = await loadConfig(path, {
    BIOTIME_PASSWORD_FILE: passwordFile,
    FINGERPRINT_SYNC_SECRET_FILE: secretFile,
  });

  assert.equal(config.biotime.password, "api-password");
  assert.equal(config.recordFingerprintPunches.secret, "sync-secret");
});

test("names the variables to set when a secret is missing", async (t) => {
  const { path } = await configFileWith(t, configWithoutPollInterval);

  await assert.rejects(
    loadConfig(path, { BIOTIME_PASSWORD: "api-password" }),
    /FINGERPRINT_SYNC_SECRET or FINGERPRINT_SYNC_SECRET_FILE/,
  );
});

test("refuses a secret set both directly and through a file", async (t) => {
  const { directory, path } = await configFileWith(t, configWithoutPollInterval);
  const passwordFile = join(directory, "biotime-password");
  await writeFile(passwordFile, "api-password");

  await assert.rejects(
    loadConfig(path, {
      ...secretsInVariables,
      BIOTIME_PASSWORD_FILE: passwordFile,
    }),
    /Both BIOTIME_PASSWORD and BIOTIME_PASSWORD_FILE are set/,
  );
});

test("refuses a secret written in the config file", async (t) => {
  const { path } = await configFileWith(t, {
    ...configWithoutPollInterval,
    biotime: { ...configWithoutPollInterval.biotime, password: "api-password" },
  });

  await assert.rejects(
    loadConfig(path, secretsInVariables),
    /password/,
  );
});
