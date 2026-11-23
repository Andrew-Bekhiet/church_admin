import { Duration } from "luxon";
import { cairoWallClockAt } from "../domain/cairo_wall_clock";
import {
  PersonPresence,
  PresenceCandidate,
  PresenceWithCandidates,
} from "../domain/presence";
import { requestAsFingerprintSync } from "./request_as_fingerprint_sync";

export interface FingerprintBotAndPresencesWithCandidates {
  fingerprintBotUid: string;
  presencesWithCandidates: PresenceWithCandidates[];
}

interface WindowHoldingOnePresenceBoolExp {
  personId: { _eq: string };
  isoWeekday: { _eq: number };
  windowStartTime: { _lte: string };
  windowEndTime: { _gt: string };
}

interface CandidateWindowRow extends PresenceCandidate {
  personId: string;
  isoWeekday: number;
  windowStartTime: string;
  windowEndTime: string;
}

interface CandidateWindow {
  candidate: PresenceCandidate;
  personId: string;
  isoWeekday: number;
  startMillisSinceMidnight: number;
  endMillisSinceMidnight: number;
}

export async function findFingerprintBotUidAndCandidatesOfEachPresence(
  presences: PersonPresence[],
): Promise<FingerprintBotAndPresencesWithCandidates> {
  const data = await requestAsFingerprintSync(
    `
  query findFingerprintBotUidAndCandidatesOfEachPresence(
    $where: HistoryMeetingAutoPresenceCandidatesBoolExp!
  ) {
    authUsersData {
      uid
    }
    historyMeetingAutoPresenceCandidates(where: $where) {
      personId
      isoWeekday
      windowStartTime
      windowEndTime
      meetingId
      asServant
      windowKind
    }
  }
`,
    { where: { _or: oneWindowFilterPerDistinctPersonAndCairoTime(presences) } },
    "findFingerprintBotUidAndCandidatesOfEachPresence",
  );
  const fingerprintBots: { uid: string }[] = data["authUsersData"];

  if (fingerprintBots.length !== 1) {
    throw new Error(
      `Expected one fingerprint bot user, found ${fingerprintBots.length}`,
    );
  }

  const candidateWindows = candidateWindowsOf(
    data["historyMeetingAutoPresenceCandidates"],
  );

  return {
    fingerprintBotUid: fingerprintBots[0].uid,
    presencesWithCandidates: presences.map((presence) => ({
      presence,
      candidates: candidatesWhoseWindowHolds(presence, candidateWindows),
    })),
  };
}

function oneWindowFilterPerDistinctPersonAndCairoTime(
  presences: PersonPresence[],
): WindowHoldingOnePresenceBoolExp[] {
  const filtersByPersonAndCairoTime = new Map<
    string,
    WindowHoldingOnePresenceBoolExp
  >();

  for (const { personId, at } of presences) {
    const { isoWeekday, timeOfDay } = cairoWallClockAt(at);

    filtersByPersonAndCairoTime.set(
      [personId, isoWeekday, timeOfDay].join("|"),
      {
        personId: { _eq: personId },
        isoWeekday: { _eq: isoWeekday },
        windowStartTime: { _lte: timeOfDay },
        windowEndTime: { _gt: timeOfDay },
      },
    );
  }

  return [...filtersByPersonAndCairoTime.values()];
}

function candidateWindowsOf(rows: CandidateWindowRow[]): CandidateWindow[] {
  return rows.map((row) => ({
    candidate: {
      meetingId: row.meetingId,
      asServant: row.asServant,
      windowKind: row.windowKind,
    },
    personId: row.personId,
    isoWeekday: row.isoWeekday,
    startMillisSinceMidnight: millisSinceMidnightAt(row.windowStartTime),
    endMillisSinceMidnight: millisSinceMidnightAt(row.windowEndTime),
  }));
}

function millisSinceMidnightAt(timeOfDay: string): number {
  const sinceMidnight = Duration.fromISOTime(timeOfDay);

  if (!sinceMidnight.isValid) {
    throw new RangeError(
      `Not a time of day: ${sinceMidnight.invalidExplanation}`,
    );
  }

  return sinceMidnight.toMillis();
}

function candidatesWhoseWindowHolds(
  presence: PersonPresence,
  candidateWindows: CandidateWindow[],
): PresenceCandidate[] {
  const { isoWeekday, timeOfDay } = cairoWallClockAt(presence.at);
  const presenceMillisSinceMidnight = millisSinceMidnightAt(timeOfDay);

  return candidateWindows
    .filter((window) =>
      window.personId === presence.personId &&
      window.isoWeekday === isoWeekday &&
      window.startMillisSinceMidnight <= presenceMillisSinceMidnight &&
      presenceMillisSinceMidnight < window.endMillisSinceMidnight
    )
    .map((window) => window.candidate);
}
