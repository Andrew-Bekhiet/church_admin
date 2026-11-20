import { cairoWallClockAt } from "./cairo_wall_clock";

export interface MeetingAutoAttendanceSchedule {
  meetingId: string;
  isoWeekday: number;
  attendanceStartTime: string;
  attendanceEndTime: string;
  communionStartTime: string | null;
  communionEndTime: string | null;
  recordsServants: boolean;
}

export interface RosterMembership {
  meetingId: string;
  personId: string;
  asServant: boolean;
}

export interface PersonPresence {
  personId: string;
  at: Date;
}

export interface AttendanceToRecord {
  meetingId: string;
  personId: string;
  asServant: boolean;
  at: Date;
}

export interface CommunionToRecord {
  personId: string;
  cairoDate: string;
}

export interface PresenceRecords {
  attendance: AttendanceToRecord[];
  communion: CommunionToRecord | null;
  matchedMeetingIds: string[];
}

function isWithinSetWindow(
  timeOfDay: string,
  startTime: string | null,
  endTime: string | null,
): boolean {
  return startTime !== null && endTime !== null &&
    startTime <= timeOfDay && timeOfDay < endTime;
}

export function presenceRecordsFor(
  presence: PersonPresence,
  schedulesByMeetingId: Map<string, MeetingAutoAttendanceSchedule>,
  rosterMemberships: RosterMembership[],
): PresenceRecords {
  const { isoWeekday, date, timeOfDay } = cairoWallClockAt(presence.at);
  const attendance: AttendanceToRecord[] = [];
  const matchedMeetingIds = new Set<string>();
  let tookCommunion = false;

  for (const membership of rosterMemberships) {
    const schedule = schedulesByMeetingId.get(membership.meetingId);

    if (
      membership.personId !== presence.personId ||
      schedule === undefined ||
      schedule.isoWeekday !== isoWeekday
    ) {
      continue;
    }

    if (
      isWithinSetWindow(
        timeOfDay,
        schedule.communionStartTime,
        schedule.communionEndTime,
      )
    ) {
      tookCommunion = true;
      matchedMeetingIds.add(schedule.meetingId);
    }

    const isInAttendanceWindow = isWithinSetWindow(
      timeOfDay,
      schedule.attendanceStartTime,
      schedule.attendanceEndTime,
    );
    const isRecordedInThisRole = !membership.asServant ||
      schedule.recordsServants;

    if (isInAttendanceWindow && isRecordedInThisRole) {
      attendance.push({
        meetingId: schedule.meetingId,
        personId: presence.personId,
        asServant: membership.asServant,
        at: presence.at,
      });
      matchedMeetingIds.add(schedule.meetingId);
    }
  }

  return {
    attendance,
    communion: tookCommunion
      ? { personId: presence.personId, cairoDate: date }
      : null,
    matchedMeetingIds: [...matchedMeetingIds],
  };
}
