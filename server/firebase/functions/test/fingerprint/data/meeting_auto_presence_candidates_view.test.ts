import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { cairoWallClockAt } from "../../../src/fingerprint/domain/cairo_wall_clock";
import { instant } from "../../support/instant";
import {
  graphqlAs,
  makeServantOf,
  seedMeetingWithoutSchedule,
  seedMemberWithEmployeeCode,
  seedScheduledMeeting,
  seedServantOnlyOn,
  seedService,
  softDeletePerson,
} from "../../support/local_hasura";

const FRIDAY = 5;

interface Candidate {
  meetingId: string;
  asServant: boolean;
  windowKind: string;
}

async function candidatesAsFingerprintSync(where: string): Promise<Candidate[]> {
  const response = await graphqlAs(
    "fingerprint_sync",
    `{ historyMeetingAutoPresenceCandidates(
         where: ${where}
         orderBy: [{ meetingId: ASC }, { windowKind: ASC }, { asServant: ASC }]
       ) { meetingId asServant windowKind } }`,
  );

  assert.equal(response.errors, undefined);

  return response.data!["historyMeetingAutoPresenceCandidates"] as Candidate[];
}

async function everyCandidateOf(personId: string): Promise<Candidate[]> {
  return candidatesAsFingerprintSync(`{ personId: { _eq: "${personId}" } }`);
}

async function candidatesOfPresence(
  personId: string,
  at: string,
): Promise<Candidate[]> {
  const { isoWeekday, timeOfDay } = cairoWallClockAt(instant(at));

  return candidatesAsFingerprintSync(`{
    personId: { _eq: "${personId}" }
    isoWeekday: { _eq: ${isoWeekday} }
    windowStartTime: { _lte: "${timeOfDay}" }
    windowEndTime: { _gt: "${timeOfDay}" }
  }`);
}

describe("meeting_auto_presence_candidates rows", () => {
  it("lists a member once per window of a scheduled meeting", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(await everyCandidateOf(mina.personId), [
      { meetingId, asServant: false, windowKind: "attendance" },
      { meetingId, asServant: false, windowKind: "communion" },
    ]);
  });

  it("lists no communion window for a meeting that has none", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(await everyCandidateOf(mina.personId), [
      { meetingId, asServant: false, windowKind: "attendance" },
    ]);
  });

  it("lists a person who is both a member and a servant in both roles", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], recordsServants: true },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    await makeServantOf(serviceId, mina.personId);

    assert.deepEqual(await everyCandidateOf(mina.personId), [
      { meetingId, asServant: false, windowKind: "attendance" },
      { meetingId, asServant: true, windowKind: "attendance" },
      { meetingId, asServant: false, windowKind: "communion" },
      { meetingId, asServant: true, windowKind: "communion" },
    ]);
  });

  it("lists a servant's attendance where the meeting records servants", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"], recordsServants: true },
    );
    const servant = await seedServantOnlyOn(serviceId);

    assert.deepEqual(await everyCandidateOf(servant.personId), [
      { meetingId, asServant: true, windowKind: "attendance" },
    ]);
  });

  it("lists only a servant's communion where the meeting does not record servants", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], recordsServants: false },
    );
    const servant = await seedServantOnlyOn(serviceId);

    assert.deepEqual(await everyCandidateOf(servant.personId), [
      { meetingId, asServant: true, windowKind: "communion" },
    ]);
  });

  it("lists nothing for an archived meeting", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"], isArchived: true },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(await everyCandidateOf(mina.personId), []);
  });

  it("lists nothing for a meeting that has no schedule", async () => {
    const serviceId = await seedService();
    await seedMeetingWithoutSchedule(serviceId);
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(await everyCandidateOf(mina.personId), []);
  });

  it("lists nothing for a soft-deleted person", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);
    await softDeletePerson(mina.personId);

    assert.deepEqual(await everyCandidateOf(mina.personId), []);
  });

  it("lists nothing for a person who is not on the meeting's roster", async () => {
    await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const outsider = await seedMemberWithEmployeeCode(await seedService());

    assert.deepEqual(await everyCandidateOf(outsider.personId), []);
  });
});

describe("meeting_auto_presence_candidates filtered by a presence's Cairo weekday and time", () => {
  it("returns the attendance window for a time inside it", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      await candidatesOfPresence(mina.personId, "2026-11-13T09:30:00+02:00"),
      [{ meetingId, asServant: false, windowKind: "attendance" }],
    );
  });

  it("returns the communion window for a time inside it", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      await candidatesOfPresence(mina.personId, "2026-11-13T07:30:00+02:00"),
      [{ meetingId, asServant: false, windowKind: "communion" }],
    );
  });

  it("counts a window's start as inside it and its end as outside it", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      [
        await candidatesOfPresence(mina.personId, "2026-11-13T09:00:00+02:00"),
        await candidatesOfPresence(mina.personId, "2026-11-13T10:59:59+02:00"),
        await candidatesOfPresence(mina.personId, "2026-11-13T11:00:00+02:00"),
      ],
      [
        [{ meetingId, asServant: false, windowKind: "attendance" }],
        [{ meetingId, asServant: false, windowKind: "attendance" }],
        [],
      ],
    );
  });

  it("returns nothing on another weekday", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      await candidatesOfPresence(mina.personId, "2026-11-12T09:30:00+02:00"),
      [],
    );
  });

  it("returns every meeting whose window holds the time", async () => {
    const first = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, communion: ["07:00", "09:00"], attendance: ["09:00", "11:00"] },
    );
    const second = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:15", "10:00"] },
      first.serviceId,
    );
    const mina = await seedMemberWithEmployeeCode(first.serviceId);

    assert.deepEqual(
      (await candidatesOfPresence(mina.personId, "2026-11-13T09:30:00+02:00"))
        .map((candidate) => candidate.meetingId),
      [first.meetingId, second.meetingId].sort(),
    );
  });

  it("returns only the asked person's candidates", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const amira = await seedMemberWithEmployeeCode(serviceId);
    await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      await candidatesOfPresence(amira.personId, "2026-11-13T09:30:00+02:00"),
      [{ meetingId, asServant: false, windowKind: "attendance" }],
    );
  });

  it("matches 08:30 UTC only on the Fridays it is 10:30 in Cairo, either side of both clock changes", async () => {
    const { serviceId } = await seedScheduledMeeting(
      { isoWeekday: FRIDAY, attendance: ["09:00", "11:00"] },
    );
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      [
        (await candidatesOfPresence(mina.personId, "2026-04-17T08:30:00Z")).length,
        (await candidatesOfPresence(mina.personId, "2026-04-24T08:30:00Z")).length,
        (await candidatesOfPresence(mina.personId, "2026-10-23T08:30:00Z")).length,
        (await candidatesOfPresence(mina.personId, "2026-10-30T08:30:00Z")).length,
      ],
      [1, 0, 0, 1],
    );
  });

  it("matches both passes of the hour repeated when clocks go back on the Thursday", async () => {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: 4,
      attendance: ["23:00", "23:59"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.deepEqual(
      [
        (await candidatesOfPresence(mina.personId, "2026-10-29T20:30:00Z")).length,
        (await candidatesOfPresence(mina.personId, "2026-10-29T21:30:00Z")).length,
      ],
      [1, 1],
    );
  });

  it("matches a time just after the hour skipped when clocks go forward on the new day", async () => {
    const { serviceId } = await seedScheduledMeeting({
      isoWeekday: FRIDAY,
      attendance: ["01:00", "02:00"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    assert.equal(
      (await candidatesOfPresence(mina.personId, "2026-04-23T22:10:00Z")).length,
      1,
    );
  });
});
