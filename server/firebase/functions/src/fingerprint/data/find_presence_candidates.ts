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

interface CandidateWindowRow extends PresenceCandidate {
  personId: string;
  isoWeekday: number;
  windowStartTime: string;
  windowEndTime: string;
}

interface CandidateWindow {
  candidate: PresenceCandidate;
  isoWeekday: number;
  startMillisSinceMidnight: number;
  endMillisSinceMidnight: number;
}

export async function findFingerprintBotUidAndCandidatesOfEachPresence(
  presences: PersonPresence[],
): Promise<FingerprintBotAndPresencesWithCandidates> {
  const data = await requestAsFingerprintSync(
    `
  query findFingerprintBotUidAndCandidatesOfEachPresence($personIds: [uuid!]!) {
    authUsersData {
      uid
    }
    historyMeetingAutoPresenceCandidates(
      where: { personId: { _in: $personIds } }
    ) {
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
    { personIds: [...new Set(presences.map(({ personId }) => personId))] },
    "findFingerprintBotUidAndCandidatesOfEachPresence",
  );
  const fingerprintBots: { uid: string }[] = data["authUsersData"];

  if (fingerprintBots.length !== 1) {
    throw new Error(
      `Expected one fingerprint bot user, found ${fingerprintBots.length}`,
    );
  }

  const candidateWindowsByPersonId = candidateWindowsByPersonIdOf(
    data["historyMeetingAutoPresenceCandidates"],
  );

  return {
    fingerprintBotUid: fingerprintBots[0].uid,
    presencesWithCandidates: presences.map((presence) => ({
      presence,
      candidates: candidatesWhoseWindowHolds(
        presence,
        candidateWindowsByPersonId.get(presence.personId) ?? [],
      ),
    })),
  };
}

function candidateWindowsByPersonIdOf(
  rows: CandidateWindowRow[],
): Map<string, CandidateWindow[]> {
  const windowsByPersonId = new Map<string, CandidateWindow[]>();

  for (const row of rows) {
    const windowsOfPerson = windowsByPersonId.get(row.personId) ?? [];

    windowsOfPerson.push({
      candidate: {
        meetingId: row.meetingId,
        asServant: row.asServant,
        windowKind: row.windowKind,
      },
      isoWeekday: row.isoWeekday,
      startMillisSinceMidnight: millisSinceMidnightAt(row.windowStartTime),
      endMillisSinceMidnight: millisSinceMidnightAt(row.windowEndTime),
    });
    windowsByPersonId.set(row.personId, windowsOfPerson);
  }

  return windowsByPersonId;
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
  windowsOfPerson: CandidateWindow[],
): PresenceCandidate[] {
  const { isoWeekday, timeOfDay } = cairoWallClockAt(presence.at);
  const presenceMillisSinceMidnight = millisSinceMidnightAt(timeOfDay);

  return windowsOfPerson
    .filter((window) =>
      window.isoWeekday === isoWeekday &&
      window.startMillisSinceMidnight <= presenceMillisSinceMidnight &&
      presenceMillisSinceMidnight < window.endMillisSinceMidnight
    )
    .map((window) => window.candidate);
}
