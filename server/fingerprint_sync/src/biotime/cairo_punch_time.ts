import { DateTime } from "luxon";

export const BIOTIME_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

export function cairoInstantOfBiotimeTime(biotimeTime: string): string {
  return DateTime.fromFormat(biotimeTime, BIOTIME_TIME_FORMAT, {
    zone: "Africa/Cairo",
  }).toISO({ suppressMilliseconds: true })!;
}
