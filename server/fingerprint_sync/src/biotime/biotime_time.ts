import { DateTime } from "luxon";

export const BIOTIME_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

const BIOTIME_TIME_ZONE = "Africa/Cairo";

export function isReadableBiotimeTime(biotimeTime: string): boolean {
  return DateTime.fromFormat(biotimeTime, BIOTIME_TIME_FORMAT).isValid;
}

export function cairoInstantOfBiotimeTime(biotimeTime: string): string {
  return DateTime.fromFormat(biotimeTime, BIOTIME_TIME_FORMAT, {
    zone: BIOTIME_TIME_ZONE,
  }).toISO({ suppressMilliseconds: true })!;
}
