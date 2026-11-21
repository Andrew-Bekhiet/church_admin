import { DateTime } from "luxon";

export function instant(isoTimeWithOffset: string): DateTime<true> {
  const parsed = DateTime.fromISO(isoTimeWithOffset, { setZone: true });

  if (!parsed.isValid) {
    throw new RangeError(`Not an instant: ${parsed.invalidExplanation}`);
  }

  return parsed;
}
