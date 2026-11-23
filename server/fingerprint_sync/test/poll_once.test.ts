import assert from "node:assert/strict";
import { test } from "node:test";
import { startSyncHarness } from "./support/sync_harness";

test("forwards a new punch as Cairo time, with the server's local time", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.startSync();
  await sync.pollOnce();
  harness.biotime.addPunch({
    emp_code: "1042",
    punch_time: "2026-11-27 09:00:05",
    terminal_sn: "CQZ7224960170",
  });
  harness.serverLocalTime = "2026-11-27 09:00:20";

  await sync.pollOnce();

  assert.deepEqual(harness.punchesFunction.accepted.at(-1), {
    biotimeServerLocalTime: "2026-11-27T09:00:20",
    punches: [{
      employeeCode: "1042",
      punchedAt: "2026-11-27T09:00:05+02:00",
      terminalSerial: "CQZ7224960170",
    }],
  });
});
