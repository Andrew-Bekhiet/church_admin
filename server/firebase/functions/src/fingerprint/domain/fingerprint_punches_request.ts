import { z } from "zod";
import { earliestInstantAtCairoWallClock } from "./cairo_wall_clock";

const MAX_PUNCHES_PER_REQUEST = 500;
const BIOTIME_PUNCH_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

export type FingerprintPunch = z.infer<typeof fingerprintPunch>;

export type FingerprintPunchesRequest = z.infer<
  typeof fingerprintPunchesRequest
>;

const fingerprintPunch = z.object({
  employeeCode: z.string().trim().min(1),
  punchedAtCairoTime: z.string().transform((cairoWallClock, context) => {
    const punchedAt = earliestInstantAtCairoWallClock(
      cairoWallClock,
      BIOTIME_PUNCH_TIME_FORMAT,
    );

    if (!punchedAt.isValid) {
      context.addIssue({
        code: "custom",
        message: `Not a BioTime punch time: ${punchedAt.invalidExplanation}`,
      });

      return z.NEVER;
    }

    return punchedAt;
  }),
  terminalSerial: z.string(),
}).transform(({ employeeCode, punchedAtCairoTime, terminalSerial }) => ({
  fingerprintId: employeeCode,
  punchedAt: punchedAtCairoTime,
  terminalSerial,
}));

export const fingerprintPunchesRequest = z.object({
  biotimeServerLocalTime: z.iso.datetime({ local: true }),
  punches: z.array(z.unknown()).max(MAX_PUNCHES_PER_REQUEST),
});

export function wellFormedPunchesOf(punches: unknown[]): FingerprintPunch[] {
  return punches.flatMap((punch) => {
    const parsedPunch = fingerprintPunch.safeParse(punch);

    if (!parsedPunch.success) {
      console.warn("Skipped a malformed punch", parsedPunch.error.issues);

      return [];
    }

    return [parsedPunch.data];
  });
}
