import { AttendanceToRecord, CommunionToRecord } from "../domain/presence";
import { requestAsFingerprintSync } from "./request_as_fingerprint_sync";

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
    const presenceTime = record.at.toMillis();
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
      [`at${index}`, group[0].at.toUTC().toISO()],
      [
        `attendance${index}`,
        group.map((record) => ({
          meetingId: record.meetingId,
          personId: record.personId,
          asServant: record.asServant,
          datetime: record.at.toUTC().toISO(),
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
      mutation writePresenceRecords(
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

export async function writePresenceRecords(
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
    "writePresenceRecords",
  );
}
