import assert from "node:assert/strict";
import { describe, it, mock } from "node:test";
import axios from "axios";
import { DateTime } from "luxon";
import { recordFingerprintPunchesAndMarkSynced } from "../../../src/fingerprint/application/record_fingerprint_punches_and_mark_synced";
import { cairoWallClockAt } from "../../../src/fingerprint/domain/cairo_wall_clock";
import { instant } from "../../support/instant";
import {
  attendanceOf,
  communionDaysOf,
  fingerprintBotUid,
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
} from "../../support/local_hasura";

const FRIDAY = 5;
const fridayNoonUtc = instant("2026-11-13T12:00:00Z");
const fridayEveningUtc = instant("2026-11-13T16:00:00Z");

function punch(employeeCode: string, punchedAtCairoTime: string) {
  return { employeeCode, punchedAtCairoTime, terminalSerial: "test-terminal" };
}

async function syncPunches(punches: unknown[], now: DateTime<true>) {
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
      [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
      [punch(mina.employeeCode, "2026-11-13 07:30:00")],
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
      [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
        punch(mina.employeeCode, "2026-11-13 08:10:00"),
        punch(mina.employeeCode, "2026-11-13 09:05:00"),
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
      [punch(mina.employeeCode, "2026-11-13 09:00:00")],
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
      [punch(mina.employeeCode, "2026-11-13 11:00:00")],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("counts each punch of one request against its own window's start and end", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const atStart = await seedMemberWithEmployeeCode(serviceId);
    const inLastSecond = await seedMemberWithEmployeeCode(serviceId);
    const atEnd = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(atStart.employeeCode, "2026-11-13 09:00:00"),
        punch(inLastSecond.employeeCode, "2026-11-13 10:59:59"),
        punch(atEnd.employeeCode, "2026-11-13 11:00:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(
      (await attendanceOf(atStart.personId)).map((row) => [row.meetingId, row.at]),
      [[meetingId, "2026-11-13T07:00:00Z"]],
    );
    assert.deepEqual(await communionDaysOf(atStart.personId), []);
    assert.deepEqual(
      (await attendanceOf(inLastSecond.personId)).map((row) => [row.meetingId, row.at]),
      [[meetingId, "2026-11-13T08:59:59Z"]],
    );
    assert.deepEqual(await attendanceOf(atEnd.personId), []);
  });

  it("ignores a punch on another weekday", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-12 09:30:00")],
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
      [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
        punch(mina.employeeCode, "2026-11-13 08:00:00"),
        punch(mina.employeeCode, "2026-11-13 09:30:00"),
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
      [punch(outsider.employeeCode, "2026-11-13 09:30:00")],
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
      [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
      [punch(servant.employeeCode, "2026-11-13 09:30:00")],
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
      [punch(servant.employeeCode, "2026-11-13 09:30:00")],
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
      [punch(servant.employeeCode, "2026-11-13 08:00:00")],
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
      [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
        punch("code-nobody-holds", "2026-11-13 09:30:00"),
        punch(mina.employeeCode, "2026-11-13 09:31:00"),
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
        punch(mina.employeeCode, "2026-11-13 08:00:00"),
        punch(mina.employeeCode, "2026-11-13 09:30:00"),
      ],
      fridayNoonUtc,
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
    assert.deepEqual(await communionDaysOf(mina.personId), []);
  });

  it("skips a punch whose time carries a zone offset and still records the rest of the batch", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-13T09:10:00+02:00"),
        punch(mina.employeeCode, "2026-11-13 09:31:00"),
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
    const samePunch = punch(mina.employeeCode, "2026-11-13 09:30:00");

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
        punch(amira.employeeCode, "2026-11-13 09:10:00"),
        punch(bishoy.employeeCode, "2026-11-13 10:40:00"),
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

  it("records each person only in the meeting whose window holds their own punch when both are on both rosters", async () => {
    const morning = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const evening = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["17:00", "19:00"] },
      morning.serviceId,
    );
    const amira = await seedMemberWithEmployeeCode(morning.serviceId);
    const bishoy = await seedMemberWithEmployeeCode(morning.serviceId);

    await syncPunches(
      [
        punch(amira.employeeCode, "2026-11-13 09:30:00"),
        punch(bishoy.employeeCode, "2026-11-13 17:30:00"),
      ],
      fridayEveningUtc,
    );

    assert.deepEqual(
      (await attendanceOf(amira.personId)).map((row) => [row.meetingId, row.at]),
      [[morning.meetingId, "2026-11-13T07:30:00Z"]],
    );
    assert.deepEqual(
      (await attendanceOf(bishoy.personId)).map((row) => [row.meetingId, row.at]),
      [[evening.meetingId, "2026-11-13T15:30:00Z"]],
    );
  });

  it("records each of one person's two punches only in the meeting whose window holds it", async () => {
    const morning = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const evening = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["17:00", "19:00"] },
      morning.serviceId,
    );
    const mina = await seedMemberWithEmployeeCode(morning.serviceId);

    await syncPunches(
      [
        punch(mina.employeeCode, "2026-11-13 09:30:00"),
        punch(mina.employeeCode, "2026-11-13 17:30:00"),
      ],
      fridayEveningUtc,
    );

    assert.deepEqual(
      Object.fromEntries(
        (await attendanceOf(mina.personId)).map((row) => [row.meetingId, row.at]),
      ),
      {
        [morning.meetingId]: "2026-11-13T07:30:00Z",
        [evening.meetingId]: "2026-11-13T15:30:00Z",
      },
    );
  });
});

