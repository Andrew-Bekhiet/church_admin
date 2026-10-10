import { getDatabase } from "firebase-admin/database";

const maxAttempts = 6;
const attemptWindowMilliseconds = 5 * 60 * 60 * 1000;

function recentAttempts(value: unknown, now: number): number[] {
  if (!Array.isArray(value)) {
    return [];
  }

  return value
    .filter((attempt): attempt is number => typeof attempt === "number")
    .filter((attempt) => attempt > now - attemptWindowMilliseconds);
}

export async function recordInvitationAttemptOrThrow(
  firebaseAuthUID: string,
  error: Error,
): Promise<void> {
  const now = Date.now();
  const reference = getDatabase().ref(
    `AccountClaimAttempts/${firebaseAuthUID}`,
  );
  const result = await reference.transaction((currentValue) => {
    const attempts = recentAttempts(currentValue, now);

    if (attempts.length >= maxAttempts) {
      return;
    }

    return [...attempts, now];
  });

  if (result.committed) return;

  console.error("Invitation-code attempt limit exceeded", firebaseAuthUID);

  throw error;
}
