import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { DateTime } from "luxon";
import { driftFromCairoWallClockOrInvalidIfUnreadable } from "../../../src/fingerprint/domain/biotime_clock_drift";
import { instant } from "../../support/instant";

function driftMillis(zonelessLocalTime: string, now: DateTime<true>): number {
  return driftFromCairoWallClockOrInvalidIfUnreadable(zonelessLocalTime, now)
    .toMillis();
}

describe("driftFromCairoWallClockOrInvalidIfUnreadable", () => {
  const now = instant("2026-11-13T07:00:00Z");

  it("is zero for a server clock showing Cairo time", () => {
    assert.equal(
      driftMillis("2026-11-13T09:00:00", now),
      0,
    );
  });

  it("is one hour for a server clock that missed the change back from summer time", () => {
    assert.equal(
      driftMillis("2026-11-13T10:00:00", now),
      60 * 60 * 1000,
    );
  });

  it("is minus one hour for a server clock an hour behind Cairo time", () => {
    assert.equal(
      driftMillis("2026-11-13T08:00:00", now),
      -60 * 60 * 1000,
    );
  });

  it("is zero in both passes of the hour repeated when clocks go back", () => {
    assert.deepEqual(
      [
        driftMillis(
          "2026-10-29T23:30:00",
          instant("2026-10-29T20:30:00Z"),
        ),
        driftMillis(
          "2026-10-29T23:30:00",
          instant("2026-10-29T21:30:00Z"),
        ),
      ],
      [0, 0],
    );
  });

  it("is minus one hour for a server clock showing a time in the hour Cairo skipped", () => {
    assert.equal(
      driftMillis(
        "2026-04-24T00:30:00",
        instant("2026-04-23T22:30:00Z"),
      ),
      -60 * 60 * 1000,
    );
  });

  it("is not a number for a server time that carries a zone", () => {
    assert.deepEqual(
      [
        driftMillis("2026-11-13T09:00:00Z", now),
        driftMillis("2026-11-13T09:00:00+02:00", now),
      ],
      [NaN, NaN],
    );
  });

  it("is not a number for a server time that is not a time", () => {
    assert.equal(
      driftMillis("nine o'clock", now),
      NaN,
    );
  });
});