describe("recordFingerprintPunches earliest time and last writer", () => {
  it("keeps the earlier punch when a later one arrives in a later request", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13 09:10:00")],
      fridayNoonUtc,
    );
    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13 10:40:00")],
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
        punch(mina.employeeCode, "2026-11-13 10:40:00"),
        punch(mina.employeeCode, "2026-11-13 09:10:00"),
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
      [punch(mina.employeeCode, "2026-11-13 10:40:00")],
      fridayNoonUtc,
    );
    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13 09:10:00")],
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
      [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
      [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
      [punch(mina.employeeCode, "2026-11-13 07:10:00")],
      fridayNoonUtc,
    );
    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13 08:10:00")],
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
      [punch(mina.employeeCode, "2026-11-13 14:06:00")],
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
      [punch(mina.employeeCode, "2026-11-13 14:04:00")],
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
      [punch(mina.employeeCode, "2026-11-13 14:00:00")],
      instant("2026-11-23T12:00:01Z"),
    );

    assert.deepEqual(await attendanceOf(mina.personId), []);
  });

  it("accepts a punch exactly ten days old", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["00:00", "23:59:59"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches(
      [punch(mina.employeeCode, "2026-11-13 14:00:00")],
      instant("2026-11-23T12:00:00Z"),
    );

    assert.equal((await attendanceOf(mina.personId)).length, 1);
  });
});

describe("recordFingerprintPunches report", () => {
  it("counts each punch of a batch under what became of it", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    const report = await recordFingerprintPunchesAndMarkSynced(
      {
        biotimeServerLocalTime: "2026-11-13T14:00:00",
        punches: [
          punch(mina.employeeCode, "2026-11-13 09:30:00"),
          punch(mina.employeeCode, "2026-11-13 09:40:00"),
          punch(mina.employeeCode, "2026-11-13 12:30:00"),
          punch(mina.employeeCode, "2026-11-13T09:30:00+02:00"),
          { employeeCode: mina.employeeCode },
          punch(mina.employeeCode, "2026-11-03 13:59:59"),
          punch(mina.employeeCode, "2026-11-13 14:05:01"),
          punch("code-nobody-holds", "2026-11-13 09:30:00"),
        ],
      },
      fridayNoonUtc,
    );

    assert.deepEqual(report, {
      matchedAWindow: 2,
      matchedNoWindow: 1,
      ignoredMalformed: 2,
      ignoredTooOld: 1,
      ignoredInFuture: 1,
      ignoredUnlinkedEmployeeCode: 1,
    });
  });
});

