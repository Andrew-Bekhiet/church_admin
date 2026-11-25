import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { BatchResponse, FirebaseMessagingError, Message } from "firebase-admin/messaging";
import {
  sendPushToHoldersOfAnyPermissionAndPruneUnregistered,
} from "../../src/push/send_push_to_holders_of_any_permission_and_prune_unregistered";
import {
  newPushToken,
  pushTargetsOf,
  seedHumanUser,
  seedHumanUserHolding,
  seedPermission,
  seedPushTarget,
  sortedByKindThenToken,
} from "../support/local_hasura";
import { PushTarget } from "../../src/push/push_target";

const payload = {
  notification: { title: "title", body: "body" },
  data: { code: "test" },
};

describe("sendPushToHoldersOfAnyPermissionAndPruneUnregistered", () => {
  it("sends a token message to a registration token and an fid message to an installation id", async () => {
    const permission = await seedPermission();
    const holder = await seedHumanUserHolding(permission);
    const registrationToken = newPushToken();
    const installationId = newPushToken();
    await seedPushTarget(holder, { kind: "registration_token", token: registrationToken });
    await seedPushTarget(holder, { kind: "installation_id", token: installationId });
    const fake = fakeSend();

    const result = await sendToHoldersOf(permission, fake.send);

    assert.equal(result.targetCount, 2);
    assert.deepEqual(
      sortedByTarget(fake.sent),
      sortedByTarget([
        { ...payload, token: registrationToken },
        { ...payload, fid: installationId },
      ]),
    );
  });

  it("sends nothing to a user who lacks the permission", async () => {
    const permission = await seedPermission();
    const outsider = await seedHumanUser();
    const outsiderInstallationId = newPushToken();
    await seedPushTarget(outsider, { kind: "installation_id", token: outsiderInstallationId });
    const fake = fakeSend();

    await sendToHoldersOf(permission, fake.send);

    assert.deepEqual(fake.sent, []);
  });

  it("sends one message to a registration token held by two permission holders", async () => {
    const permission = await seedPermission();
    const sharedToken = newPushToken();
    await seedPushTarget(await seedHumanUserHolding(permission), { kind: "registration_token", token: sharedToken });
    await seedPushTarget(await seedHumanUserHolding(permission), { kind: "registration_token", token: sharedToken });
    const fake = fakeSend();

    await sendToHoldersOf(permission, fake.send);

    assert.deepEqual(fake.sent, [{ ...payload, token: sharedToken }]);
  });

  it("removes targets reported unregistered and keeps targets that failed for other reasons", async () => {
    const permission = await seedPermission();
    const holder = await seedHumanUserHolding(permission);
    const unregisteredToken = newPushToken();
    const unregisteredInstallationId = newPushToken();
    const failingInstallationId = newPushToken();
    const healthyToken = newPushToken();
    await seedPushTarget(holder, { kind: "registration_token", token: unregisteredToken });
    await seedPushTarget(holder, { kind: "installation_id", token: unregisteredInstallationId });
    await seedPushTarget(holder, { kind: "installation_id", token: failingInstallationId });
    await seedPushTarget(holder, { kind: "registration_token", token: healthyToken });
    const fake = fakeSend({
      [unregisteredToken]: "messaging/registration-token-not-registered",
      [unregisteredInstallationId]: "messaging/installation-id-not-registered",
      [failingInstallationId]: "messaging/internal-error",
    });

    await sendToHoldersOf(permission, fake.send);

    assert.deepEqual(
      await pushTargetsOf(holder),
      sortedByKindThenToken([
        { kind: "installation_id", token: failingInstallationId },
        { kind: "registration_token", token: healthyToken },
      ]),
    );
  });

  it("keeps targets answered with the other kind's unregistered code or an invalid-argument code", async () => {
    const permission = await seedPermission();
    const holder = await seedHumanUserHolding(permission);
    const installationIdAnsweredWithTokenCode = newPushToken();
    const tokenAnsweredWithInstallationIdCode = newPushToken();
    const targetAnsweredWithInvalidArgument = newPushToken();
    const survivors: PushTarget[] = [
      { kind: "installation_id", token: installationIdAnsweredWithTokenCode },
      { kind: "registration_token", token: tokenAnsweredWithInstallationIdCode },
      { kind: "registration_token", token: targetAnsweredWithInvalidArgument },
    ];
    for (const survivor of survivors) {
      await seedPushTarget(holder, survivor);
    }
    const fake = fakeSend({
      [installationIdAnsweredWithTokenCode]: "messaging/registration-token-not-registered",
      [tokenAnsweredWithInstallationIdCode]: "messaging/installation-id-not-registered",
      [targetAnsweredWithInvalidArgument]: "messaging/invalid-argument",
    });

    await sendToHoldersOf(permission, fake.send);

    assert.deepEqual(await pushTargetsOf(holder), sortedByKindThenToken(survivors));
  });

  it("removes a registration token held by two permission holders from both when it is unregistered", async () => {
    const permission = await seedPermission();
    const firstHolder = await seedHumanUserHolding(permission);
    const secondHolder = await seedHumanUserHolding(permission);
    const sharedToken = newPushToken();
    await seedPushTarget(firstHolder, { kind: "registration_token", token: sharedToken });
    await seedPushTarget(secondHolder, { kind: "registration_token", token: sharedToken });
    const fake = fakeSend({ [sharedToken]: "messaging/registration-token-not-registered" });

    await sendToHoldersOf(permission, fake.send);

    assert.deepEqual(await pushTargetsOf(firstHolder), []);
    assert.deepEqual(await pushTargetsOf(secondHolder), []);
  });

  it("still resolves with the delivery errors when pruning fails", async () => {
    const permission = await seedPermission();
    const holder = await seedHumanUserHolding(permission);
    const unregisteredToken = newPushToken();
    await seedPushTarget(holder, { kind: "registration_token", token: unregisteredToken });
    const fake = fakeSend({ [unregisteredToken]: "messaging/registration-token-not-registered" });

    const result = await sendToHoldersOf(permission, fake.send, () =>
      Promise.reject(new Error("delete rejected")));

    assert.equal(result.targetCount, 1);
    assert.deepEqual(result.deliveryErrors, [
      { code: "messaging/registration-token-not-registered" },
    ]);
    assert.deepEqual(await pushTargetsOf(holder), [
      { kind: "registration_token", token: unregisteredToken },
    ]);
  });
});

