import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens,
} from "../../src/hasura_interface";
import {
  newPushToken,
  ownersOfInstallationId,
  pushTargetsOf,
  seedHumanUser,
  seedPushTarget,
  sortedByKindThenToken,
} from "../support/local_hasura";

describe("registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens", () => {
  it("leaves the installation id owned only by the user who registers it last", async () => {
    const previousOwner = await seedHumanUser();
    const newOwner = await seedHumanUser();
    const installationId = newPushToken();
    await seedPushTarget(previousOwner, { kind: "installation_id", token: installationId });

    await registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens(newOwner, installationId);

    assert.deepEqual(await ownersOfInstallationId(installationId), [newOwner]);
  });

  it("removes the registering user's registration tokens but not other users' tokens or installation ids", async () => {
    const registeringUser = await seedHumanUser();
    const otherUser = await seedHumanUser();
    const otherDeviceInstallationId = newPushToken();
    const otherUserToken = newPushToken();
    const otherUserInstallationId = newPushToken();
    await seedPushTarget(registeringUser, { kind: "registration_token", token: newPushToken() });
    await seedPushTarget(registeringUser, { kind: "installation_id", token: otherDeviceInstallationId });
    await seedPushTarget(otherUser, { kind: "registration_token", token: otherUserToken });
    await seedPushTarget(otherUser, { kind: "installation_id", token: otherUserInstallationId });
    const installationId = newPushToken();

    await registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens(registeringUser, installationId);

    assert.deepEqual(
      await pushTargetsOf(registeringUser),
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

  it("is idempotent when the same installation id is registered twice", async () => {
    const user = await seedHumanUser();
    const installationId = newPushToken();

    await registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens(user, installationId);
    await registerFirebaseInstallationAsSoleOwnerReplacingRegistrationTokens(user, installationId);

    assert.deepEqual(await pushTargetsOf(user), [
      { kind: "installation_id", token: installationId },
    ]);
  });
});
