import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  FingerprintPunchesRequest,
  recordFingerprintPunchesReceivedAt,
} from "../src/fingerprint/record_fingerprint_punches_received_at";
import {
  attendanceOf,
  communionDaysOf,
  fingerprintBotUid,
  graphqlAs,
  lastSyncedAt,
  makeServantOf,
  recordAttendanceByHand,
  ScheduleFixture,
  seedHumanUser,
  seedMeetingWithoutSchedule,
  seedMember,
  seedScheduledMeeting,
  seedServant,
  seedService,
  softDeletePerson,
} from "./support/local_hasura";

const FRIDAY = 5;
const fridayNoonUtc = new Date("2026-11-13T12:00:00Z");
const fridayCommunionThenMeeting: ScheduleFixture = {
  isoWeekday: FRIDAY,
  communion: ["07:00", "09:00"],
  attendance: ["09:00", "11:00"],
};

type Punch = FingerprintPunchesRequest["punches"][number];

function punch(employeeCode: string, punchedAt: string): Punch {
  return { employeeCode, punchedAt, terminalSerial: "test-terminal" };
}

async function syncPunches(punches: Punch[], now: Date = fridayNoonUtc) {
  await recordFingerprintPunchesReceivedAt(
    { biotimeServerLocalTime: "2026-11-13T14:00:00", punches },
    now,
  );
}

describe("recordFingerprintPunches recording rules", () => {
  it("records a member's attendance at the punch time, by the fingerprint bot", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")]);

    assert.deepEqual(await attendanceOf(mina.personId), [
      {
        meetingId,
        asServant: false,
        at: "2026-11-13T07:30:00Z",
        recordedBy: await fingerprintBotUid(),
      },
    ]);
  });

  it("records communion for the Cairo day, and no attendance, for a punch in the communion window", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T07:30:00+02:00")]);

    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("records no communion for a punch in the attendance window", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")]);

    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("records both communion and attendance for one punch in each window", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([
      punch(mina.employeeCode, "2026-11-13T08:10:00+02:00"),
      punch(mina.employeeCode, "2026-11-13T09:05:00+02:00"),
    ]);

    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => [row.meetingId, row.at]),
      [[meetingId, "2026-11-13T07:05:00Z"]],
    );
  });

  it("counts a punch exactly at a window's start as inside it and not inside the window ending then", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:00:00+02:00")]);

    assert.equal((await attendanceOf(mina.personId)).length, 1);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("ignores a punch exactly at the attendance window's end", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T11:00:00+02:00")]);

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("ignores a punch on another weekday", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-12T09:30:00+02:00")]);

    assert.deepEqual(await attendanceOf(mina.personId), []);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("records nothing in a meeting that has no schedule", async () => {
    const serviceId = await seedService();
    await seedMeetingWithoutSchedule(serviceId);
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")]);

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("records nothing in an archived meeting", async () => {
    const { serviceId } = await seedScheduledMeeting({
      ...fridayCommunionThenMeeting,
      isArchived: true,
    });
    const mina = await seedMember(serviceId);

    await syncPunches([
      punch(mina.employeeCode, "2026-11-13T08:00:00+02:00"),
      punch(mina.employeeCode, "2026-11-13T09:30:00+02:00"),
    ]);

    assert.deepEqual(await attendanceOf(mina.personId), []);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("records nothing in a meeting whose roster the person is not on", async () => {
    await seedScheduledMeeting(fridayCommunionThenMeeting);
    const outsider = await seedMember(await seedService());

    await syncPunches([
      punch(outsider.employeeCode, "2026-11-13T09:30:00+02:00"),
    ]);

    assert.deepEqual(await attendanceOf(outsider.personId), []);
  });

  it("records the punch in every meeting it matches", async () => {
    const first = await seedScheduledMeeting(fridayCommunionThenMeeting);
    const second = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:15", "10:00"] },
      first.serviceId,
    );
    const mina = await seedMember(first.serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")]);

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.meetingId).sort(),
      [first.meetingId, second.meetingId].sort(),
    );
  });

  it("does not record a servant where the meeting does not record servants", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const servant = await seedServant(serviceId);

    await syncPunches([
      punch(servant.employeeCode, "2026-11-13T09:30:00+02:00"),
    ]);

    assert.deepEqual(await attendanceOf(servant.personId), []);
  });

  it("records a servant as a servant where the meeting records servants", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting({
      ...fridayCommunionThenMeeting,
      recordsServants: true,
    });
    const servant = await seedServant(serviceId);

    await syncPunches([
      punch(servant.employeeCode, "2026-11-13T09:30:00+02:00"),
    ]);

    assert.deepEqual(
      (await attendanceOf(servant.personId)).map((row) => [
        row.meetingId,
        row.asServant,
      ]),
      [[meetingId, true]],
    );
  });

  it("records a servant's communion even where the meeting does not record servants", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const servant = await seedServant(serviceId);

    await syncPunches([
      punch(servant.employeeCode, "2026-11-13T08:00:00+02:00"),
    ]);

    assert.deepEqual(await communionDaysOf(servant.personId), ["2026-11-13"]);
  });

  it("records a person who is both a member and a servant of the meeting in both roles", async () => {
    const { serviceId } = await seedScheduledMeeting({
      ...fridayCommunionThenMeeting,
      recordsServants: true,
    });
    const mina = await seedMember(serviceId);
    await makeServantOf(serviceId, mina.personId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")]);

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.asServant),
      [false, true],
    );
  });

  it("skips an unlinked employee code and still records the rest of the batch", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([
      punch("code-nobody-holds", "2026-11-13T09:30:00+02:00"),
      punch(mina.employeeCode, "2026-11-13T09:31:00+02:00"),
    ]);

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("records nothing for a soft-deleted person", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);
    await softDeletePerson(mina.personId);

    await syncPunches([
      punch(mina.employeeCode, "2026-11-13T08:00:00+02:00"),
      punch(mina.employeeCode, "2026-11-13T09:30:00+02:00"),
    ]);

    assert.deepEqual(await attendanceOf(mina.personId), []);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("accepts the same punch twice in one request", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);
    const samePunch = punch(mina.employeeCode, "2026-11-13T09:30:00+02:00");

    await syncPunches([samePunch, samePunch]);

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });
});

