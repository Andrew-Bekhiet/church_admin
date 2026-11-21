import { cairoWallClockAt } from "../domain/cairo_wall_clock";
import { PersonPresence, PresenceWithCandidates } from "../domain/presence";
import { requestAsFingerprintSync } from "./request_as_fingerprint_sync";

export interface FingerprintBotAndPresencesWithCandidates {
  fingerprintBotUid: string;
  presencesWithCandidates: PresenceWithCandidates[];
}

export async function findFingerprintBotUidAndCandidatesOfEachPresence(
  presences: PersonPresence[],
): Promise<FingerprintBotAndPresencesWithCandidates> {
  const data = await requestAsFingerprintSync(
    fingerprintBotAndCandidatesQueryFor(presences.length),
    cairoWallClockVariablesOf(presences),
    "findFingerprintBotUidAndCandidatesOfEachPresence",
  );
  const fingerprintBots: { uid: string }[] = data["authUsersData"];

  if (fingerprintBots.length !== 1) {
    throw new Error(
      `Expected one fingerprint bot user, found ${fingerprintBots.length}`,
    );
  }

  return {
    fingerprintBotUid: fingerprintBots[0].uid,
    presencesWithCandidates: presences.map((presence, index) => ({
      presence,
      candidates: data[candidatesAliasOf(index)],
    })),
  };
}

function fingerprintBotAndCandidatesQueryFor(presenceCount: number): string {
  const presenceIndexes = [...Array(presenceCount).keys()];
  const variableDefinitions = presenceIndexes.map((index) => `
        $personId${index}: uuid!
        $isoWeekday${index}: smallint!
        $timeOfDay${index}: time!`);
  const candidatesOfEachPresence = presenceIndexes.map((index) => `
        ${candidatesAliasOf(index)}: historyMeetingAutoPresenceCandidates(
          where: {
            personId: { _eq: $personId${index} }
            isoWeekday: { _eq: $isoWeekday${index} }
            windowStartTime: { _lte: $timeOfDay${index} }
            windowEndTime: { _gt: $timeOfDay${index} }
          }
        ) {
          meetingId
          asServant
          windowKind
        }`);

  return `
      query findFingerprintBotUidAndCandidatesOfEachPresence(
        ${variableDefinitions.join("")}
      ) {
        authUsersData {
          uid
        }
        ${candidatesOfEachPresence.join("")}
      }
    `;
}

function cairoWallClockVariablesOf(
  presences: PersonPresence[],
): Record<string, unknown> {
  return Object.fromEntries(
    presences.flatMap((presence, index) => {
      const { isoWeekday, timeOfDay } = cairoWallClockAt(presence.at);

      return [
        [`personId${index}`, presence.personId],
        [`isoWeekday${index}`, isoWeekday],
        [`timeOfDay${index}`, timeOfDay],
      ];
    }),
  );
}

function candidatesAliasOf(presenceIndex: number): string {
  return `candidatesOfPresence${presenceIndex}`;
}
