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

test("forwards punches from every page BioTime splits them into", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.biotime.pageSize = 2;
  const sync = harness.startSync();
  await sync.pollOnce();
  for (const second of ["01", "02", "03", "04", "05"]) {
    harness.biotime.addPunch({
      emp_code: `10${second}`,
      punch_time: `2026-11-27 09:00:${second}`,
    });
  }

  await sync.pollOnce();

  assert.deepEqual(
    harness.punchesFunction.acceptedPunches.map((punch) => punch.employeeCode),
    ["1001", "1002", "1003", "1004", "1005"],
  );
});

test("logs in again when BioTime rejects an expired token", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.startSync();
  await sync.pollOnce();
  harness.biotime.expireTokens();
  harness.biotime.addPunch({ emp_code: "1042", punch_time: "2026-11-27 09:00:05" });

  await sync.pollOnce();

  assert.deepEqual(
    harness.punchesFunction.acceptedPunches.map((punch) => punch.employeeCode),
    ["1042"],
  );
});

test("after a restart, forwards only the punches it has not sent", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  await harness.startSync().pollOnce();
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-27 09:00:05" });
  await harness.startSync().pollOnce();
  harness.biotime.addPunch({ emp_code: "1002", punch_time: "2026-11-27 09:03:10" });

  const restartedSync = harness.startSync();
  await restartedSync.pollOnce();

  assert.deepEqual(
    harness.punchesFunction.accepted.map((request) =>
      request.punches.map((punch) => punch.employeeCode)
    ),
    [[], ["1001"], ["1002"]],
  );
});

test("on first start, does not replay punches made before it", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 09:00:00");
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-26 18:30:00" });
  harness.biotime.addPunch({ emp_code: "1002", punch_time: "2026-11-27 08:59:59" });
  const sync = harness.startSync();
  await sync.pollOnce();
  harness.biotime.addPunch({ emp_code: "1003", punch_time: "2026-11-27 09:00:10" });

  await sync.pollOnce();

  assert.deepEqual(
    harness.punchesFunction.acceptedPunches.map((punch) => punch.employeeCode),
    ["1003"],
  );
});
