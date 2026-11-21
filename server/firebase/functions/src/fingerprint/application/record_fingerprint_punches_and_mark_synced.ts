import { DateTime } from "luxon";
import { markFingerprintSyncedAtUnlessALaterSyncIsRecorded } from "../data/mark_fingerprint_synced_at";
import { isWithinAcceptedPunchAge } from "../domain/accepted_punch_age";
import {
  driftFromCairoWallClockOrInvalidIfUnreadable,
  isKnownToBeWithinToleratedBiotimeClockDrift,
} from "../domain/biotime_clock_drift";
import {
  FingerprintPunch,
  FingerprintPunchesRequest,
  wellFormedPunchesOf,
} from "../domain/fingerprint_punches_request";
import { presencesOfLinkedPunches } from "./presences_of_linked_punches";
import { recordPresencesInCandidateWindows } from "./record_presences_in_candidate_windows";

export async function recordFingerprintPunchesAndMarkSynced(
  request: FingerprintPunchesRequest,
  now: DateTime<true>,
): Promise<void> {
  warnUnlessBiotimeClockIsKnownToMatchCairoTime(
    request.biotimeServerLocalTime,
    now,
  );

  const validPunches = punchesWithinAcceptedAge(
    wellFormedPunchesOf(request.punches),
    now,
  );
  const presenceRecords = await presencesOfLinkedPunches(validPunches);

  await recordPresencesInCandidateWindows(presenceRecords);

  try {
    await markFingerprintSyncedAtUnlessALaterSyncIsRecorded(now);
  } catch (e) {
    console.error("Recorded the punches but failed to mark the sync time", e);
  }
}

function warnUnlessBiotimeClockIsKnownToMatchCairoTime(
  biotimeServerLocalTime: string,
  now: DateTime<true>,
): void {
  const biotimeClockDrift = driftFromCairoWallClockOrInvalidIfUnreadable(
    biotimeServerLocalTime,
    now,
  );

  if (!isKnownToBeWithinToleratedBiotimeClockDrift(biotimeClockDrift)) {
    console.warn(
      "BioTime server clock differs from Cairo time by minutes",
      Math.round(biotimeClockDrift.as("minutes")),
    );
  }
}

function punchesWithinAcceptedAge(
  punches: FingerprintPunch[],
  now: DateTime<true>,
): FingerprintPunch[] {
  return punches.filter((punch) => {
    const isAccepted = isWithinAcceptedPunchAge(punch.punchedAt, now);

    if (!isAccepted) {
      console.warn(
        "Skipped a punch from the future or older than the limit",
        punch.punchedAt.toISO(),
        punch.terminalSerial,
      );
    }

    return isAccepted;
  });
}
