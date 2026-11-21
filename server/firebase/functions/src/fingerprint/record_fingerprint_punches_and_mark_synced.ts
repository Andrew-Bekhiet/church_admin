import { z } from "zod";
import { driftFromCairoWallClockMs } from "./cairo_wall_clock";
import { PersonPresence } from "./presence_matching";
import { findPersonIdsByEmployeeCodes } from "./find_person_ids_by_employee_codes";
import { markFingerprintSyncedAtUnlessALaterSyncIsRecorded } from "./mark_fingerprint_synced_at";
import { recordPresencesInMatchingWindows } from "./record_presences_in_matching_windows";

const MAX_PUNCHES_PER_REQUEST = 500;
const MINUTE_MS = 60 * 1000;
const DAY_MS = 24 * 60 * MINUTE_MS;
const FUTURE_PUNCH_TOLERANCE_MS = 5 * MINUTE_MS;
const OLDEST_ACCEPTED_PUNCH_AGE_MS = 10 * DAY_MS;
const TOLERATED_BIOTIME_CLOCK_DRIFT_MS = 5 * MINUTE_MS;

const fingerprintPunch = z.object({
  employeeCode: z.string().trim().min(1),
  punchedAt: z.iso.datetime({ offset: true }),
  terminalSerial: z.string(),
});

export const fingerprintPunchesRequest = z.object({
  biotimeServerLocalTime: z.iso.datetime({ local: true }),
  punches: z.array(z.unknown()).max(MAX_PUNCHES_PER_REQUEST),
});

export type FingerprintPunch = z.infer<typeof fingerprintPunch>;

export type FingerprintPunchesRequest = z.infer<
  typeof fingerprintPunchesRequest
>;

function wellFormedPunchesOf(punches: unknown[]): FingerprintPunch[] {
  return punches.flatMap((punch) => {
    const parsedPunch = fingerprintPunch.safeParse(punch);

    if (!parsedPunch.success) {
      console.warn("Skipped a malformed punch", parsedPunch.error.issues);

      return [];
    }

    return [parsedPunch.data];
  });
}

export async function recordFingerprintPunchesAndMarkSynced(
  request: FingerprintPunchesRequest,
  now: Date,
): Promise<void> {
  const biotimeClockDriftMs = driftFromCairoWallClockMs(
    request.biotimeServerLocalTime,
    now,
  );

  const isBiotimeClockKnownToBeWithinTolerance =
    Math.abs(biotimeClockDriftMs) <= TOLERATED_BIOTIME_CLOCK_DRIFT_MS;

  if (!isBiotimeClockKnownToBeWithinTolerance) {
    console.warn(
      "BioTime server clock differs from Cairo time by minutes",
      Math.round(biotimeClockDriftMs / MINUTE_MS),
    );
  }

  const punchesWithinAcceptedAge = wellFormedPunchesOf(request.punches).filter((punch) => {
    const punchAgeMs = now.getTime() - Date.parse(punch.punchedAt);
    const isWithinAcceptedPunchAge = punchAgeMs >= -FUTURE_PUNCH_TOLERANCE_MS &&
      punchAgeMs <= OLDEST_ACCEPTED_PUNCH_AGE_MS;

    if (!isWithinAcceptedPunchAge) {
      console.warn(
        "Skipped a punch from the future or older than the limit",
        punch.punchedAt,
        punch.terminalSerial,
      );
    }

    return isWithinAcceptedPunchAge;
  });
  const personIdsByEmployeeCode = punchesWithinAcceptedAge.length === 0
    ? new Map<string, string>()
    : await findPersonIdsByEmployeeCodes([
      ...new Set(punchesWithinAcceptedAge.map((punch) => punch.employeeCode)),
    ]);
  const presences: PersonPresence[] = [];

  for (const punch of punchesWithinAcceptedAge) {
    const personId = personIdsByEmployeeCode.get(punch.employeeCode);

    if (personId === undefined) {
      console.warn(
        "Skipped a punch with an unlinked employee code",
        punch.employeeCode,
        punch.terminalSerial,
      );
      continue;
    }

    presences.push({ personId, at: new Date(punch.punchedAt) });
  }

  await recordPresencesInMatchingWindows(presences);

  try {
    await markFingerprintSyncedAtUnlessALaterSyncIsRecorded(now);
  } catch (e) {
    console.error("Recorded the punches but failed to mark the sync time", e);
  }
}
