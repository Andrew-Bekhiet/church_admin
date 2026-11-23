import { DateTime } from "luxon";
import { cairoWallClockAt } from "./cairo_wall_clock";

export interface PersonPresence {
  personId: string;
  at: DateTime<true>;
}

export interface PresenceCandidate {
  meetingId: string;
  asServant: boolean;
  windowKind: "attendance" | "communion";
}

export interface PresenceWithCandidates {
  presence: PersonPresence;
  candidates: PresenceCandidate[];
}

export interface AttendanceToRecord {
  meetingId: string;
  personId: string;
  asServant: boolean;
  at: DateTime<true>;
}

export interface CommunionToRecord {
  personId: string;
  cairoDate: string;
}

export function attendanceToRecordFor(
  { presence, candidates }: PresenceWithCandidates,
): AttendanceToRecord[] {
  return candidates
    .filter((candidate) => candidate.windowKind === "attendance")
    .map((candidate) => ({
      meetingId: candidate.meetingId,
      personId: presence.personId,
      asServant: candidate.asServant,
      at: presence.at,
    }));
}

export function communionToRecordIfInACommunionWindow(
  { presence, candidates }: PresenceWithCandidates,
): CommunionToRecord[] {
  const isInACommunionWindow = candidates.some(
    (candidate) => candidate.windowKind === "communion",
  );

  return isInACommunionWindow
    ? [{
      personId: presence.personId,
      cairoDate: cairoWallClockAt(presence.at).date,
    }]
    : [];
}
