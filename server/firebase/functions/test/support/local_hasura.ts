import { randomUUID } from "node:crypto";
import axios from "axios";
import { PushTarget, PushTargetKind } from "../../src/push/push_target";

process.env.HASURA_SERVER ??= "http://localhost:8080/v1/graphql";

function adminHeaders() {
  const adminSecret = process.env.HASURA_ADMIN_SECRET;

  if (!adminSecret) {
    throw new Error(
      "Set HASURA_ADMIN_SECRET to the local Hasura admin secret to run these tests",
    );
  }

  return { "x-hasura-admin-secret": adminSecret };
}

export async function runSql(sql: string): Promise<string[][]> {
  const response = await axios.post(
    new URL("/v2/query", process.env.HASURA_SERVER).toString(),
    { type: "run_sql", args: { source: "default", sql } },
    { headers: adminHeaders() },
  );

  return (response.data.result as string[][] | undefined)?.slice(1) ?? [];
}

export async function graphqlAs(
  role: string,
  query: string,
  variables?: Record<string, unknown>,
): Promise<{ data?: Record<string, unknown>; errors?: { message: string }[] }> {
  const response = await axios.post(
    process.env.HASURA_SERVER!,
    { query, variables },
    { headers: { ...adminHeaders(), "x-hasura-role": role } },
  );

  return response.data;
}

export interface ScheduleFixture {
  isoWeekday: number;
  attendance: [string, string];
  communion?: [string, string];
  recordsServants?: boolean;
  isArchived?: boolean;
}

export interface SeededMeeting {
  meetingId: string;
  serviceId: string;
}

export async function seedService(): Promise<string> {
  const serviceId = randomUUID();

  await runSql(
    `insert into public.services (id, name) values ('${serviceId}', 'service ${serviceId}');`,
  );

  return serviceId;
}

export async function seedMeetingWithoutSchedule(
  serviceId: string,
): Promise<string> {
  const meetingId = randomUUID();

  await runSql(
    `insert into history.meetings (id, name, service_id)
     values ('${meetingId}', 'meeting ${meetingId}', '${serviceId}');`,
  );

  return meetingId;
}

export async function seedScheduledMeeting(
  schedule: ScheduleFixture,
  inServiceId?: string,
): Promise<SeededMeeting> {
  const serviceId = inServiceId ?? await seedService();
  const meetingId = await seedMeetingWithoutSchedule(serviceId);
  const [communionStart, communionEnd] = schedule.communion ?? [null, null];
  const timeOrNull = (time: string | null) => time === null ? "null" : `'${time}'`;

  await runSql(
    `update history.meetings set
       auto_attendance_weekday = ${schedule.isoWeekday},
       auto_attendance_start_time = '${schedule.attendance[0]}',
       auto_attendance_end_time = '${schedule.attendance[1]}',
       auto_communion_start_time = ${timeOrNull(communionStart)},
       auto_communion_end_time = ${timeOrNull(communionEnd)},
       auto_attendance_records_servants = ${schedule.recordsServants ?? false},
       is_archived = ${schedule.isArchived ?? false}
     where id = '${meetingId}';`,
  );

  return { meetingId, serviceId };
}

export async function seedHumanUser(): Promise<string> {
  const uid = randomUUID();

  await runSql(
    `insert into auth.users_data (uid, name, email, auth_id)
     values ('${uid}', 'user ${uid}', '${uid}@test.local', 'auth-${uid}');
     insert into auth.users_permissions (uid, permission) values ('${uid}', 'approved');`,
  );

  return uid;
}

export async function linkNewEmployeeCode(personId: string): Promise<string> {
  const employeeCode = `code-${randomUUID()}`;
  const addedBy = await seedHumanUser();

  await runSql(
    `insert into public.persons_fingerprint_ids (person_id, employee_code, added_by)
     values ('${personId}', '${employeeCode}', '${addedBy}');`,
  );

  return employeeCode;
}

export interface SeededPerson {
  personId: string;
  employeeCode: string;
}

export async function seedMemberWithEmployeeCode(serviceId: string): Promise<SeededPerson> {
  const personId = randomUUID();

  await runSql(
    `insert into public.persons (id, name) values ('${personId}', 'person ${personId}');
     insert into public.persons_services (person_id, service_id)
     values ('${personId}', '${serviceId}');`,
  );

  return { personId, employeeCode: await linkNewEmployeeCode(personId) };
}

