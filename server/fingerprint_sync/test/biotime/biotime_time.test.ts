import assert from "node:assert/strict";
import { test } from "node:test";
import { cairoInstantOfBiotimeTime } from "../../src/biotime/biotime_time";

test("reads punch times as Cairo standard time outside daylight saving", () => {
  assert.equal(
    cairoInstantOfBiotimeTime("2026-04-23 21:00:00"),
    "2026-04-23T21:00:00+02:00",
  );
  assert.equal(
    cairoInstantOfBiotimeTime("2026-10-30 09:00:00"),
    "2026-10-30T09:00:00+02:00",
  );
});

test("reads punch times as Cairo summer time during daylight saving", () => {
  assert.equal(
    cairoInstantOfBiotimeTime("2026-04-24 09:00:00"),
    "2026-04-24T09:00:00+03:00",
  );
  assert.equal(
    cairoInstantOfBiotimeTime("2026-10-29 21:00:00"),
    "2026-10-29T21:00:00+03:00",
  );
});

test("reads a time in the hour skipped when clocks go forward as an instant next to it", () => {
  const instant = cairoInstantOfBiotimeTime("2026-04-24 00:30:00");

  assert.ok(
    ["2026-04-23T21:30:00.000Z", "2026-04-23T22:30:00.000Z"].includes(
      new Date(instant).toISOString(),
    ),
    instant,
  );
});

test("reads a time in the hour repeated when clocks go back as one of its two instants", () => {
  const instant = cairoInstantOfBiotimeTime("2026-10-29 23:30:00");

  assert.ok(
    ["2026-10-29T20:30:00.000Z", "2026-10-29T21:30:00.000Z"].includes(
      new Date(instant).toISOString(),
    ),
    instant,
  );
});
