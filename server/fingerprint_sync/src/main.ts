import { DateTime } from "luxon";
import { resolve } from "node:path";
import { parseArgs } from "node:util";
import { isReadableBiotimeTime } from "./biotime/biotime_time";
import { FingerprintSyncConfig, loadConfig } from "./config";
import { FingerprintSync } from "./fingerprint_sync";
import { logError, logInfo } from "./log";
import { pollUntilStopped } from "./poll_until_stopped";

const USAGE = `Usage:
  node lib/main.js [--config <path>]
      Forward new punches every pollIntervalSeconds until stopped.
  node lib/main.js send-range --from "YYYY-MM-DD HH:mm:ss" --to "YYYY-MM-DD HH:mm:ss" [--config <path>]
      Send the punches between two BioTime server local times once, then exit.`;

const DEFAULT_CONFIG_PATH = resolve(__dirname, "..", "config.json");

async function main(): Promise<number> {
  const { values, positionals } = parseArgs({
    allowPositionals: true,
    options: {
      config: { type: "string", default: DEFAULT_CONFIG_PATH },
      from: { type: "string" },
      to: { type: "string" },
    },
  });
  const config = await loadConfig(resolve(values.config), process.env);
  const sync = new FingerprintSync(config, () => DateTime.local());

  switch (positionals[0]) {
    case undefined:
      await pollUntilSignalled(sync, config);

      return 0;
    case "send-range":
      return await sendRangeIfReadable(sync, values.from, values.to);
    default:
      console.error(USAGE);

      return 2;
  }
}

async function sendRangeIfReadable(
  sync: FingerprintSync,
  from: string | undefined,
  to: string | undefined,
): Promise<number> {
  if (
    from === undefined || to === undefined ||
    !isReadableBiotimeTime(from) || !isReadableBiotimeTime(to)
  ) {
    console.error(USAGE);

    return 2;
  }

  await sync.sendPunchesBetween(from, to);

  return 0;
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
