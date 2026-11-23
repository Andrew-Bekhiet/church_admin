import { DateTime } from "luxon";
import { z } from "zod";

const MAX_PUNCHES_PER_REQUEST = 500;

export type FingerprintPunch = z.infer<typeof fingerprintPunch>;

export type FingerprintPunchesRequest = z.infer<
  typeof fingerprintPunchesRequest
>;

const fingerprintPunch = z.object({
  employeeCode: z.string().trim().min(1),
  punchedAt: z.iso.datetime({ offset: true }).transform(
    (isoTimeWithOffset, context) => {
      const punchedAt = DateTime.fromISO(isoTimeWithOffset, { setZone: true });

      if (!punchedAt.isValid) {
        context.addIssue({
          code: "custom",
          message: `Not an instant: ${punchedAt.invalidExplanation}`,
        });

        return z.NEVER;
      }

      return punchedAt;
    },
  ),
  terminalSerial: z.string(),
});

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
