import { DateTime } from "luxon";

const CAIRO_TIME_ZONE = "Africa/Cairo";

export interface CairoWallClock {
  isoWeekday: number;
  date: string;
  timeOfDay: string;
}

function cairoTimeAt(instant: Date): DateTime<true> {
  const cairoTime = DateTime.fromJSDate(instant, { zone: CAIRO_TIME_ZONE });

  if (!cairoTime.isValid) {
    throw new RangeError(`Not an instant: ${cairoTime.invalidExplanation}`);
  }

  return cairoTime;
}

export function cairoWallClockAt(instant: Date): CairoWallClock {
  const cairoTime = cairoTimeAt(instant);

  return {
    isoWeekday: cairoTime.weekday,
    date: cairoTime.toISODate(),
    timeOfDay: cairoTime.toFormat("HH:mm:ss"),
  };
}

function isReadableAndZoneless(isoTime: string): boolean {
  const timeInCairoUnlessItCarriesAZone = DateTime.fromISO(isoTime, {
    zone: CAIRO_TIME_ZONE,
    setZone: true,
  });

  return timeInCairoUnlessItCarriesAZone.zoneName === CAIRO_TIME_ZONE;
}

export function driftFromCairoWallClockMsOrNaNIfUnreadable(
  zonelessLocalTime: string,
  now: Date,
): number {
  if (!isReadableAndZoneless(zonelessLocalTime)) return NaN;

  const wallClockReadAsUtc = DateTime.fromISO(zonelessLocalTime, {
    zone: "utc",
  });
  const cairoWallClockReadAsUtc = cairoTimeAt(now).setZone("utc", {
    keepLocalTime: true,
  });

  return wallClockReadAsUtc.toMillis() - cairoWallClockReadAsUtc.toMillis();
}