export async function makeServantOf(
  serviceId: string,
  personId: string,
): Promise<string> {
  const uid = await seedHumanUser();

  await runSql(
    `insert into auth.users_admin_on (uid, admin_on_service) values ('${uid}', '${serviceId}');
     update public.persons set uid = '${uid}' where id = '${personId}';`,
  );

  return uid;
}

export async function seedServantOnlyOn(serviceId: string): Promise<SeededPerson> {
  const otherServiceId = await seedService();
  const servant = await seedMemberWithEmployeeCode(otherServiceId);

  await makeServantOf(serviceId, servant.personId);

  return servant;
}

export async function softDeletePerson(personId: string): Promise<void> {
  await runSql(
    `update public.persons set deleted_at = now() where id = '${personId}';`,
  );
}

export async function recordAttendanceByHand(record: {
  meetingId: string;
  personId: string;
  at: string;
  recordedBy: string;
}): Promise<void> {
  await runSql(
    `insert into history.attendance_history (meeting_id, person_id, datetime, recorded_by)
     values ('${record.meetingId}', '${record.personId}', '${record.at}', '${record.recordedBy}');`,
  );
}

export interface StoredAttendance {
  meetingId: string;
  asServant: boolean;
  at: string;
  recordedBy: string;
}

export async function attendanceOf(
  personId: string,
): Promise<StoredAttendance[]> {
  const rows = await runSql(
    `select meeting_id, as_servant, to_char(datetime at time zone 'utc', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), recorded_by
     from history.attendance_history where person_id = '${personId}'
     order by meeting_id, as_servant;`,
  );

  return rows.map(([meetingId, asServant, at, recordedBy]) => ({
    meetingId,
    asServant: asServant === "t",
    at,
    recordedBy,
  }));
}

export async function communionDaysOf(personId: string): Promise<string[]> {
  const rows = await runSql(
    `select day_id::text from history.kodas_history
     where person_id = '${personId}' order by day_id;`,
  );

  return rows.map(([day]) => day);
}

export async function fingerprintBotUid(): Promise<string> {
  const [[uid]] = await runSql(
    "select uid from auth.users_data where user_type = 'fingerprint_bot';",
  );

  return uid;
}

export async function lastSyncedAt(): Promise<string | undefined> {
  const rows = await runSql(
    `select to_char(last_synced_at at time zone 'utc', 'YYYY-MM-DD"T"HH24:MI:SS"Z"')
     from operations.fingerprint_sync_status;`,
  );

  return rows[0]?.[0];
}

export async function resetLastSyncedAt(): Promise<void> {
  await runSql("delete from operations.fingerprint_sync_status;");
}

export async function seedPermission(): Promise<string> {
  const permission = `permission-${randomUUID()}`;

  await runSql(`insert into auth.permissions (name) values ('${permission}');`);

  return permission;
}

export async function seedHumanUserHolding(permission: string): Promise<string> {
  const uid = await seedHumanUser();

  await runSql(
    `insert into auth.users_permissions (uid, permission) values ('${uid}', '${permission}');`,
  );

  return uid;
}

export function newPushToken(): string {
  return `token-${randomUUID()}`;
}

export async function seedPushTarget(
  uid: string,
  target: PushTarget,
): Promise<void> {
  await runSql(
    `insert into public.users_fcm_tokens (uid, token, kind)
     values ('${uid}', '${target.token}', '${target.kind}');`,
  );
}

export async function pushTargetsOf(uid: string): Promise<PushTarget[]> {
  const rows = await runSql(
    `select kind, token from public.users_fcm_tokens
     where uid = '${uid}';`,
  );

  return sortedByKindThenToken(
    rows.map(([kind, token]) => ({ kind: kind as PushTargetKind, token })),
  );
}

export function sortedByKindThenToken(targets: PushTarget[]): PushTarget[] {
  return [...targets].sort(
    (a, b) => a.kind.localeCompare(b.kind) || a.token.localeCompare(b.token),
  );
}

export async function ownersOfInstallationId(installationId: string): Promise<string[]> {
  const rows = await runSql(
    `select uid from public.users_fcm_tokens
     where kind = 'installation_id' and token = '${installationId}' order by uid;`,
  );

  return rows.map(([uid]) => uid);
}
