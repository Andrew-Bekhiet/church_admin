import { DateTime, Duration } from "luxon";

const FUTURE_PUNCH_TOLERANCE = Duration.fromObject({ minutes: 5 });
const OLDEST_ACCEPTED_PUNCH_AGE = Duration.fromObject({ hours: 10 * 24 });

export type PunchAge = "accepted" | "tooOld" | "inFuture";

export function punchAgeAt(
  punchedAt: DateTime<true>,
  now: DateTime<true>,
): PunchAge {
  const punchAge = now.diff(punchedAt);

  if (punchAge < FUTURE_PUNCH_TOLERANCE.negate()) return "inFuture";
  if (punchAge > OLDEST_ACCEPTED_PUNCH_AGE) return "tooOld";

  return "accepted";
}
