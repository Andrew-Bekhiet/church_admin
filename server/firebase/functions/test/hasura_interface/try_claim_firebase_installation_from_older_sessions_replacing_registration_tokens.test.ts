import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens,
} from "../../src/hasura_interface";
import {
  newPushToken,
  ownersOfInstallationId,
  pushTargetsOf,
  seedHumanUser,
  seedPushTarget,
  sortedByKindThenToken,
} from "../support/local_hasura";

const earlierSession = new Date("2026-11-20T10:00:00Z");
const middleSession = new Date("2026-11-20T11:00:00Z");
const laterSession = new Date("2026-11-20T12:00:00Z");

describe("tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens", () => {
  it("takes the installation id over from an owner registered before session times were recorded", async () => {
    const previousOwner = await seedHumanUser();
    const newOwner = await seedHumanUser();
    const installationId = newPushToken();
    await seedPushTarget(previousOwner, { kind: "installation_id", token: installationId });

    const claimed = await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      newOwner,
      installationId,
      laterSession,
    );

    assert.equal(claimed, true);
    assert.deepEqual(await ownersOfInstallationId(installationId), [newOwner]);
  });

  it("takes the installation id over from an owner whose session started earlier", async () => {
    const previousOwner = await seedHumanUser();
    const newOwner = await seedHumanUser();
    const installationId = newPushToken();
    await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      previousOwner,
      installationId,
      earlierSession,
    );
    assert.deepEqual(await ownersOfInstallationId(installationId), [previousOwner]);

    const claimed = await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      newOwner,
      installationId,
      laterSession,
    );

    assert.equal(claimed, true);
    assert.deepEqual(await ownersOfInstallationId(installationId), [newOwner]);
  });

  it("leaves the owner and the caller's registration tokens alone when the owner's session started later", async () => {
    const currentOwner = await seedHumanUser();
    const staleCaller = await seedHumanUser();
    const installationId = newPushToken();
    const staleCallerToken = newPushToken();
    await seedPushTarget(staleCaller, { kind: "registration_token", token: staleCallerToken });
    await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      currentOwner,
      installationId,
      laterSession,
    );

    const claimed = await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      staleCaller,
      installationId,
      earlierSession,
    );

    assert.equal(claimed, false);
    assert.deepEqual(await ownersOfInstallationId(installationId), [currentOwner]);
    assert.deepEqual(await pushTargetsOf(staleCaller), [
      { kind: "registration_token", token: staleCallerToken },
    ]);
  });

  it("keeps the owner's later session time when the owner's own earlier session registers again", async () => {
    const owner = await seedHumanUser();
    const userOfMiddleSession = await seedHumanUser();
    const installationId = newPushToken();
    await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      owner,
      installationId,
      laterSession,
    );
    await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      owner,
      installationId,
      earlierSession,
    );

    const claimed = await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      userOfMiddleSession,
      installationId,
      middleSession,
    );

    assert.equal(claimed, false);
    assert.deepEqual(await ownersOfInstallationId(installationId), [owner]);
  });

  it("removes the claiming user's registration tokens but not other users' tokens or installation ids", async () => {
    const claimingUser = await seedHumanUser();
    const otherUser = await seedHumanUser();
    const otherDeviceInstallationId = newPushToken();
    const otherUserToken = newPushToken();
    const otherUserInstallationId = newPushToken();
    await seedPushTarget(claimingUser, { kind: "registration_token", token: newPushToken() });
    await seedPushTarget(claimingUser, { kind: "installation_id", token: otherDeviceInstallationId });
    await seedPushTarget(otherUser, { kind: "registration_token", token: otherUserToken });
    await seedPushTarget(otherUser, { kind: "installation_id", token: otherUserInstallationId });
    const installationId = newPushToken();

    await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      claimingUser,
      installationId,
      laterSession,
    );

    assert.deepEqual(
      await pushTargetsOf(claimingUser),
      sortedByKindThenToken(
        [installationId, otherDeviceInstallationId].map((token) => ({
          kind: "installation_id" as const,
          token,
        })),
      ),
    );
    assert.deepEqual(
      await pushTargetsOf(otherUser),
      sortedByKindThenToken([
        { kind: "registration_token", token: otherUserToken },
        { kind: "installation_id", token: otherUserInstallationId },
      ]),
    );
  });

  it("succeeds again when the same session claims the same installation id twice", async () => {
    const user = await seedHumanUser();
    const installationId = newPushToken();
    await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      user,
      installationId,
      laterSession,
    );

    const claimed = await tryClaimFirebaseInstallationFromOlderSessionsReplacingRegistrationTokens(
      user,
      installationId,
      laterSession,
    );

    assert.equal(claimed, true);
    assert.deepEqual(await pushTargetsOf(user), [
      { kind: "installation_id", token: installationId },
    ]);
  });
});
