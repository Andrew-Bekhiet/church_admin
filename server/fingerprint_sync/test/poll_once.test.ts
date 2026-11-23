import assert from "node:assert/strict";
import { DateTime } from "luxon";
import { test } from "node:test";
import { FakeBiotimeServer } from "./support/fake_biotime_server";
import { startSyncHarness } from "./support/sync_harness";

test("forwards a new punch as Cairo time, with the server's local time", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.biotime.addPunch({
    emp_code: "1042",
    punch_time: "2026-11-27 09:00:05",
    terminal_sn: "CQZ7224960170",
  });
  harness.serverLocalTime = "2026-11-27 09:00:20";

  await sync.pollOnce();

  assert.deepEqual(harness.recordFingerprintPunches.acceptedRequests.at(-1), {
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
  const sync = harness.newSync();
  await sync.pollOnce();
  for (const second of ["01", "02", "03", "04", "05"]) {
    harness.biotime.addPunch({
      emp_code: `10${second}`,
      punch_time: `2026-11-27 09:00:${second}`,
    });
  }

  await sync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1001", "1002", "1003", "1004", "1005"],
  );
});

test("logs in again when BioTime rejects an expired token", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.biotime.expireTokens();
  harness.biotime.addPunch({ emp_code: "1042", punch_time: "2026-11-27 09:00:05" });

  await sync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1042"],
  );
});

test("after a restart, forwards only the punches it has not sent", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  await harness.newSync().pollOnce();
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-27 09:00:05" });
  await harness.newSync().pollOnce();
  harness.biotime.addPunch({ emp_code: "1002", punch_time: "2026-11-27 09:03:10" });

  const restartedSync = harness.newSync();
  await restartedSync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1001", "1002"],
  );
});

test("on first start, does not replay punches made before it", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 09:00:00");
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-26 18:30:00" });
  harness.biotime.addPunch({ emp_code: "1002", punch_time: "2026-11-27 08:59:59" });
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.biotime.addPunch({ emp_code: "1003", punch_time: "2026-11-27 09:00:10" });

  await sync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1003"],
  );
});

test("keeps punches the function failed to record for the next poll", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.biotime.addPunch({ emp_code: "1042", punch_time: "2026-11-27 09:00:05" });
  harness.recordFingerprintPunches.respondWithStatus = 503;
  await assert.rejects(sync.pollOnce());
  harness.recordFingerprintPunches.respondWithStatus = 204;

  await sync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1042"],
  );
});

test("keeps its first start time when its first poll fails", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.recordFingerprintPunches.failAfterAccepting(0);
  await assert.rejects(harness.newSync().pollOnce());
  harness.recordFingerprintPunches.acceptEveryRequest();
  harness.biotime.addPunch({ emp_code: "1042", punch_time: "2026-11-27 08:59:30" });
  harness.serverLocalTime = "2026-11-27 09:00:00";

  await harness.newSync().pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1042"],
  );
});

test("keeps punches for the next poll while the function is unreachable", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  await harness.newSync().pollOnce();
  harness.biotime.addPunch({ emp_code: "1042", punch_time: "2026-11-27 09:00:05" });
  const reachableUrl = harness.config.recordFingerprintPunches.url;
  harness.config.recordFingerprintPunches.url = "http://127.0.0.1:9/recordFingerprintPunches";
  await assert.rejects(harness.newSync().pollOnce());
  harness.config.recordFingerprintPunches.url = reachableUrl;

  await harness.newSync().pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1042"],
  );
});

test("reports to the function on every poll, even with no new punches", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.serverLocalTime = "2026-11-27 08:59:20";

  await sync.pollOnce();

  assert.deepEqual(harness.recordFingerprintPunches.acceptedRequests, [
    { biotimeServerLocalTime: "2026-11-27T08:59:00", punches: [] },
    { biotimeServerLocalTime: "2026-11-27T08:59:20", punches: [] },
  ]);
});

test("sends at most 500 punches per request", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.biotime.pageSize = 100;
  const sync = harness.newSync();
  await sync.pollOnce();
  addPunchesOnePerSecond(harness.biotime, 1201, "2026-11-27 09:00:00");

  await sync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedRequestsWithPunches.map((request) =>
      request.punches.length
    ),
    [500, 500, 201],
  );
});

test("after the function rejects a later batch, resends only the punches it had not accepted", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  harness.biotime.pageSize = 100;
  harness.biotime.listsNewestFirst = true;
  const sync = harness.newSync();
  await sync.pollOnce();
  const addedEmployeeCodes = addPunchesOnePerSecond(
    harness.biotime,
    700,
    "2026-11-27 09:00:00",
  );
  harness.recordFingerprintPunches.failAfterAccepting(1);
  await assert.rejects(sync.pollOnce());
  harness.recordFingerprintPunches.acceptEveryRequest();

  await sync.pollOnce();

  const sentEmployeeCodes = harness.recordFingerprintPunches.acceptedPunches.map(
    (punch) => punch.employeeCode,
  );
  assert.deepEqual(sentEmployeeCodes.sort(), addedEmployeeCodes.sort());
});

test("forwards a punch made in the same second as punches already sent, without resending them", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-27 09:00:05" });
  harness.biotime.addPunch({ emp_code: "1002", punch_time: "2026-11-27 09:00:05" });
  await sync.pollOnce();
  harness.biotime.addPunch({ emp_code: "1003", punch_time: "2026-11-27 09:00:05" });
  await harness.newSync().pollOnce();

  await harness.newSync().pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1001", "1002", "1003"],
  );
});

test("skips a punch whose time BioTime sent unreadable and forwards the rest", async (t) => {
  const harness = await startSyncHarness(t, "2026-11-27 08:59:00");
  const sync = harness.newSync();
  await sync.pollOnce();
  harness.biotime.addPunch({ emp_code: "1001", punch_time: "2026-11-27 09:00:05" });
  harness.biotime.addPunch({ emp_code: "1002", punch_time: "2026-11-27 9:0" });
  harness.biotime.addPunch({ emp_code: "1003", punch_time: "2026-11-27 09:00:07" });

  await sync.pollOnce();

  assert.deepEqual(
    harness.recordFingerprintPunches.acceptedPunches.map((punch) => punch.employeeCode),
    ["1001", "1003"],
  );
});

function addPunchesOnePerSecond(
  biotime: FakeBiotimeServer,
  count: number,
  firstPunchTime: string,
): string[] {
  const first = DateTime.fromSQL(firstPunchTime);
  const addedEmployeeCodes: string[] = [];

  for (let index = 0; index < count; index++) {
    const employeeCode = String(index + 1);
    biotime.addPunch({
      emp_code: employeeCode,
      punch_time: first.plus({ seconds: index }).toFormat("yyyy-MM-dd HH:mm:ss"),
    });
    addedEmployeeCodes.push(employeeCode);
  }

  return addedEmployeeCodes;
}
