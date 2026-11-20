import assert from "node:assert/strict";
import { describe, it } from "node:test";
import type { Request } from "firebase-functions/v2/https";
import type { Response } from "express";
import { recordFingerprintPunches } from "../src/record_fingerprint_punches";
import "./support/local_hasura";

const CONFIGURED_SECRET = "the-configured-fingerprint-sync-secret";

interface EndpointReply {
  status: number;
  body: unknown;
}

async function post(
  body: unknown,
  secretHeader: string | undefined,
): Promise<EndpointReply> {
  process.env.FINGERPRINT_SYNC_SECRET = CONFIGURED_SECRET;

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

const emptyBatch = {
  biotimeServerLocalTime: "2026-11-13T14:00:00",
  punches: [],
};

describe("recordFingerprintPunches endpoint", () => {
  it("answers 204 with no body to a well-formed batch", async () => {
    assert.deepEqual(await post(emptyBatch, CONFIGURED_SECRET), {
      status: 204,
      body: undefined,
    });
  });

  it("answers 401 to a wrong secret", async () => {
    assert.equal((await post(emptyBatch, "a-wrong-secret")).status, 401);
  });

  it("answers 401 to a missing secret", async () => {
    assert.equal((await post(emptyBatch, undefined)).status, 401);
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
          punchedAt: "2026-11-13T09:30:00+02:00",
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
});
