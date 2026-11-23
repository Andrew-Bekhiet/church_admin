import { setTimeout as sleep } from "node:timers/promises";
import { logError } from "./log";

export async function pollUntilStopped(
  pollOnce: () => Promise<void>,
  intervalSeconds: number,
  stop: AbortSignal,
): Promise<void> {
  while (!stop.aborted) {
    await pollOnceLoggingFailure(pollOnce);
    await sleepUnlessStopped(intervalSeconds, stop);
  }
}

async function pollOnceLoggingFailure(pollOnce: () => Promise<void>) {
  try {
    await pollOnce();
  } catch (e) {
    logError("Poll failed, the cursor stays where it was:", e);
  }
}

async function sleepUnlessStopped(seconds: number, stop: AbortSignal) {
  try {
    await sleep(seconds * 1000, undefined, { signal: stop });
  } catch (e) {
    if (!stop.aborted) {
      throw e;
    }
  }
}
