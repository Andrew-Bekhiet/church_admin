import { randomUUID } from "node:crypto";
import assert from "node:assert/strict";
import { describe, it, mock } from "node:test";
import { cairoWallClockAt } from "../src/fingerprint/cairo_wall_clock";
import {
  FingerprintPunch,
  recordFingerprintPunchesAndMarkSynced,
} from "../src/fingerprint/record_fingerprint_punches_and_mark_synced";
import {
  attendanceOf,
  communionDaysOf,
  fingerprintBotUid,
  graphqlAs,
  lastSyncedAt,
  makeServantOf,
  recordAttendanceByHand,
  resetLastSyncedAt,
  seedHumanUser,
  seedMeetingWithoutSchedule,
  seedMemberWithEmployeeCode,
  seedScheduledMeeting,
  seedServantOnlyOn,
  seedService,
  softDeletePerson,
} from "./support/local_hasura";

const FRIDAY = 5;
const fridayNoonUtc = new Date("2026-11-13T12:00:00Z");

function punch(employeeCode: string, punchedAt: string): FingerprintPunch {
  return { employeeCode, punchedAt, terminalSerial: "test-terminal" };
}

async function syncPunches(punches: unknown[], now: Date) {
  const { date, timeOfDay } = cairoWallClockAt(now);

  await recordFingerprintPunchesAndMarkSynced(
    { biotimeServerLocalTime: `${date}T${timeOfDay}`, punches },
    now,
  );
}

describe("recordFingerprintPunches recording rules", () => {
  it("records a member's attendance at the punch time, by the fingerprint bot", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

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
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T07:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("records no communion for a punch in the attendance window", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("records both communion and attendance for one punch in each window", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-13T08:10:00+02:00"),
        punch(mina.employeeCode, "2026-11-13T09:05:00+02:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => [row.meetingId, row.at]),
      [[meetingId, "2026-11-13T07:05:00Z"]],
    );
  });

  it("counts a punch exactly at a window's start as inside it and not inside the window ending then", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:00:00+02:00")],
      fridayNoonUtc,
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("ignores a punch exactly at the attendance window's end", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T11:00:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("ignores a punch on another weekday", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-12T09:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("records nothing in a meeting that has no schedule", async () => {
    const serviceId = await seedService();
    await seedMeetingWithoutSchedule(serviceId);
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("records nothing in an archived meeting", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], isArchived: true },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-13T08:00:00+02:00"),
        punch(mina.employeeCode, "2026-11-13T09:30:00+02:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("records nothing in a meeting whose roster the person is not on", async () => {
    await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const outsider = await seedMemberWithEmployeeCode(await seedService());

    await syncPunches(
      [punch(outsider.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(outsider.personId), []);
  });

  it("records the punch in every meeting it matches", async () => {
    const first = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const second = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:15", "10:00"] },
      first.serviceId,
    );
    const mina = await seedMemberWithEmployeeCode(first.serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.meetingId).sort(),
      [first.meetingId, second.meetingId].sort(),
    );
  });

  it("does not record a servant where the meeting does not record servants", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], recordsServants: false },
    );
    const servant = await seedServantOnlyOn(serviceId);

    await syncPunches(
      [punch(servant.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(servant.personId), []);
  });

  it("records a servant as a servant where the meeting records servants", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], recordsServants: true },
    );
    const servant = await seedServantOnlyOn(serviceId);

    await syncPunches(
      [punch(servant.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

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
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], recordsServants: false },
    );
    const servant = await seedServantOnlyOn(serviceId);

    await syncPunches(
      [punch(servant.employeeCode, "2026-11-13T08:00:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await communionDaysOf(servant.personId), ["2026-11-13"]);
  });

  it("records a person who is both a member and a servant of the meeting in both roles", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], recordsServants: true },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    await makeServantOf(serviceId, mina.personId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.asServant),
      [false, true],
    );
  });

  it("skips an unlinked employee code and still records the rest of the batch", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch("code-nobody-holds", "2026-11-13T09:30:00+02:00"),
        punch(mina.employeeCode, "2026-11-13T09:31:00+02:00"),
      ],
      fridayNoonUtc,
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("records nothing for a soft-deleted person", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    await softDeletePerson(mina.personId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-13T08:00:00+02:00"),
        punch(mina.employeeCode, "2026-11-13T09:30:00+02:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("skips a punch without a zone offset and still records the rest of the batch", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-13T07:10:00"),
        punch(mina.employeeCode, "2026-11-13T09:31:00+02:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-11-13T07:31:00Z"],
    );
  });

  it("accepts the same punch twice in one request", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    const samePunch = punch(mina.employeeCode, "2026-11-13T09:30:00+02:00");

    await syncPunches([samePunch, samePunch], fridayNoonUtc);

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("records each person only in their own meeting when one request carries two people", async () => {
    const meetingOfAmira = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const meetingOfBishoy = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const amira = await seedMemberWithEmployeeCode(meetingOfAmira.serviceId);
    const bishoy = await seedMemberWithEmployeeCode(meetingOfBishoy.serviceId);
    const servantUid = await seedHumanUser();
    await recordAttendanceByHand({
      meetingId: meetingOfBishoy.meetingId,
      personId: bishoy.personId,
      at: "2026-11-13T09:05:00+02:00",
      recordedBy: servantUid,
    });

    await syncPunches(
      [
        punch(amira.employeeCode, "2026-11-13T09:10:00+02:00"),
        punch(bishoy.employeeCode, "2026-11-13T10:40:00+02:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(amira.personId), [
      {
        meetingId: meetingOfAmira.meetingId,
        asServant: false,
        at: "2026-11-13T07:10:00Z",
        recordedBy: await fingerprintBotUid(),
      },
    ]);
    assert.deepEqual(await attendanceOf(bishoy.personId), [
      {
        meetingId: meetingOfBishoy.meetingId,
        asServant: false,
        at: "2026-11-13T07:05:00Z",
        recordedBy: servantUid,
      },
    ]);
  });
});

