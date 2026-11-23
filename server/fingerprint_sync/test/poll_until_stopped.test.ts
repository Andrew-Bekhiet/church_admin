import assert from "node:assert/strict";
import { test } from "node:test";
import { pollUntilStopped } from "../src/poll_until_stopped";

test("keeps polling after a poll fails, until stopped", async () => {
  const stop = new AbortController();
  let polls = 0;

  await pollUntilStopped(
    async () => {
      polls++;

      if (polls === 1) {
        throw new Error("recordFingerprintPunches answered 503");
      }

      stop.abort();
    },
    0.001,
    stop.signal,
  );

  assert.equal(polls, 2);
});
