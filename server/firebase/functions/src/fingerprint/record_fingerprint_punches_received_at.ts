import { z } from "zod";
import { cairoWallClockDriftMs } from "./cairo_wall_clock";
import { PersonPresence } from "./presence_matching";
import { findPersonIdsByEmployeeCodes } from "./find_person_ids_by_employee_codes";
import { markFingerprintSyncedAt } from "./mark_fingerprint_synced_at";
import { recordPresenceOfPersons } from "./record_presence_of_persons";

const MAX_PUNCHES_PER_REQUEST = 500;
const MINUTE_MS = 60 * 1000;
const DAY_MS = 24 * 60 * MINUTE_MS;
const FUTURE_PUNCH_TOLERANCE_MS = 5 * MINUTE_MS;
const OLDEST_ACCEPTED_PUNCH_AGE_MS = 10 * DAY_MS;
const TOLERATED_BIOTIME_CLOCK_DRIFT_MS = 5 * MINUTE_MS;

export const fingerprintPunchesRequest = z.object({
  biotimeServerLocalTime: z.iso.datetime({ local: true }),
  punches: z
    .array(
      z.object({
        employeeCode: z.string().trim().min(1),
        punchedAt: z.iso.datetime({ offset: true }),
        terminalSerial: z.string(),
      }),
    )
    .max(MAX_PUNCHES_PER_REQUEST),
});

export type FingerprintPunchesRequest = z.infer<
  typeof fingerprintPunchesRequest
>;

export async function recordFingerprintPunchesReceivedAt(
  request: FingerprintPunchesRequest,
  now: Date,
): Promise<void> {
  const biotimeClockDriftMs = cairoWallClockDriftMs(
    request.biotimeServerLocalTime,
    now,
  );

  if (Math.abs(biotimeClockDriftMs) > TOLERATED_BIOTIME_CLOCK_DRIFT_MS) {
    console.warn(
      "BioTime server clock differs from Cairo time by minutes",
      Math.round(biotimeClockDriftMs / MINUTE_MS),
    );
  }

  const punchesWithinLimits = request.punches.filter((punch) => {
    const punchAgeMs = now.getTime() - Date.parse(punch.punchedAt);
    const isWithinLimits = punchAgeMs >= -FUTURE_PUNCH_TOLERANCE_MS &&
      punchAgeMs <= OLDEST_ACCEPTED_PUNCH_AGE_MS;

    if (!isWithinLimits) {
      console.warn(
        "Skipped a punch from the future or older than the limit",
        punch.punchedAt,
        punch.terminalSerial,
      );
    }

    return isWithinLimits;
  });
  const personIdsByEmployeeCode = punchesWithinLimits.length === 0
    ? new Map<string, string>()
    : await findPersonIdsByEmployeeCodes([
      ...new Set(punchesWithinLimits.map((punch) => punch.employeeCode)),
    ]);
  const presences: PersonPresence[] = [];

  for (const punch of punchesWithinLimits) {
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

  await recordPresenceOfPersons(presences);
  await markFingerprintSyncedAt(now);
}
