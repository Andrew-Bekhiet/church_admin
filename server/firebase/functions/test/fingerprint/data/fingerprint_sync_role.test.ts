import { randomUUID } from "node:crypto";
import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  fingerprintBotUid,
  graphqlAs,
  seedHumanUser,
  seedMemberWithEmployeeCode,
  seedScheduledMeeting,
} from "../../support/local_hasura";

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

  it("cannot read meetings", async () => {
    const query = "{ historyMeetings { id name } }";

    const asFingerprintSync = await graphqlAs("fingerprint_sync", query);
    const asAdmin = await graphqlAs("admin", query);

    assert.equal(asFingerprintSync.data, undefined);
    assert.ok(asFingerprintSync.errors!.length > 0);
    assert.ok(asAdmin.data !== undefined);
  });

  it("cannot read a name through the presence candidates", async () => {
    const query = "{ historyMeetingAutoPresenceCandidates { name } }";

    const asFingerprintSync = await graphqlAs("fingerprint_sync", query);

    assert.equal(asFingerprintSync.data, undefined);
    assert.ok(asFingerprintSync.errors!.length > 0);
  });

  it("reads a person's presence candidates by ids, weekday and window times only", async () => {
    const { meetingId, serviceId } = await seedScheduledMeeting({
      isoWeekday: 5,
      attendance: ["09:00", "11:00"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);

    const response = await graphqlAs(
      "fingerprint_sync",
      `{ historyMeetingAutoPresenceCandidates(where: { personId: { _eq: "${mina.personId}" } }) {
        personId meetingId asServant windowKind isoWeekday windowStartTime windowEndTime
      } }`,
    );

    assert.deepEqual(response.data, {
      historyMeetingAutoPresenceCandidates: [
        {
          personId: mina.personId,
          meetingId,
          asServant: false,
          windowKind: "attendance",
          isoWeekday: 5,
          windowStartTime: "09:00:00",
          windowEndTime: "11:00:00",
        },
      ],
    });
  });

  it("is the only role besides admin that reads the presence candidates", async () => {
    const query = "{ historyMeetingAutoPresenceCandidates { personId } }";

    const asUser = await graphqlAs("user", query);
    const asAdmin = await graphqlAs("admin", query);

    assert.equal(asUser.data, undefined);
    assert.ok(asUser.errors!.length > 0);
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
