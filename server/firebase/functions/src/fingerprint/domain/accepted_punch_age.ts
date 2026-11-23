import { DateTime, Duration } from "luxon";

const FUTURE_PUNCH_TOLERANCE = Duration.fromObject({ minutes: 5 });
const OLDEST_ACCEPTED_PUNCH_AGE = Duration.fromObject({ hours: 10 * 24 });

export function isWithinAcceptedPunchAge(
  punchedAt: DateTime<true>,
  now: DateTime<true>,
): boolean {
  const punchAge = now.diff(punchedAt);

  return punchAge >= FUTURE_PUNCH_TOLERANCE.negate() &&
    punchAge <= OLDEST_ACCEPTED_PUNCH_AGE;
}
