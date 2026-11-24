import assert from "node:assert/strict";
import { createServer } from "node:net";
import { afterEach, beforeEach, describe, it, mock } from "node:test";
import type { Request } from "firebase-functions/v2/https";
import type { Response } from "express";
import { recordFingerprintPunches } from "../../src/fingerprint/record_fingerprint_punches";
import { instant } from "../support/instant";
import {
  attendanceOf,
  lastSyncedAt,
  resetLastSyncedAt,
  seedMemberWithEmployeeCode,
  seedScheduledMeeting,
} from "../support/local_hasura";

const CONFIGURED_SECRET = "the-configured-fingerprint-sync-secret";

interface EndpointReply {
  status: number;
  body: unknown;
}

async function post(
  body: unknown,
  secretHeader: string | undefined,
): Promise<EndpointReply> {
  return new Promise((resolve) => {
    let status = 200;
    const response = {
      status(code: number) {
        status = code;

        return response;
      },
      send(sentBody?: unknown) {
        resolve({ status, body: sentBody });

        return response;
      },
    };

    void recordFingerprintPunches(
      {
        method: "POST",
        body,
        header: (name: string) =>
          name === "X-Fingerprint-Sync-Secret" ? secretHeader : undefined,
      } as unknown as Request,
      response as unknown as Response,
    );
  });
}

async function unusedLocalhostUrl(): Promise<string> {
  const server = createServer();

  await new Promise<void>((resolve) => server.listen(0, "127.0.0.1", resolve));
  const { port } = server.address() as { port: number };
  await new Promise((resolve) => server.close(resolve));

  return `http://127.0.0.1:${port}/v1/graphql`;
}

const emptyBatch = {
  biotimeServerLocalTime: "2026-11-13T14:00:00",
  punches: [],
};

describe("recordFingerprintPunches endpoint", () => {
  let previousSecret: string | undefined;
  let previousHasuraServer: string | undefined;

  beforeEach(() => {
    previousSecret = process.env.FINGERPRINT_SYNC_SECRET;
    previousHasuraServer = process.env.HASURA_SERVER;
    process.env.FINGERPRINT_SYNC_SECRET = CONFIGURED_SECRET;
  });

  afterEach(() => {
    mock.timers.reset();

    if (previousSecret === undefined) {
      delete process.env.FINGERPRINT_SYNC_SECRET;
    } else {
      process.env.FINGERPRINT_SYNC_SECRET = previousSecret;
    }

    if (previousHasuraServer === undefined) {
      delete process.env.HASURA_SERVER;
    } else {
      process.env.HASURA_SERVER = previousHasuraServer;
    }
  });

  it("answers 204 with no body and records the punch it was sent", async () => {
    const fridayHalfPastNineInCairo = instant("2026-11-13T07:30:00Z");
    mock.timers.enable({
      apis: ["Date"],
      now: fridayHalfPastNineInCairo.toMillis(),
    });
    const { meetingId, serviceId } = await seedScheduledMeeting({
      isoWeekday: 5,
      attendance: ["09:00", "11:00"],
    });
    const mina = await seedMemberWithEmployeeCode(serviceId);
    await resetLastSyncedAt();

    const reply = await post(
      {
        biotimeServerLocalTime: "2026-11-13T09:30:00",
        punches: [
          {
            employeeCode: mina.employeeCode,
            punchedAtCairoTime: "2026-11-13 09:28:30",
            terminalSerial: "t",
          },
        ],
      },
      CONFIGURED_SECRET,
    );

    assert.deepEqual(reply, { status: 204, body: undefined });
    assert.deepEqual(
      (await attendanceOf(mina.personId)).map((row) => row.meetingId),
      [meetingId],
    );
    assert.equal(await lastSyncedAt(), "2026-11-13T07:30:00Z");
  });

  it("answers 401 to a wrong secret", async () => {
    assert.equal((await post(emptyBatch, "a-wrong-secret")).status, 401);
  });

  it("answers 401 to a missing secret", async () => {
    assert.equal((await post(emptyBatch, undefined)).status, 401);
  });

  it("answers 401 when no secret is configured, even to an empty secret header", async () => {
    delete process.env.FINGERPRINT_SYNC_SECRET;

    assert.equal((await post(emptyBatch, "")).status, 401);
  });

  it("answers 204 to a batch that holds a malformed punch", async () => {
    const reply = await post(
      { ...emptyBatch, punches: [{ employeeCode: "1042" }] },
      CONFIGURED_SECRET,
    );

    assert.equal(reply.status, 204);
  });

  it("answers 400 to more punches than one request may carry", async () => {
    const reply = await post(
      {
        ...emptyBatch,
        punches: Array.from({ length: 501 }, () => ({
          employeeCode: "1042",
          punchedAtCairoTime: "2026-11-13 09:30:00",
          terminalSerial: "t",
        })),
      },
      CONFIGURED_SECRET,
    );

    assert.equal(reply.status, 400);
  });

  it("answers 400 to a body that is not a batch", async () => {
    assert.equal((await post([], CONFIGURED_SECRET)).status, 400);
  });

  it("answers 400 to a batch without the BioTime server time", async () => {
    assert.equal((await post({ punches: [] }, CONFIGURED_SECRET)).status, 400);
  });

  it("answers 500 when Hasura cannot be reached", async () => {
    process.env.HASURA_SERVER = await unusedLocalhostUrl();
    mock.timers.enable({
      apis: ["Date"],
      now: instant("2026-11-13T07:30:00Z").toMillis(),
    });

    const reply = await post(
      {
        ...emptyBatch,
        punches: [
          {
            employeeCode: "1042",
            punchedAtCairoTime: "2026-11-13 09:29:00",
            terminalSerial: "t",
          },
        ],
      },
      CONFIGURED_SECRET,
    );

    assert.equal(reply.status, 500);
  });
});