describe("recordFingerprintPunches earliest time and last writer", () => {
  it("keeps the earlier punch when a later one arrives in a later request", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:10:00+02:00")]);
    await syncPunches([punch(mina.employeeCode, "2026-11-13T10:40:00+02:00")]);

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-11-13T07:10:00Z"],
    );
  });

  it("keeps the earliest of several punches sent latest first in one request", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([
      punch(mina.employeeCode, "2026-11-13T10:40:00+02:00"),
      punch(mina.employeeCode, "2026-11-13T09:10:00+02:00"),
    ]);

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-11-13T07:10:00Z"],
    );
  });

  it("moves the time back to an earlier punch that arrives late", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T10:40:00+02:00")]);
    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:10:00+02:00")]);

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-11-13T07:10:00Z"],
    );
  });

  it("leaves a servant's earlier manual record and its recorder untouched", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);
    const servantUid = await seedHumanUser();
    await recordAttendanceByHand({
      meetingId,
      personId: mina.personId,
      at: "2026-11-13T09:05:00+02:00",
      recordedBy: servantUid,
    });

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")]);

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => [
        row.at,
        row.recordedBy,
      ]),
      [["2026-11-13T07:05:00Z", servantUid]],
    );
  });

  it("replaces a servant's later manual record with the earlier punch, recorded by the bot", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);
    await recordAttendanceByHand({
      meetingId,
      personId: mina.personId,
      at: "2026-11-13T10:50:00+02:00",
      recordedBy: await seedHumanUser(),
    });

    await syncPunches([punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")]);

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => [
        row.at,
        row.recordedBy,
      ]),
      [["2026-11-13T07:30:00Z", await fingerprintBotUid()]],
    );
  });

  it("keeps one communion record when a second punch falls in the communion window", async () => {
    const { serviceId } = await seedScheduledMeeting(
      fridayCommunionThenMeeting,
    );
    const mina = await seedMember(serviceId);

    await syncPunches([punch(mina.employeeCode, "2026-11-13T07:10:00+02:00")]);
    await syncPunches([punch(mina.employeeCode, "2026-11-13T08:10:00+02:00")]);

    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
  });
});

