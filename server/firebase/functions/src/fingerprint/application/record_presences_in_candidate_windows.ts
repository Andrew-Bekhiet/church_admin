import { findFingerprintBotUidAndCandidatesOfEachPresence } from "../data/find_presence_candidates";
import { writePresenceRecords } from "../data/write_presence_records";
import {
  attendanceToRecordFor,
  communionToRecordIfInACommunionWindow,
  PersonPresence,
  PresenceWithCandidates,
} from "../domain/presence";

function warnUnlessPresenceMatchedExactlyOneMeeting(
  { presence, candidates }: PresenceWithCandidates,
): void {
  const matchedMeetingIds = [
    ...new Set(candidates.map((candidate) => candidate.meetingId)),
  ];

  if (matchedMeetingIds.length === 0) {
    console.warn(
      "Presence matched no meeting window",
      presence.personId,
      presence.at.toUTC().toISO(),
    );
  } else if (matchedMeetingIds.length > 1) {
    console.warn(
      "Presence matched several meetings",
      presence.personId,
      presence.at.toUTC().toISO(),
      matchedMeetingIds,
    );
  }
}

export async function recordPresencesInCandidateWindows(
  presences: PersonPresence[],
): Promise<void> {
  if (presences.length === 0) return;

  const { fingerprintBotUid, presencesWithCandidates } =
    await findFingerprintBotUidAndCandidatesOfEachPresence(presences);

  presencesWithCandidates.forEach(warnUnlessPresenceMatchedExactlyOneMeeting);

  await writePresenceRecords(
    fingerprintBotUid,
    presencesWithCandidates.flatMap(attendanceToRecordFor),
    presencesWithCandidates.flatMap(communionToRecordIfInACommunionWindow),
  );
}
