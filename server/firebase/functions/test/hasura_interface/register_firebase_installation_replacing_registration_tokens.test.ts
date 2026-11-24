import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  registerFirebaseInstallationReplacingRegistrationTokens,
} from "../../src/hasura_interface";
import {
  newPushToken,
  ownersOfInstallationId,
  pushTargetsOf,
  seedHumanUser,
  seedPushTarget,
} from "../support/local_hasura";

describe("registerFirebaseInstallationReplacingRegistrationTokens", () => {
  it("leaves the installation id owned only by the user who registers it last", async () => {
    const previousOwner = await seedHumanUser();
    const newOwner = await seedHumanUser();
    const installationId = newPushToken();
    await seedPushTarget(previousOwner, { kind: "installation_id", token: installationId });

    await registerFirebaseInstallationReplacingRegistrationTokens(newOwner, installationId);

    assert.deepEqual(await ownersOfInstallationId(installationId), [newOwner]);
  });

  it("removes the registering user's registration tokens but not other users' tokens or installation ids", async () => {
    const registeringUser = await seedHumanUser();
    const otherUser = await seedHumanUser();
    const otherDeviceInstallationId = newPushToken();
    const otherUserToken = newPushToken();
    await seedPushTarget(registeringUser, { kind: "registration_token", token: newPushToken() });
    await seedPushTarget(registeringUser, { kind: "installation_id", token: otherDeviceInstallationId });
    await seedPushTarget(otherUser, { kind: "registration_token", token: otherUserToken });
    const installationId = newPushToken();

    await registerFirebaseInstallationReplacingRegistrationTokens(registeringUser, installationId);

    assert.deepEqual(
      await pushTargetsOf(registeringUser),
      [installationId, otherDeviceInstallationId]
        .sort()
        .map((token) => ({ kind: "installation_id", token })),
    );
    assert.deepEqual(await pushTargetsOf(otherUser), [
      { kind: "registration_token", token: otherUserToken },
    ]);
  });

  it("is idempotent when the same installation id is registered twice", async () => {
    const user = await seedHumanUser();
    const installationId = newPushToken();

    await registerFirebaseInstallationReplacingRegistrationTokens(user, installationId);
    await registerFirebaseInstallationReplacingRegistrationTokens(user, installationId);

    assert.deepEqual(await pushTargetsOf(user), [
      { kind: "installation_id", token: installationId },
    ]);
  });
});
