import { readFile } from "node:fs/promises";
import { dirname, resolve } from "node:path";
import { z } from "zod";

export interface FingerprintSyncConfig {
  biotime: {
    baseUrl: string;
    username: string;
    password: string;
  };
  recordFingerprintPunches: {
    url: string;
    secret: string;
  };
  cursorFile: string;
  pollIntervalSeconds: number;
}

type Environment = Record<string, string | undefined>;

const configFileWithoutSecrets = z.strictObject({
  biotime: z.strictObject({
    baseUrl: z.url(),
    username: z.string().min(1),
  }),
  recordFingerprintPunches: z.strictObject({
    url: z.url(),
  }),
  cursorFile: z.string().min(1),
  pollIntervalSeconds: z.number().positive().default(20),
});

export async function loadConfig(
  path: string,
  environment: Environment,
): Promise<FingerprintSyncConfig> {
  const parsedConfig = configFileWithoutSecrets.safeParse(
    JSON.parse(await readFile(path, "utf8")),
  );

  if (!parsedConfig.success) {
    throw new Error(
      `Invalid config in ${path} (secrets belong in environment variables, not in this file):\n${z.prettifyError(parsedConfig.error)}`,
    );
  }

  const { biotime, recordFingerprintPunches, cursorFile, pollIntervalSeconds } =
    parsedConfig.data;

  return {
    biotime: {
      ...biotime,
      password: await secretFrom(environment, "BIOTIME_PASSWORD"),
    },
    recordFingerprintPunches: {
      ...recordFingerprintPunches,
      secret: await secretFrom(environment, "FINGERPRINT_SYNC_SECRET"),
    },
    cursorFile: resolve(dirname(path), cursorFile),
    pollIntervalSeconds,
  };
}

async function secretFrom(
  environment: Environment,
  variable: string,
): Promise<string> {
  const fileVariable = `${variable}_FILE`;
  const directValue = environment[variable];
  const secretFile = environment[fileVariable];

  if (directValue !== undefined && secretFile !== undefined) {
    throw new Error(`Both ${variable} and ${fileVariable} are set; keep only one`);
  }

  const secret = secretFile === undefined
    ? directValue
    : withoutBomAndTrailingNewline(await readFile(secretFile, "utf8"));

  if (!secret) {
    throw new Error(`Set ${variable} or ${fileVariable}`);
  }

  return secret;
}

function withoutBomAndTrailingNewline(fileText: string): string {
  return fileText.replace(/^\uFEFF/, "").replace(/\r?\n$/, "");
}