describe("recordFingerprintPunches earliest time and last writer", () => {
  it("keeps the earlier punch when a later one arrives in a later request", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:10:00+02:00")],
      fridayNoonUtc,
    );
    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T10:40:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-11-13T07:10:00Z"],
    );
  });

  it("keeps the earliest of several punches sent latest first in one request", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-13T10:40:00+02:00"),
        punch(mina.employeeCode, "2026-11-13T09:10:00+02:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-11-13T07:10:00Z"],
    );
  });

  it("moves the time back to an earlier punch that arrives late", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T10:40:00+02:00")],
      fridayNoonUtc,
    );
    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:10:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-11-13T07:10:00Z"],
    );
  });

  it("leaves a servant's earlier manual record and its recorder untouched", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    const servantUid = await seedHumanUser();
    await recordAttendanceByHand({
      meetingId,
      personId: mina.personId,
      at: "2026-11-13T09:05:00+02:00",
      recordedBy: servantUid,
    });

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

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
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    await recordAttendanceByHand({
      meetingId,
      personId: mina.personId,
      at: "2026-11-13T10:50:00+02:00",
      recordedBy: await seedHumanUser(),
    });

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
      fridayNoonUtc,
    );

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
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T07:10:00+02:00")],
      fridayNoonUtc,
    );
    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T08:10:00+02:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
  });
});

