import assert from "node:assert/strict";
import { describe, it } from "node:test";
import {
  cairoWallClockAt,
  earliestInstantAtCairoWallClock,
} from "../../../src/fingerprint/domain/cairo_wall_clock";
import { instant } from "../../support/instant";

describe("cairoWallClockAt", () => {
  it("reads winter time two hours ahead of UTC", () => {
    assert.deepEqual(cairoWallClockAt(instant("2026-11-13T07:00:00Z")), {
      isoWeekday: 5,
      date: "2026-11-13",
      timeOfDay: "09:00:00",
    });
  });

  it("reads the Friday before clocks go forward two hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(instant("2026-04-17T08:30:00Z")).timeOfDay,
      "10:30:00",
    );
  });

  it("reads the Friday clocks go forward three hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(instant("2026-04-24T08:30:00Z")).timeOfDay,
      "11:30:00",
    );
  });

  it("reads the Friday before clocks go back three hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(instant("2026-10-23T08:30:00Z")).timeOfDay,
      "11:30:00",
    );
  });

  it("reads the Friday after clocks go back two hours ahead of UTC", () => {
    assert.equal(
      cairoWallClockAt(instant("2026-10-30T08:30:00Z")).timeOfDay,
      "10:30:00",
    );
  });

  it("jumps over the hour skipped when clocks go forward", () => {
    assert.deepEqual(
      [
        cairoWallClockAt(instant("2026-04-23T21:59:59Z")),
        cairoWallClockAt(instant("2026-04-23T22:00:00Z")),
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
        cairoWallClockAt(instant("2026-10-29T20:30:00Z")),
        cairoWallClockAt(instant("2026-10-29T21:30:00Z")),
      ],
      [
        { isoWeekday: 4, date: "2026-10-29", timeOfDay: "23:30:00" },
        { isoWeekday: 4, date: "2026-10-29", timeOfDay: "23:30:00" },
      ],
    );
  });

  it("counts Sunday as the seventh weekday", () => {
    assert.equal(
      cairoWallClockAt(instant("2026-11-15T10:00:00Z")).isoWeekday,
      7,
    );
  });
});

describe("earliestInstantAtCairoWallClock", () => {
  const biotimePunchTimeFormat = "yyyy-MM-dd HH:mm:ss";

  function utcInstantAt(cairoWallClock: string): string | null {
    return earliestInstantAtCairoWallClock(
      cairoWallClock,
      biotimePunchTimeFormat,
    ).toUTC().toISO();
  }

  it("reads a winter wall clock two hours ahead of UTC", () => {
    assert.equal(
      utcInstantAt("2026-11-13 09:30:00"),
      "2026-11-13T07:30:00.000Z",
    );
  });

  it("reads a summer wall clock three hours ahead of UTC", () => {
    assert.equal(
      utcInstantAt("2026-07-10 09:30:00"),
      "2026-07-10T06:30:00.000Z",
    );
  });

  it("reads a time in the hour repeated when clocks go back as its first pass", () => {
    assert.equal(
      utcInstantAt("2026-10-29 23:30:00"),
      "2026-10-29T20:30:00.000Z",
    );
  });

  it("reads the second before the repeated hour as summer time and the hour after it as winter time", () => {
    assert.deepEqual(
      [utcInstantAt("2026-10-29 22:59:59"), utcInstantAt("2026-10-30 00:00:00")],
      ["2026-10-29T19:59:59.000Z", "2026-10-29T22:00:00.000Z"],
    );
  });

  it("moves a time in the hour skipped when clocks go forward an hour later", () => {
    assert.deepEqual(
      [utcInstantAt("2026-04-24 00:30:00"), utcInstantAt("2026-04-24 01:30:00")],
      ["2026-04-23T22:30:00.000Z", "2026-04-23T22:30:00.000Z"],
    );
  });

  it("rejects a time with a T separator, an offset or unpadded digits", () => {
    assert.deepEqual(
      [
        "2026-11-13T09:30:00",
        "2026-11-13 09:30:00Z",
        "2026-11-13 09:30:00+02:00",
        "2026-11-3 9:30:00",
        "nine thirty",
      ].map((wallClock) =>
        earliestInstantAtCairoWallClock(wallClock, biotimePunchTimeFormat)
          .isValid
      ),
      [false, false, false, false, false],
    );
  });
});
