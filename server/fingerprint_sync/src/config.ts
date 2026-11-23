import { readFile } from "node:fs/promises";
import { dirname, resolve } from "node:path";
import { z } from "zod";

export type FingerprintSyncConfig = z.infer<typeof fingerprintSyncConfig>;

const fingerprintSyncConfig = z.object({
  biotime: z.object({
    baseUrl: z.url(),
    username: z.string().min(1),
    password: z.string().min(1),
  }),
  recordFingerprintPunches: z.object({
    url: z.url(),
    secret: z.string().min(1),
  }),
  cursorFile: z.string().min(1),
  pollIntervalSeconds: z.number().positive().default(20),
});

export async function loadConfig(path: string): Promise<FingerprintSyncConfig> {
  const parsedConfig = fingerprintSyncConfig.safeParse(
    JSON.parse(await readFile(path, "utf8")),
  );

  if (!parsedConfig.success) {
    throw new Error(
      `Invalid config in ${path}:\n${z.prettifyError(parsedConfig.error)}`,
    );
  }

  return {
    ...parsedConfig.data,
    cursorFile: resolve(dirname(path), parsedConfig.data.cursorFile),
  };
}
