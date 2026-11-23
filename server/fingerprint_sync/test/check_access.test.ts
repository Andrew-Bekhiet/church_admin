import assert from "node:assert/strict";
import { test } from "node:test";
import { urlOfAPortNobodyListensOn } from "./support/closed_port";
import { startSyncHarness } from "./support/sync_harness";

test("passes when BioTime and the function both accept the config, sending the function one empty request", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");

  await harness.newSync().checkBiotimeAndFunctionAccess();

  assert.deepEqual(harness.recordFingerprintPunches.acceptedRequests, [
    { biotimeServerLocalTime: "2026-11-27T08:59:00", punches: [] },
  ]);
});

test("fails naming BioTime when it rejects the password", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.config.biotime.password = "wrong-password";

  await assert.rejects(
    harness.newSync().checkBiotimeAndFunctionAccess(),
    /BioTime.*400/s,
  );
});

test("fails naming the function when it rejects the secret", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.config.recordFingerprintPunches.secret = "wrong-secret";

  await assert.rejects(
    harness.newSync().checkBiotimeAndFunctionAccess(),
    /recordFingerprintPunches.*401/s,
  );
});

test("fails naming BioTime when it cannot be reached", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.config.biotime.baseUrl = await urlOfAPortNobodyListensOn();

  await assert.rejects(
    harness.newSync().checkBiotimeAndFunctionAccess(),
    /BioTime/,
  );
});

test("fails naming the function when it cannot be reached", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.config.recordFingerprintPunches.url = await urlOfAPortNobodyListensOn();

  await assert.rejects(
    harness.newSync().checkBiotimeAndFunctionAccess(),
    /recordFingerprintPunches/,
  );
});

test("leaves no cursor behind, so the service still starts from the time it first polls", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  await harness.newSync().checkBiotimeAndFunctionAccess();
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-27 09:00:00" });
  harness.serverLocalTime = "2026-11-27 09:05:00";

  await harness.newSync().pollOnce();

  assert.deepEqual(harness.recordFingerprintPunches.acceptedPunches, []);
});
