import { DateTime } from "luxon";
import {
  BiotimeClient,
  BiotimeTransaction,
} from "./biotime/biotime_client";
import {
  BIOTIME_TIME_FORMAT,
  cairoInstantOfBiotimeTime,
} from "./biotime/biotime_time";
import { FingerprintSyncConfig } from "./config";
import {
  Cursor,
  readCursorIfSaved,
  saveCursorDurably,
} from "./cursor/cursor_file";
import { logInfo } from "./log";
import {
  Punch,
  RecordFingerprintPunchesClient,
} from "./record_fingerprint_punches/record_fingerprint_punches_client";

const ISO_LOCAL_DATE_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss";
const MAX_PUNCHES_PER_REQUEST = 500;

export class FingerprintSync {
  private readonly biotime: BiotimeClient;
  private readonly recordFingerprintPunches: RecordFingerprintPunchesClient;

  constructor(
    private readonly config: FingerprintSyncConfig,
    private readonly serverLocalNow: () => DateTime<true>,
  ) {
    this.biotime = new BiotimeClient(config.biotime);
    this.recordFingerprintPunches = new RecordFingerprintPunchesClient(
      config.recordFingerprintPunches,
    );
  }

  async pollOnce(): Promise<void> {
    const cursor = await this.readCursorOrSaveOneStartingNow();
    const transactions = await this.biotime.readableTransactionsBetween(
      cursor.forwardedUpTo,
    );
    const unforwarded = transactions
      .filter((transaction) => !wasForwardedBefore(transaction, cursor))
      .sort(byPunchTimeThenId);

    let cursorAfterForwardedBatches = cursor;

    for (const batch of requestBatchesOrOneEmpty(unforwarded)) {
      await this.recordPunches(batch);

      if (batch.length > 0) {
        cursorAfterForwardedBatches = cursorAfter(
          cursorAfterForwardedBatches,
          batch,
        );
        await saveCursorDurably(
          this.config.cursorFile,
          cursorAfterForwardedBatches,
        );
      }
    }

    if (unforwarded.length > 0) {
      logInfo(
        `Forwarded ${unforwarded.length} punches up to ${cursorAfterForwardedBatches.forwardedUpTo}`,
      );
    }
  }

  async sendPunchesBetween(startTime: string, endTime: string): Promise<void> {
    const transactions = await this.biotime.readableTransactionsBetween(
      startTime,
      endTime,
    );

    for (const batch of requestBatchesOrOneEmpty(transactions.sort(byPunchTimeThenId))) {
      await this.recordPunches(batch);

      if (batch.length > 0) {
        logInfo(
          `Sent ${batch.length} punches up to ${batch.at(-1)!.punch_time}`,
        );
      }
    }

    logInfo(
      `Sent ${transactions.length} punches between ${startTime} and ${endTime}`,
    );
  }

  async verifyBiotimeAndFunctionAccess(): Promise<void> {
    await describingFailureAs(
      "Could not read transactions from BioTime",
      () => this.biotime.readableTransactionsBetween(
        this.serverLocalNow().toFormat(BIOTIME_TIME_FORMAT),
      ),
    );
    await describingFailureAs(
      "recordFingerprintPunches did not accept a request",
      () => this.recordPunches([]),
    );
  }

  private async recordPunches(transactions: BiotimeTransaction[]) {
    await this.recordFingerprintPunches.recordPunches(
      transactions.map(punchOf),
      this.serverLocalNow().toFormat(ISO_LOCAL_DATE_TIME_FORMAT),
    );
  }

  private async readCursorOrSaveOneStartingNow(): Promise<Cursor> {
    const savedCursor = await readCursorIfSaved(this.config.cursorFile);

    if (savedCursor) {
      return savedCursor;
    }

    const cursorStartingNow = {
      forwardedUpTo: this.serverLocalNow().toFormat(BIOTIME_TIME_FORMAT),
      forwardedTransactionIdsAtThatTime: [],
    };
    await saveCursorDurably(this.config.cursorFile, cursorStartingNow);
    logInfo(
      `No cursor file at ${this.config.cursorFile}, forwarding punches from ${cursorStartingNow.forwardedUpTo}`,
    );

    return cursorStartingNow;
  }
}

async function describingFailureAs<T>(
  failure: string,
  attempt: () => Promise<T>,
): Promise<T> {
  try {
    return await attempt();
  } catch (e) {
    throw new Error(`${failure}: ${messageWithCauses(e)}`, { cause: e });
  }
}

function messageWithCauses(error: unknown): string {
  if (!(error instanceof Error)) {
    return String(error);
  }

  return error.cause === undefined
    ? error.message
    : `${error.message} (${messageWithCauses(error.cause)})`;
}

function wasForwardedBefore(transaction: BiotimeTransaction, cursor: Cursor) {
  return transaction.punch_time < cursor.forwardedUpTo ||
    (transaction.punch_time === cursor.forwardedUpTo &&
      cursor.forwardedTransactionIdsAtThatTime.includes(transaction.id));
}

function byPunchTimeThenId(a: BiotimeTransaction, b: BiotimeTransaction) {
  return a.punch_time.localeCompare(b.punch_time) || a.id - b.id;
}

function requestBatchesOrOneEmpty(
  transactions: BiotimeTransaction[],
): BiotimeTransaction[][] {
  const batches: BiotimeTransaction[][] = [];

  for (let start = 0; start < transactions.length; start += MAX_PUNCHES_PER_REQUEST) {
    batches.push(transactions.slice(start, start + MAX_PUNCHES_PER_REQUEST));
  }

  const oneEmptyBatchSoTheFunctionStillHearsFromUs = [[]];

  return batches.length > 0 ? batches : oneEmptyBatchSoTheFunctionStillHearsFromUs;
}

function punchOf(transaction: BiotimeTransaction): Punch {
  return {
    employeeCode: transaction.emp_code,
    punchedAt: cairoInstantOfBiotimeTime(transaction.punch_time),
    terminalSerial: transaction.terminal_sn,
  };
}

function cursorAfter(cursor: Cursor, forwarded: BiotimeTransaction[]): Cursor {
  const latestPunchTime = forwarded.at(-1)?.punch_time ?? cursor.forwardedUpTo;
  const idsForwardedAtLatestPunchTime = forwarded
    .filter((transaction) => transaction.punch_time === latestPunchTime)
    .map((transaction) => transaction.id);

  return {
    forwardedUpTo: latestPunchTime,
    forwardedTransactionIdsAtThatTime: latestPunchTime === cursor.forwardedUpTo
      ? [...cursor.forwardedTransactionIdsAtThatTime, ...idsForwardedAtLatestPunchTime]
      : idsForwardedAtLatestPunchTime,
  };
}
