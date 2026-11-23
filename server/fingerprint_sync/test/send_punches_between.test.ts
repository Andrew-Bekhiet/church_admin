import assert from "node:assert/strict";
import { test } from "node:test";
import { startSyncHarness } from "./support/sync_harness";

test("sends every punch between two times, including ones older than the cursor", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 12:00:00");
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-26 09:30:00" });
  harness.biotime.addPunch({
    emp_code: "1002",
    punch_time: "2026-11-27 09:30:00",
    terminal_sn: "CQZ7224960170",
  });
  harness.biotime.addPunch({ emp_code: "1003", punch_time: "2026-11-27 10:15:00" });
  const sync = harness.newSync();
  await sync.pollOnce();

  await sync.sendPunchesBetween("2026-11-27 09:00:00", "2026-11-27 10:00:00");

  assert.deepEqual(harness.recordFingerprintPunches.acceptedRequests.at(-1), {
    biotimeServerLocalTime: "2026-11-27T12:00:00",
    punches: [{
      employeeCode: "1002",
      punchedAt: "2026-11-27T09:30:00+02:00",
      terminalSerial: "CQZ7224960170",
    }],
  });
});

test("does not move the cursor, so the next poll forwards only new punches", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 12:00:00");
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-27 09:30:00" });
  harness.biotime.addPunch({ emp_code: "1003", punch_time: "2026-11-27 10:30:00" });
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.biotime.addPunch({ emp_code: "1002", punch_time: "2026-11-27 12:00:10" });
  await sync.sendPunchesBetween("2026-11-27 09:00:00", "2026-11-27 10:00:00");
  harness.serverLocalTime = "2026-11-27 12:05:00";

  await sync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1001", "1002"],
  );
});