function fakeSend(errorCodeByTarget: Record<string, string> = {}) {
  const sent: Message[] = [];

  async function send(messages: Message[]): Promise<BatchResponse> {
    sent.push(...messages);

    const responses = messages.map((message) => {
      const target = "fid" in message ? message.fid : (message as { token: string }).token;
      const code = errorCodeByTarget[target];

      return code === undefined
        ? { success: true, messageId: "message-id" }
        : {
          success: false,
          error: { code } as FirebaseMessagingError,
        };
    });
    const failureCount = responses.filter((response) => !response.success).length;

    return {
      responses,
      failureCount,
      successCount: responses.length - failureCount,
    };
  }

  return { send, sent };
}

async function sendToHoldersOf(
  permission: string,
  send: ReturnType<typeof fakeSend>["send"],
  deleteTargets?: (targets: PushTarget[]) => Promise<void>,
) {
  return sendPushToHoldersOfAnyPermissionAndPruneUnregistered({
    permissions: [permission],
    buildPayload: () => payload,
    send,
    ...(deleteTargets && { deleteTargets }),
  });
}

function sortedByTarget(messages: Message[]): Message[] {
  const targetOf = (message: Message) =>
    "fid" in message ? message.fid : (message as { token: string }).token;

  return [...messages].sort((a, b) => targetOf(a).localeCompare(targetOf(b)));
}
