import {
  AttendanceToRecord,
  CommunionToRecord,
  MeetingAutoAttendanceSchedule,
  PersonPresence,
  presenceRecordsFor,
  RosterMembership,
} from "./presence_matching";
import { requestAsFingerprintSync } from "./request_as_fingerprint_sync";

interface ScheduledMeetingRow {
  id: string;
  autoAttendanceWeekday: number;
  autoAttendanceStartTime: string;
  autoAttendanceEndTime: string;
  autoCommunionStartTime: string | null;
  autoCommunionEndTime: string | null;
  autoAttendanceRecordsServants: boolean;
}

interface PresenceRecordingContext {
  fingerprintBotUid: string;
  schedulesByMeetingId: Map<string, MeetingAutoAttendanceSchedule>;
  rosterMemberships: RosterMembership[];
}

async function fetchPresenceRecordingContext(
  personIds: string[],
): Promise<PresenceRecordingContext> {
  const data = await requestAsFingerprintSync(
    `
      query presenceRecordingContext($personIds: [uuid!]!) {
        authUsersData {
          uid
        }
        historyMeetings {
          id
          autoAttendanceWeekday
          autoAttendanceStartTime
          autoAttendanceEndTime
          autoCommunionStartTime
          autoCommunionEndTime
          autoAttendanceRecordsServants
        }
        historyMeetingRoster(where: { personId: { _in: $personIds } }) {
          meetingId
          personId
          asServant
        }
      }
    `,
    { personIds },
    "presenceRecordingContext",
  );
  const fingerprintBots: { uid: string }[] = data["authUsersData"];
  const scheduledMeetings: ScheduledMeetingRow[] = data["historyMeetings"];

  if (fingerprintBots.length !== 1) {
    throw new Error(
      `Expected one fingerprint bot user, found ${fingerprintBots.length}`,
    );
  }

  return {
    fingerprintBotUid: fingerprintBots[0].uid,
    schedulesByMeetingId: new Map(
      scheduledMeetings.map((meeting) => [
        meeting.id,
        {
          meetingId: meeting.id,
          isoWeekday: meeting.autoAttendanceWeekday,
          attendanceStartTime: meeting.autoAttendanceStartTime,
          attendanceEndTime: meeting.autoAttendanceEndTime,
          communionStartTime: meeting.autoCommunionStartTime,
          communionEndTime: meeting.autoCommunionEndTime,
          recordsServants: meeting.autoAttendanceRecordsServants,
        },
      ]),
    ),
    rosterMemberships: data["historyMeetingRoster"],
  };
}

function attendanceKeyOf(attendance: AttendanceToRecord): string {
  return [
    attendance.meetingId,
    attendance.personId,
    attendance.asServant,
  ].join("|");
}

function attendanceGroupedByPunchTimeEarliestFirst(
  attendance: AttendanceToRecord[],
): AttendanceToRecord[][] {
  const attendanceByPunchTime = new Map<
    number,
    Map<string, AttendanceToRecord>
  >();

  for (const record of attendance) {
    const punchTime = record.at.getTime();
    const sameTimeRecords = attendanceByPunchTime.get(punchTime) ??
      new Map<string, AttendanceToRecord>();

    sameTimeRecords.set(attendanceKeyOf(record), record);
    attendanceByPunchTime.set(punchTime, sameTimeRecords);
  }

  return [...attendanceByPunchTime.entries()]
    .sort(([earlierTime], [laterTime]) => earlierTime - laterTime)
    .map(([, sameTimeRecords]) => [...sameTimeRecords.values()]);
}

async function writePresenceRecords(
  fingerprintBotUid: string,
  attendance: AttendanceToRecord[],
  communions: CommunionToRecord[],
): Promise<void> {
  const attendanceGroups = attendanceGroupedByPunchTimeEarliestFirst(attendance);
  const communionKeys = new Set(
    communions.map((communion) =>
      `${communion.cairoDate}|${communion.personId}`
    ),
  );
  const communionRows = [...communionKeys].map((key) => {
    const [dayId, personId] = key.split("|");

    return { dayId, personId, recordedBy: fingerprintBotUid };
  });

  if (attendanceGroups.length === 0 && communionRows.length === 0) return;

  const variables: Record<string, unknown> = {
    days: [...new Set(communionRows.map((row) => row.dayId))]
      .map((day) => ({ day })),
    communions: communionRows,
  };

  attendanceGroups.forEach((group, index) => {
    variables[`punchedAt${index}`] = group[0].at.toISOString();
    variables[`attendance${index}`] = group.map((record) => ({
      meetingId: record.meetingId,
      personId: record.personId,
      asServant: record.asServant,
      datetime: record.at.toISOString(),
      recordedBy: fingerprintBotUid,
    }));
  });

  await requestAsFingerprintSync(
    `
      mutation recordPresenceOfPersons(
        $days: [HistoryAttendanceDaysInsertInput!]!
        $communions: [HistoryKodasHistoryInsertInput!]!
        ${
      attendanceGroups.map((_, index) => `
        $attendance${index}: [HistoryAttendanceHistoryInsertInput!]!
        $punchedAt${index}: timestamptz!`).join("")
    }
      ) {
        insertHistoryAttendanceDays(
          objects: $days
          onConflict: { constraint: attendance_days_pkey, updateColumns: [] }
        ) {
          affectedRows
        }
        insertHistoryKodasHistory(
          objects: $communions
          onConflict: {
            constraint: kodas_history_day_id_person_id_key
            updateColumns: []
          }
        ) {
          affectedRows
        }
        ${
      attendanceGroups.map((_, index) => `
        attendance${index}: insertHistoryAttendanceHistory(
          objects: $attendance${index}
          onConflict: {
            constraint: attendance_history_day_meeting_id_person_id_as_servant_key
            updateColumns: [datetime, recordedBy]
            where: { datetime: { _gt: $punchedAt${index} } }
          }
        ) {
          affectedRows
        }`).join("")
    }
      }
    `,
    variables,
    "recordPresenceOfPersons",
  );
}

export async function recordPresenceOfPersons(
  presences: PersonPresence[],
): Promise<void> {
  if (presences.length === 0) return;

  const context = await fetchPresenceRecordingContext([
    ...new Set(presences.map((presence) => presence.personId)),
  ]);
  const attendance: AttendanceToRecord[] = [];
  const communions: CommunionToRecord[] = [];

  for (const presence of presences) {
    const records = presenceRecordsFor(
      presence,
      context.schedulesByMeetingId,
      context.rosterMemberships,
    );

    if (records.matchedMeetingIds.length === 0) {
      console.warn(
        "Presence matched no meeting window",
        presence.personId,
        presence.at.toISOString(),
      );
    } else if (records.matchedMeetingIds.length > 1) {
      console.warn(
        "Presence matched several meetings",
        presence.personId,
        presence.at.toISOString(),
        records.matchedMeetingIds,
      );
    }

    attendance.push(...records.attendance);
    if (records.communion) communions.push(records.communion);
  }

  await writePresenceRecords(
    context.fingerprintBotUid,
    attendance,
    communions,
  );
}