describe("recordFingerprintPunches time limits", () => {
  it("skips a punch further in the future than the clock tolerance", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["00:00", "23:59:59"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:06:00Z")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("accepts a punch in the future within the clock tolerance", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["00:00", "23:59:59"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:04:00Z")],
      fridayNoonUtc,
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("skips a punch older than ten days", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["00:00", "23:59:59"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:00:00Z")],
      new Date("2026-11-23T12:00:01Z"),
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("accepts a punch exactly ten days old", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["00:00", "23:59:59"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13T12:00:00Z")],
      new Date("2026-11-23T12:00:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });
});

describe("recordFingerprintPunches daylight saving", () => {
  it("records 08:30 UTC on the Friday before clocks go forward, which is 10:30 in Cairo", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-04-17T08:30:00Z")],
      new Date("2026-04-17T08:31:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("ignores 08:30 UTC on the Friday clocks go forward, which is 11:30 in Cairo", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-04-24T08:30:00Z")],
      new Date("2026-04-24T08:31:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 0);
  });

  it("ignores 08:30 UTC on the Friday before clocks go back, which is 11:30 in Cairo", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-10-23T08:30:00Z")],
      new Date("2026-10-23T08:31:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 0);
  });

  it("records 08:30 UTC on the Friday after clocks go back, which is 10:30 in Cairo", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-10-30T08:30:00Z")],
      new Date("2026-10-30T08:31:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("keeps the first pass when both passes of the hour repeated when clocks go back are sent", async () => {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: 4,
      attendance: ["23:00", "23:59"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-10-29T21:30:00Z"),
        punch(mina.employeeCode, "2026-10-29T20:30:00Z"),
      ],
      new Date("2026-10-29T22:00:00Z"),
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-10-29T20:30:00Z"],
    );
  });

  it("records a punch from the second pass of the hour repeated when clocks go back when it is sent alone", async () => {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: 4,
      attendance: ["23:00", "23:59"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-10-29T21:30:00Z")],
      new Date("2026-10-29T22:00:00Z"),
    );

    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.at),
      ["2026-10-29T21:30:00Z"],
    );
  });

  it("records a punch just after the hour skipped when clocks go forward on the new day", async () => {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: FRIDAY,
      attendance: ["01:00", "02:00"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-04-23T22:10:00Z")],
      new Date("2026-04-23T22:11:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });

  it("records the Cairo date, not the UTC date, as the communion day of a punch in the communion window after Cairo midnight", async () => {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: FRIDAY,
      communion: ["00:00", "02:00"],
      attendance: ["02:00", "03:00"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-12T22:30:00Z"),
        punch(mina.employeeCode, "2026-11-13T00:30:00Z"),
      ],
      new Date("2026-11-13T01:00:00Z"),
    );

    assert.deepEqual(await communionDaysOf(mina.personId), ["2026-11-13"]);
    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });
});

describe("recordFingerprintPunches warnings", () => {
  const biotimeClockMatchingCairo = "2026-11-13T14:00:00";

  async function warningCountWhileSyncing(
    punches: unknown[],
    biotimeServerLocalTime: string,
  ): Promise<number> {
    const warn = mock.method(console, "warn", () => undefined);

    try {
      await recordFingerprintPunchesAndMarkSynced(
        { biotimeServerLocalTime, punches },
        fridayNoonUtc,
      );

      return warn.mock.callCount();
    } finally {
      warn.mock.restore();
    }
  }

  it("logs nothing for a punch recorded in one meeting", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.equal(
      await warningCountWhileSyncing(
        [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
        biotimeClockMatchingCairo,
      ),
      0,
    );
  });

  it("warns about a punch that matches no window", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.equal(
      await warningCountWhileSyncing(
        [punch(mina.employeeCode, "2026-11-13T12:30:00+02:00")],
        biotimeClockMatchingCairo,
      ),
      1,
    );
  });

  it("warns about a punch recorded in several meetings", async () => {
    const first = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:15", "10:00"] },
      first.serviceId,
    );
    const mina = await seedMemberWithEmployeeCode(first.serviceId);

    assert.equal(
      await warningCountWhileSyncing(
        [punch(mina.employeeCode, "2026-11-13T09:30:00+02:00")],
        biotimeClockMatchingCairo,
      ),
      1,
    );
  });

  it("warns about an unlinked employee code", async () => {
    assert.equal(
      await warningCountWhileSyncing(
        [punch("code-nobody-holds", "2026-11-13T09:30:00+02:00")],
        biotimeClockMatchingCairo,
      ),
      1,
    );
  });

  it("warns when the BioTime server clock is an hour ahead of Cairo time", async () => {
    assert.equal(await warningCountWhileSyncing([], "2026-11-13T15:00:00"), 1);
  });

  it("warns when the BioTime server clock is an hour behind Cairo time", async () => {
    assert.equal(await warningCountWhileSyncing([], "2026-11-13T13:00:00"), 1);
  });

  it("warns when the BioTime server time carries a zone, so it cannot be compared", async () => {
    assert.equal(
      await warningCountWhileSyncing([], "2026-11-13T14:00:00Z"),
      1,
    );
  });

  it("logs nothing when the BioTime server clock is four minutes off Cairo time", async () => {
    assert.equal(await warningCountWhileSyncing([], "2026-11-13T14:04:00"), 0);
  });
});

describe("recordFingerprintPunches sync status", () => {
  it("sets the last sync time on a call that carries no punches", async () => {
    await resetLastSyncedAt();

    await syncPunches([], new Date("2026-11-14T05:00:00Z"));

    assert.equal(await lastSyncedAt(), "2026-11-14T05:00:00Z");
  });

  it("moves the last sync time on a later call", async () => {
    await resetLastSyncedAt();
    await syncPunches([], new Date("2026-11-14T05:00:00Z"));

    await syncPunches([], new Date("2026-11-14T05:00:15Z"));

    assert.equal(await lastSyncedAt(), "2026-11-14T05:00:15Z");
  });
});

describe("the fingerprint_sync role", () => {
  it("cannot read persons", async () => {
    const query = "{ persons { id name } }";

    const asFingerprintSync = await graphqlAs("fingerprint_sync", query);
    const asAdmin = await graphqlAs("admin", query);

    assert.equal(asFingerprintSync.data, undefined);
    assert.ok(asFingerprintSync.errors!.length > 0);
    assert.ok(asAdmin.data !== undefined);
  });

  it("cannot read a name through the meeting roster", async () => {
    const query = "{ historyMeetingRoster { name } }";

    const asFingerprintSync = await graphqlAs("fingerprint_sync", query);
    const asAdmin = await graphqlAs("admin", query);

    assert.equal(asFingerprintSync.data, undefined);
    assert.ok(asFingerprintSync.errors!.length > 0);
    assert.ok(asAdmin.data !== undefined);
  });

  it("cannot read a user's name", async () => {
    const query = "{ authUsersData { name } }";

    const asFingerprintSync = await graphqlAs("fingerprint_sync", query);
    const asAdmin = await graphqlAs("admin", query);

    assert.equal(asFingerprintSync.data, undefined);
    assert.ok(asFingerprintSync.errors!.length > 0);
    assert.ok(asAdmin.data !== undefined);
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
    const query = `mutation { deleteHistoryAttendanceHistory(where: { meetingId: { _eq: "${randomUUID()}" } }) { affectedRows } }`;

    const asFingerprintSync = await graphqlAs("fingerprint_sync", query);
    const asAdmin = await graphqlAs("admin", query);

    assert.equal(asFingerprintSync.data, undefined);
    assert.ok(asFingerprintSync.errors!.length > 0);
    assert.ok(asAdmin.data !== undefined);
  });
});