describe("recordFingerprintPunches daylight saving", () => {
  async function recordedTimesOfPunchAt(
    punchedAtCairoTime: string,
    attendance: [string, string],
    now: DateTime<true>,
  ): Promise<string[]> {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: cairoWallClockAt(now).isoWeekday,
      attendance,
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    await syncPunches([punch(mina.employeeCode, punchedAtCairoTime)], now);

    return (await attendanceOf(mina.personId)).map((row) => row.at);
  }

  it("records 10:30 on the Friday before clocks go forward as 08:30 UTC", async () => {
    assert.deepEqual(
      await recordedTimesOfPunchAt(
        "2026-04-17 10:30:00",
        ["09:00", "11:00"],
        instant("2026-04-17T08:31:00Z"),
      ),
      ["2026-04-17T08:30:00Z"],
    );
  });

  it("records 10:30 on the Friday clocks go forward as 07:30 UTC", async () => {
    assert.deepEqual(
      await recordedTimesOfPunchAt(
        "2026-04-24 10:30:00",
        ["09:00", "11:00"],
        instant("2026-04-24T07:31:00Z"),
      ),
      ["2026-04-24T07:30:00Z"],
    );
  });

  it("records 10:30 on the Friday before clocks go back as 07:30 UTC", async () => {
    assert.deepEqual(
      await recordedTimesOfPunchAt(
        "2026-10-23 10:30:00",
        ["09:00", "11:00"],
        instant("2026-10-23T07:31:00Z"),
      ),
      ["2026-10-23T07:30:00Z"],
    );
  });

  it("records 10:30 on the Friday after clocks go back as 08:30 UTC", async () => {
    assert.deepEqual(
      await recordedTimesOfPunchAt(
        "2026-10-30 10:30:00",
        ["09:00", "11:00"],
        instant("2026-10-30T08:31:00Z"),
      ),
      ["2026-10-30T08:30:00Z"],
    );
  });

  it("records a punch in the hour repeated when clocks go back at its first pass", async () => {
    assert.deepEqual(
      await recordedTimesOfPunchAt(
        "2026-10-29 23:30:00",
        ["23:00", "23:59"],
        instant("2026-10-29T22:00:00Z"),
      ),
      ["2026-10-29T20:30:00Z"],
    );
  });

  it("records a punch in the hour skipped when clocks go forward an hour later, on the new day", async () => {
    assert.deepEqual(
      await recordedTimesOfPunchAt(
        "2026-04-24 00:30:00",
        ["01:00", "02:00"],
        instant("2026-04-23T22:31:00Z"),
      ),
      ["2026-04-23T22:30:00Z"],
    );
  });

  it("records a punch just after the hour skipped when clocks go forward on the new day", async () => {
    assert.deepEqual(
      await recordedTimesOfPunchAt(
        "2026-04-24 01:10:00",
        ["01:00", "02:00"],
        instant("2026-04-23T22:11:00Z"),
      ),
      ["2026-04-23T22:10:00Z"],
    );
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
        punch(mina.employeeCode, "2026-11-13 00:30:00"),
        punch(mina.employeeCode, "2026-11-13 02:30:00"),
      ],
      instant("2026-11-13T01:00:00Z"),
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
        [punch(mina.employeeCode, "2026-11-13 09:30:00")],
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
        [punch(mina.employeeCode, "2026-11-13 12:30:00")],
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
        [punch(mina.employeeCode, "2026-11-13 09:30:00")],
        biotimeClockMatchingCairo,
      ),
      1,
    );
  });

  it("warns once for each copy of the same punch that matches no window", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    const samePunch = punch(mina.employeeCode, "2026-11-13 12:30:00");

    assert.equal(
      await warningCountWhileSyncing(
        [samePunch, samePunch],
        biotimeClockMatchingCairo,
      ),
      2,
    );
  });

  it("warns once for each copy of the same punch recorded in several meetings", async () => {
    const first = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:15", "10:00"] },
      first.serviceId,
    );
    const mina = await seedMemberWithEmployeeCode(first.serviceId);
    const samePunch = punch(mina.employeeCode, "2026-11-13 09:30:00");

    assert.equal(
      await warningCountWhileSyncing(
        [samePunch, samePunch],
        biotimeClockMatchingCairo,
      ),
      2,
    );
  });

  it("warns about a punch from the future", async () => {
    assert.equal(
      await warningCountWhileSyncing(
        [punch("code-nobody-holds", "2026-11-13 14:06:00")],
        biotimeClockMatchingCairo,
      ),
      1,
    );
  });

  it("warns about an unlinked employee code", async () => {
    assert.equal(
      await warningCountWhileSyncing(
        [punch("code-nobody-holds", "2026-11-13 09:30:00")],
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

    await syncPunches([], instant("2026-11-14T05:00:00Z"));

    assert.equal(await lastSyncedAt(), "2026-11-14T05:00:00Z");
  });

  it("moves the last sync time on a later call", async () => {
    await resetLastSyncedAt();
    await syncPunches([], instant("2026-11-14T05:00:00Z"));

    await syncPunches([], instant("2026-11-14T05:00:15Z"));

    assert.equal(await lastSyncedAt(), "2026-11-14T05:00:15Z");
  });

  it("keeps the later sync time when an earlier call finishes after it", async () => {
    await resetLastSyncedAt();
    await syncPunches([], instant("2026-11-14T05:00:15Z"));

    await syncPunches([], instant("2026-11-14T05:00:00Z"));

    assert.equal(await lastSyncedAt(), "2026-11-14T05:00:15Z");
  });
});

describe("recordFingerprintPunches Hasura requests", () => {
  async function hasuraOperationsWhileSyncing(punches: unknown[]): Promise<string[]> {
    const post = mock.method(axios, "post");

    try {
      await syncPunches(punches, fridayNoonUtc);

      return post.mock.calls.map(
        (call) => JSON.parse(call.arguments[1] as string).operationName,
      );
    } finally {
      post.mock.restore();
    }
  }

  it("sends four requests for a batch of two people's punches", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const amira = await seedMemberWithEmployeeCode(serviceId);
    const bishoy = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      await hasuraOperationsWhileSyncing([
        punch(amira.employeeCode, "2026-11-13 09:10:00"),
        punch(bishoy.employeeCode, "2026-11-13 10:40:00"),
      ]),
      [
        "findPersonIdsByEmployeeCodes",
        "findFingerprintBotUidAndCandidatesOfEachPresence",
        "writePresenceRecords",
        "markFingerprintSyncedAtUnlessALaterSyncIsRecorded",
      ],
    );
  });

  it("asks for no candidates and writes no presence when no punch of the batch is linked", async () => {
    assert.deepEqual(
      await hasuraOperationsWhileSyncing([
        punch("code-nobody-holds", "2026-11-13 09:30:00"),
      ]),
      [
        "findPersonIdsByEmployeeCodes",
        "markFingerprintSyncedAtUnlessALaterSyncIsRecorded",
      ],
    );
  });

  it("only marks the sync time for a batch without punches", async () => {
    assert.deepEqual(
      await hasuraOperationsWhileSyncing([]),
      ["markFingerprintSyncedAtUnlessALaterSyncIsRecorded"],
    );
  });
});
