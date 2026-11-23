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
import { Cursor, readCursorIfSaved, saveCursor } from "./cursor/cursor_file";
import { logInfo } from "./log";
import {
  Punch,
  RecordPunchesFunctionClient,
} from "./punches_function/record_punches_function_client";

const ISO_LOCAL_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss";
const MAX_PUNCHES_PER_REQUEST = 500;

export class FingerprintSync {
  private readonly biotime: BiotimeClient;
  private readonly recordPunchesFunction: RecordPunchesFunctionClient;

  constructor(
    private readonly config: FingerprintSyncConfig,
    private readonly serverLocalNow: () => DateTime<true>,
  ) {
    this.biotime = new BiotimeClient(config.biotime);
    this.recordPunchesFunction = new RecordPunchesFunctionClient(
      config.recordPunchesFunction,
    );
  }

  async pollOnce(): Promise<void> {
    const cursor = await this.savedCursorOrOneStartingNow();
    const transactions = await this.biotime.transactionsFrom(cursor.punchTime);
    const unsent = transactions
      .filter((transaction) => !wasSentBefore(transaction, cursor))
      .sort(byPunchTimeThenId);

    let cursorAfterSentBatches = cursor;

    for (const batch of batchesOfAtLeastOne(unsent)) {
      await this.recordPunches(batch);
      cursorAfterSentBatches = cursorAfter(cursorAfterSentBatches, batch);
      await saveCursor(this.config.cursorFile, cursorAfterSentBatches);
    }

    if (unsent.length > 0) {
      logInfo(
        `Forwarded ${unsent.length} punches up to ${cursorAfterSentBatches.punchTime}`,
      );
    }
  }

  async sendPunchesBetween(startTime: string, endTime: string): Promise<void> {
    const transactions = await this.biotime.transactionsFrom(startTime, endTime);

    for (const batch of batchesOfAtLeastOne(transactions.sort(byPunchTimeThenId))) {
      await this.recordPunches(batch);
    }

    logInfo(
      `Sent ${transactions.length} punches between ${startTime} and ${endTime}`,
    );
  }

  private async recordPunches(transactions: BiotimeTransaction[]) {
    await this.recordPunchesFunction.recordPunches(
      transactions.map(punchOf),
      this.serverLocalNow().toFormat(ISO_LOCAL_TIME_FORMAT),
    );
  }

  private async savedCursorOrOneStartingNow(): Promise<Cursor> {
    const savedCursor = await readCursorIfSaved(this.config.cursorFile);

    if (savedCursor) {
      return savedCursor;
    }

    const cursorStartingNow = {
      punchTime: this.serverLocalNow().toFormat(BIOTIME_TIME_FORMAT),
      sentIdsAtPunchTime: [],
    };
    await saveCursor(this.config.cursorFile, cursorStartingNow);
    logInfo(
      `No cursor file at ${this.config.cursorFile}, forwarding punches from ${cursorStartingNow.punchTime}`,
    );

    return cursorStartingNow;
  }
}

function wasSentBefore(transaction: BiotimeTransaction, cursor: Cursor) {
  return transaction.punch_time < cursor.punchTime ||
    (transaction.punch_time === cursor.punchTime &&
      cursor.sentIdsAtPunchTime.includes(transaction.id));
}

function byPunchTimeThenId(a: BiotimeTransaction, b: BiotimeTransaction) {
  return a.punch_time.localeCompare(b.punch_time) || a.id - b.id;
}

function batchesOfAtLeastOne(
  transactions: BiotimeTransaction[],
): BiotimeTransaction[][] {
  const batches: BiotimeTransaction[][] = [];

  for (let start = 0; start < transactions.length; start += MAX_PUNCHES_PER_REQUEST) {
    batches.push(transactions.slice(start, start + MAX_PUNCHES_PER_REQUEST));
  }

  return batches.length > 0 ? batches : [[]];
}

function punchOf(transaction: BiotimeTransaction): Punch {
  return {
    employeeCode: transaction.emp_code,
    punchedAt: cairoInstantOfBiotimeTime(transaction.punch_time),
    terminalSerial: transaction.terminal_sn,
  };
}

function cursorAfter(cursor: Cursor, sent: BiotimeTransaction[]): Cursor {
  const latestPunchTime = sent.at(-1)?.punch_time ?? cursor.punchTime;
  const idsSentAtLatestPunchTime = sent
    .filter((transaction) => transaction.punch_time === latestPunchTime)
    .map((transaction) => transaction.id);

  return {
    punchTime: latestPunchTime,
    sentIdsAtPunchTime: latestPunchTime === cursor.punchTime
      ? [...cursor.sentIdsAtPunchTime, ...idsSentAtLatestPunchTime]
      : idsSentAtLatestPunchTime,
  };
}
