import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  cairoWallClockAt,
  cairoWallClockDriftMs,
} from "../src/fingerprint/cairo_wall_clock";

describe("cairoWallClockAt", () => {
  it("reads winter time two hours ahead of UTC", () => {
    assert.deepEqual(cairoWallClockAt(new Date("2026-11-13T07:00:00Z")), {
      isoWeekday: 5,
      date: "2026-11-13",
      timeOfDay: "09:00:00",
    });
  });

  it("reads the Friday before clocks go forward two hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(new Date("2026-04-17T08:30:00Z")).timeOfDay,
      "10:30:00",
    );
  });

  it("reads the Friday clocks go forward three hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(new Date("2026-04-24T08:30:00Z")).timeOfDay,
      "11:30:00",
    );
  });

  it("reads the Friday before clocks go back three hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(new Date("2026-10-23T08:30:00Z")).timeOfDay,
      "11:30:00",
    );
  });

  it("reads the Friday after clocks go back two hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(new Date("2026-10-30T08:30:00Z")).timeOfDay,
      "10:30:00",
    );
  });

  it("jumps over the hour skipped when clocks go forward", () => {
    assert.deepEqual(
      [
        cairoWallClockAt(new Date("2026-04-23T21:59:59Z")),
        cairoWallClockAt(new Date("2026-04-23T22:00:00Z")),
      ],
      [
        { isoWeekday: 4, date: "2026-04-23", timeOfDay: "23:59:59" },
        { isoWeekday: 5, date: "2026-04-24", timeOfDay: "01:00:00" },
      ],
    );
  });

  it("reads both passes of the hour repeated when clocks go back as Thursday", () => {
    assert.deepEqual(
      [
        cairoWallClockAt(new Date("2026-10-29T20:30:00Z")),
        cairoWallClockAt(new Date("2026-10-29T21:30:00Z")),
      ],
      [
        { isoWeekday: 4, date: "2026-10-29", timeOfDay: "23:30:00" },
        { isoWeekday: 4, date: "2026-10-29", timeOfDay: "23:30:00" },
      ],
    );
  });

  it("counts Sunday as the seventh weekday", () => {
    assert.equal(
      cairoWallClockAt(new Date("2026-11-15T10:00:00Z")).isoWeekday,
      7,
    );
  });
});

describe("cairoWallClockDriftMs", () => {
  const now = new Date("2026-11-13T07:00:00Z");

  it("is zero for a server clock showing Cairo time", () => {
    assert.equal(cairoWallClockDriftMs("2026-11-13T09:00:00", now), 0);
  });

  it("is one hour for a server clock that missed the change back from summer time", () => {
    assert.equal(
      cairoWallClockDriftMs("2026-11-13T10:00:00", now),
      60 * 60 * 1000,
    );
  });
});
