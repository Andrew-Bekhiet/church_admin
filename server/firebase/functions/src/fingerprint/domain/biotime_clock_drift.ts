import { DateTime, Duration } from "luxon";
import { CAIRO_TIME_ZONE, cairoTimeAt } from "./cairo_wall_clock";

const TOLERATED_BIOTIME_CLOCK_DRIFT = Duration.fromObject({ minutes: 5 });

function isReadableAndZoneless(isoTime: string): boolean {
  const timeInCairoUnlessItCarriesAZone = DateTime.fromISO(isoTime, {
    zone: CAIRO_TIME_ZONE,
    setZone: true,
  });

  return timeInCairoUnlessItCarriesAZone.zoneName === CAIRO_TIME_ZONE;
}

export function driftFromCairoWallClockOrInvalidIfUnreadable(
  zonelessLocalTime: string,
  now: DateTime<true>,
): Duration {
  if (!isReadableAndZoneless(zonelessLocalTime)) {
    return Duration.invalid("local time is unreadable or carries a zone");
  }

  const wallClockReadAsUtc = DateTime.fromISO(zonelessLocalTime, {
    zone: "utc",
  });
  const cairoWallClockReadAsUtc = cairoTimeAt(now).setZone("utc", {
    keepLocalTime: true,
  });

  return wallClockReadAsUtc.diff(cairoWallClockReadAsUtc);
}

export function isKnownToBeWithinToleratedBiotimeClockDrift(
  drift: Duration,
): boolean {
  return drift >= TOLERATED_BIOTIME_CLOCK_DRIFT.negate() &&
    drift <= TOLERATED_BIOTIME_CLOCK_DRIFT;
}
