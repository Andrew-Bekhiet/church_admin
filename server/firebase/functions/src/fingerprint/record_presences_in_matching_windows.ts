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

function distinctAttendanceGroupedByTimeEarliestFirst(
  attendance: AttendanceToRecord[],
): AttendanceToRecord[][] {
  const attendanceByTime = new Map<
    number,
    Map<string, AttendanceToRecord>
  >();

  for (const record of attendance) {
    const presenceTime = record.at.getTime();
    const sameTimeRecords = attendanceByTime.get(presenceTime) ??
      new Map<string, AttendanceToRecord>();

    sameTimeRecords.set(attendanceKeyOf(record), record);
    attendanceByTime.set(presenceTime, sameTimeRecords);
  }

  return [...attendanceByTime.entries()]
    .sort(([earlierTime], [laterTime]) => earlierTime - laterTime)
    .map(([, sameTimeRecords]) => [...sameTimeRecords.values()]);
}

interface CommunionRow {
  dayId: string;
  personId: string;
  recordedBy: string;
}

function communionRowsWithoutDuplicates(
  communions: CommunionToRecord[],
  fingerprintBotUid: string,
): CommunionRow[] {
  const rowsByDayAndPerson = new Map<string, CommunionRow>();

  for (const communion of communions) {
    rowsByDayAndPerson.set(`${communion.cairoDate}|${communion.personId}`, {
      dayId: communion.cairoDate,
      personId: communion.personId,
      recordedBy: fingerprintBotUid,
    });
  }

  return [...rowsByDayAndPerson.values()];
}

function attendanceVariablesOf(
  attendanceGroups: AttendanceToRecord[][],
  fingerprintBotUid: string,
): Record<string, unknown> {
  return Object.fromEntries(
    attendanceGroups.flatMap((group, index) => [
      [`at${index}`, group[0].at.toISOString()],
      [
        `attendance${index}`,
        group.map((record) => ({
          meetingId: record.meetingId,
          personId: record.personId,
          asServant: record.asServant,
          datetime: record.at.toISOString(),
          recordedBy: fingerprintBotUid,
        })),
      ],
    ]),
  );
}

function recordPresenceMutationFor(attendanceGroupCount: number): string {
  const groupIndexes = [...Array(attendanceGroupCount).keys()];
  const attendanceVariableDefinitions = groupIndexes.map((index) => `
        $attendance${index}: [HistoryAttendanceHistoryInsertInput!]!
        $at${index}: timestamptz!`);
  const attendanceUpserts = groupIndexes.map((index) => `
        attendance${index}: insertHistoryAttendanceHistory(
          objects: $attendance${index}
          onConflict: {
            constraint: attendance_history_day_meeting_id_person_id_as_servant_key
            updateColumns: [datetime, recordedBy]
            where: { datetime: { _gt: $at${index} } }
          }
        ) {
          affectedRows
        }`);

  return `
      mutation recordPresencesInMatchingWindows(
        $days: [HistoryAttendanceDaysInsertInput!]!
        $communions: [HistoryKodasHistoryInsertInput!]!
        ${attendanceVariableDefinitions.join("")}
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
        ${attendanceUpserts.join("")}
      }
    `;
}

async function writePresenceRecords(
  fingerprintBotUid: string,
  attendance: AttendanceToRecord[],
  communions: CommunionToRecord[],
): Promise<void> {
  const attendanceGroups = distinctAttendanceGroupedByTimeEarliestFirst(
    attendance,
  );
  const communionRows = communionRowsWithoutDuplicates(
    communions,
    fingerprintBotUid,
  );

  if (attendanceGroups.length === 0 && communionRows.length === 0) return;

  await requestAsFingerprintSync(
    recordPresenceMutationFor(attendanceGroups.length),
    {
      days: [...new Set(communionRows.map((row) => row.dayId))]
        .map((day) => ({ day })),
      communions: communionRows,
      ...attendanceVariablesOf(attendanceGroups, fingerprintBotUid),
    },
    "recordPresencesInMatchingWindows",
  );
}

export async function recordPresencesInMatchingWindows(
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
