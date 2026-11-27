import { DateTime, DateTimeMaybeValid } from "luxon";

export const CAIRO_TIME_ZONE = "Africa/Cairo";

export interface CairoWallClock {
  isoWeekday: number;
  date: string;
  timeOfDay: string;
}

export function cairoWallClockAt(instant: DateTime<true>): CairoWallClock {
  const cairoTime = cairoTimeAt(instant);

  return {
    isoWeekday: cairoTime.weekday,
    date: cairoTime.toISODate(),
    timeOfDay: cairoTime.toFormat("HH:mm:ss"),
  };
}

export function cairoTimeAt(instant: DateTime<true>): DateTime<true> {
  const cairoTime = instant.setZone(CAIRO_TIME_ZONE);

  if (!cairoTime.isValid) {
    throw new RangeError(
      `Cairo time zone is unavailable: ${cairoTime.invalidExplanation}`,
    );
  }

  return cairoTime;
}

export function earliestInstantAtCairoWallClock(
  zonelessCairoTime: string,
  format: string,
): DateTimeMaybeValid {
  const firstReading = DateTime.fromFormat(zonelessCairoTime, format, {
    zone: CAIRO_TIME_ZONE,
  });

  if (!firstReading.isValid) return firstReading;

  return DateTime.min(...firstReading.getPossibleOffsets()) ?? firstReading;
}
