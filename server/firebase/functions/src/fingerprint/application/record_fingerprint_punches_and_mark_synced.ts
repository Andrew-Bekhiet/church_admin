import { DateTime } from "luxon";
import { markFingerprintSyncedAtUnlessALaterSyncIsRecorded } from "../data/mark_fingerprint_synced_at";
import { PunchAge, punchAgeAt } from "../domain/accepted_punch_age";
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
import {
  PresenceWindowMatches,
  recordPresencesInCandidateWindows,
} from "./record_presences_in_candidate_windows";

export interface FingerprintPunchesReport extends PresenceWindowMatches {
  ignoredMalformed: number;
  ignoredTooOld: number;
  ignoredInFuture: number;
  ignoredUnlinkedEmployeeCode: number;
}

export async function recordFingerprintPunchesAndMarkSynced(
  request: FingerprintPunchesRequest,
  now: DateTime<true>,
): Promise<FingerprintPunchesReport> {
  warnUnlessBiotimeClockIsKnownToMatchCairoTime(
    request.biotimeServerLocalTime,
    now,
  );

  const wellFormedPunches = wellFormedPunchesOf(request.punches);
  const punchesByAge = punchesByAgeAt(wellFormedPunches, now);
  const linkedPresences = await presencesOfLinkedPunches(punchesByAge.accepted);
  const windowMatches = await recordPresencesInCandidateWindows(
    linkedPresences,
  );

  try {
    await markFingerprintSyncedAtUnlessALaterSyncIsRecorded(now);
  } catch (e) {
    console.error("Recorded the punches but failed to mark the sync time", e);
  }

  return {
    ...windowMatches,
    ignoredMalformed: request.punches.length - wellFormedPunches.length,
    ignoredTooOld: punchesByAge.tooOld.length,
    ignoredInFuture: punchesByAge.inFuture.length,
    ignoredUnlinkedEmployeeCode:
      punchesByAge.accepted.length - linkedPresences.length,
  };
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

function punchesByAgeAt(
  punches: FingerprintPunch[],
  now: DateTime<true>,
): Record<PunchAge, FingerprintPunch[]> {
  const punchesByAge: Record<PunchAge, FingerprintPunch[]> = {
    accepted: [],
    tooOld: [],
    inFuture: [],
  };

  for (const punch of punches) {
    const age = punchAgeAt(punch.punchedAt, now);

    if (age === "tooOld") {
      console.warn(
        "Ignored a punch older than the limit",
        punch.punchedAt.toISO(),
        punch.terminalSerial,
      );
    } else if (age === "inFuture") {
      console.warn(
        "Ignored a punch from the future",
        punch.punchedAt.toISO(),
        punch.terminalSerial,
      );
    }

    punchesByAge[age].push(punch);
  }

  return punchesByAge;
}
