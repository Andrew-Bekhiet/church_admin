import {
  BatchResponse,
  getMessaging,
  Message,
  SendResponse,
} from "firebase-admin/messaging";
import {
  deletePushTargetsOfAnyOwner,
  getPushTargetsForAnyOfPermissions,
} from "../hasura_interface";
import { PushTarget, PushTargetKind } from "./push_target";

export type PushPayload = Pick<Message, "notification" | "data">;

export type SendPushMessages = (messages: Message[]) => Promise<BatchResponse>;

const UNREGISTERED_ERROR_CODE_BY_KIND: Record<PushTargetKind, string> = {
  registration_token: "messaging/registration-token-not-registered",
  installation_id: "messaging/installation-id-not-registered",
};

function sendWithFirebaseMessaging(messages: Message[]): Promise<BatchResponse> {
  return getMessaging().sendEach(messages);
}

function messageFor(target: PushTarget, payload: PushPayload): Message {
  return target.kind === "installation_id"
    ? { ...payload, fid: target.token }
    : { ...payload, token: target.token };
}

function unregisteredTargets(
  targets: PushTarget[],
  responses: SendResponse[],
): PushTarget[] {
  return targets.filter(
    (target, index) =>
      responses[index].error?.code === UNREGISTERED_ERROR_CODE_BY_KIND[target.kind],
  );
}

export async function sendPushToHoldersOfAnyPermissionAndPruneUnregistered({
  permissions,
  buildPayload,
  send = sendWithFirebaseMessaging,
  deleteTargets = deletePushTargetsOfAnyOwner,
}: {
  permissions: string[];
  buildPayload: () => PushPayload | Promise<PushPayload>;
  send?: SendPushMessages;
  deleteTargets?: (targets: PushTarget[]) => Promise<void>;
}): Promise<{ targetCount: number; deliveryErrors: unknown[] }> {
  const targets = await getPushTargetsForAnyOfPermissions(permissions);

  if (targets.length === 0) {
    return { targetCount: 0, deliveryErrors: [] };
  }

  const payload = await buildPayload();
  const response = await send(
    targets.map((target) => messageFor(target, payload)),
  );

  try {
    await deleteTargets(
      unregisteredTargets(targets, response.responses),
    );
  } catch (e) {
    console.error("Failed to prune unregistered push targets", e);
  }

  return {
    targetCount: targets.length,
    deliveryErrors: response.responses
      .filter((r) => !r.success)
      .map((r) => r.error),
  };
}