describe("recordFingerprintPunches time limits", () => {
  const everyDayAllDay = (isoWeekday: number): ScheduleFixture => ({
    isoWeekday,
    attendance: ["00:00", "23:59:59"],
  });

  it("skips a punch further in the future than the clock tolerance", async () => {
    const { serviceId } = await seedScheduledMeeting(everyDayAllDay(FRIDAY));
    const mina = await seedMember(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:06:00Z")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("accepts a punch in the future within the clock tolerance", async () => {
    const { serviceId } = await seedScheduledMeeting(everyDayAllDay(FRIDAY));
    const mina = await seedMember(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:04:00Z")],
      fridayNoonUtc,
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("skips a punch older than ten days", async () => {
    const { serviceId } = await seedScheduledMeeting(everyDayAllDay(FRIDAY));
    const mina = await seedMember(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:00:00Z")],
      new Date("2026-11-23T12:00:01Z"),
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("accepts a punch exactly ten days old", async () => {
    const { serviceId } = await seedScheduledMeeting(everyDayAllDay(FRIDAY));
    const mina = await seedMember(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:00:00Z")],
      new Date("2026-11-23T12:00:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });
});

describe("recordFingerprintPunches daylight saving", () => {
  const fridayNineToEleven: ScheduleFixture = {
    isoWeekday: FRIDAY,
    attendance: ["09:00", "11:00"],
  };

  async function attendanceCountForPunchAt(instant: string): Promise<number> {
    const { serviceId } = await seedScheduledMeeting(fridayNineToEleven);
    const mina = await seedMember(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, instant)],
      new Date(Date.parse(instant) + 60 * 1000),
    );

    return (await attendanceOf(mina.personId)).length;
  }

  it("records 08:30 UTC on the Friday before clocks go forward, which is 10:30 in Cairo", async () => {
    assert.equal(await attendanceCountForPunchAt("2026-04-17T08:30:00Z"), 1);
  });

  it("ignores 08:30 UTC on the Friday clocks go forward, which is 11:30 in Cairo", async () => {
    assert.equal(await attendanceCountForPunchAt("2026-04-24T08:30:00Z"), 0);
  });

  it("ignores 08:30 UTC on the Friday before clocks go back, which is 11:30 in Cairo", async () => {
    assert.equal(await attendanceCountForPunchAt("2026-10-23T08:30:00Z"), 0);
  });

  it("records 08:30 UTC on the Friday after clocks go back, which is 10:30 in Cairo", async () => {
    assert.equal(await attendanceCountForPunchAt("2026-10-30T08:30:00Z"), 1);
  });

  it("records the rest of a batch that holds punches around the skipped and repeated hours", async () => {
    const { serviceId } = await seedScheduledMeeting(fridayNineToEleven);
    const mina = await seedMember(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-10-29T20:30:00Z"),
        punch(mina.employeeCode, "2026-10-29T21:30:00Z"),
        punch(mina.employeeCode, "2026-10-30T08:30:00Z"),
      ],
      new Date("2026-10-30T09:00:00Z"),
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-10-30T08:30:00Z"],
    );
  });

  it("buckets the attendance day in Cairo time for a punch just after Cairo midnight", async () => {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: FRIDAY,
      attendance: ["00:00", "02:00"],
      communion: ["02:00", "03:00"],
    });
    const mina = await seedMember(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-12T22:30:00Z"),
        punch(mina.employeeCode, "2026-11-13T00:30:00Z"),
      ],
      new Date("2026-11-13T01:00:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
  });
});

describe("recordFingerprintPunches sync status", () => {
  it("sets the last sync time on a call that carries no punches", async () => {
    const callTime = new Date("2026-11-14T05:00:00Z");

    await syncPunches([], callTime);

    assert.equal(await lastSyncedAt(), "2026-11-14T05:00:00Z");
  });

  it("moves the last sync time on a later call", async () => {
    await syncPunches([], new Date("2026-11-14T05:00:00Z"));
    await syncPunches([], new Date("2026-11-14T05:00:15Z"));

    assert.equal(await lastSyncedAt(), "2026-11-14T05:00:15Z");
  });
});

describe("the fingerprint_sync role", () => {
  it("cannot read persons", async () => {
    const response = await graphqlAs(
      "fingerprint_sync",
      "{ persons { id name } }",
    );

    assert.match(response.errors![0].message, /field 'persons' not found/);
  });

  it("cannot read a name through the meeting roster", async () => {
    const response = await graphqlAs(
      "fingerprint_sync",
      "{ historyMeetingRoster { name } }",
    );

    assert.match(response.errors![0].message, /field 'name' not found/);
  });

  it("cannot read a user's name", async () => {
    const response = await graphqlAs(
      "fingerprint_sync",
      "{ authUsersData { name } }",
    );

    assert.match(response.errors![0].message, /field 'name' not found/);
  });

  it("sees only the fingerprint bot among users", async () => {
    await seedHumanUser();

    const response = await graphqlAs(
      "fingerprint_sync",
      "{ authUsersData { uid } }",
    );

    assert.deepEqual(response.data, {
      authUsersData: [{ uid: await fingerprintBotUid() }],
    });
  });

  it("has no way to delete attendance", async () => {
    const response = await graphqlAs(
      "fingerprint_sync",
      "mutation { deleteHistoryAttendanceHistory(where: {}) { affectedRows } }",
    );

    assert.match(response.errors![0].message, /not found in type/);
  });
});
