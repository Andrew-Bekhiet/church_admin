const CAIRO_TIME_ZONE = "Africa/Cairo";

const ISO_WEEKDAY_BY_SHORT_NAME: Record<string, number> = {
  Mon: 1,
  Tue: 2,
  Wed: 3,
  Thu: 4,
  Fri: 5,
  Sat: 6,
  Sun: 7,
};

const cairoPartsFormat = new Intl.DateTimeFormat("en-US", {
  timeZone: CAIRO_TIME_ZONE,
  hourCycle: "h23",
  weekday: "short",
  year: "numeric",
  month: "2-digit",
  day: "2-digit",
  hour: "2-digit",
  minute: "2-digit",
  second: "2-digit",
});

export interface CairoWallClock {
  isoWeekday: number;
  date: string;
  timeOfDay: string;
}

export function cairoWallClockAt(instant: Date): CairoWallClock {
  const parts = Object.fromEntries(
    cairoPartsFormat
      .formatToParts(instant)
      .map((part) => [part.type, part.value]),
  );

  return {
    isoWeekday: ISO_WEEKDAY_BY_SHORT_NAME[parts.weekday],
    date: `${parts.year}-${parts.month}-${parts.day}`,
    timeOfDay: `${parts.hour}:${parts.minute}:${parts.second}`,
  };
}

export function driftFromCairoWallClockMs(
  zonelessLocalTime: string,
  now: Date,
): number {
  const { date, timeOfDay } = cairoWallClockAt(now);

  return Date.parse(`${zonelessLocalTime}Z`) -
    Date.parse(`${date}T${timeOfDay}Z`);
}
