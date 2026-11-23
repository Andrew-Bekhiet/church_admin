import { DateTime } from "luxon";
import { dirname, resolve } from "node:path";
import { isSea } from "node:sea";
import { parseArgs } from "node:util";
import { isReadableBiotimeTime } from "./biotime/biotime_time";
import { FingerprintSyncConfig, loadConfig } from "./config";
import { FingerprintSync } from "./fingerprint_sync";
import { logError, logInfo } from "./log";
import { pollUntilStopped } from "./poll_until_stopped";

const USAGE = `Usage:
  fingerprint-sync [--config <path>]
      Forward new punches every pollIntervalSeconds until stopped.
  fingerprint-sync check [--config <path>]
      Log in to BioTime and send one empty request to recordFingerprintPunches, then exit.
  fingerprint-sync send-range --from "YYYY-MM-DD HH:mm:ss" --to "YYYY-MM-DD HH:mm:ss" [--config <path>]
      Send the punches between two BioTime server local times once, then exit.

Without --config, config.json next to the executable is used.
Run from source, use "node lib/main.js" in place of "fingerprint-sync".`;

const EXIT_USAGE = 2;

async function main(): Promise<number> {
  const { values, positionals } = parseArgs({
    allowPositionals: true,
    options: {
      config: { type: "string", default: defaultConfigPath() },
      from: { type: "string" },
      to: { type: "string" },
    },
  });
  const command = positionals[0];
  const isSendRangeWithReadableTimes = command === "send-range" &&
    values.from !== undefined && isReadableBiotimeTime(values.from) &&
    values.to !== undefined && isReadableBiotimeTime(values.to);

  if (command !== undefined && command !== "check" && !isSendRangeWithReadableTimes) {
    console.error(USAGE);

    return EXIT_USAGE;
  }

  const config = await loadConfig(resolve(values.config), process.env);
  const sync = new FingerprintSync(config, () => DateTime.local());

  if (command === "check") {
    await sync.verifyBiotimeAndFunctionAccess();
    logInfo("BioTime and recordFingerprintPunches both accept this config");
  } else if (command === "send-range") {
    await sync.sendPunchesBetween(values.from!, values.to!);
  } else {
    await pollUntilSignalled(sync, config);
  }

  return 0;
}

function defaultConfigPath(): string {
  const folderHoldingConfig = isSea()
    ? dirname(process.execPath)
    : resolve(__dirname, "..");

  return resolve(folderHoldingConfig, "config.json");
}

async function pollUntilSignalled(
  sync: FingerprintSync,
  config: FingerprintSyncConfig,
): Promise<void> {
  const stop = new AbortController();
  process.once("SIGINT", () => stop.abort());
  process.once("SIGTERM", () => stop.abort());
  logInfo(
    `Polling ${config.biotime.baseUrl} every ${config.pollIntervalSeconds} seconds`,
  );

  await pollUntilStopped(
    () => sync.pollOnce(),
    config.pollIntervalSeconds,
    stop.signal,
  );

  logInfo("Stopped");
}

main().then(
  (exitCode) => {
    process.exitCode = exitCode;
  },
  (e) => {
    logError(e);
    process.exitCode = 1;
  },
);
