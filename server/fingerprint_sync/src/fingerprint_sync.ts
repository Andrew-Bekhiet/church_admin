import { DateTime } from "luxon";
import {
  BiotimeClient,
  BiotimeTransaction,
} from "./biotime/biotime_client";
import {
  BIOTIME_TIME_FORMAT,
  cairoInstantOfBiotimeTime,
} from "./biotime/cairo_punch_time";
import { FingerprintSyncConfig } from "./config";
import { Cursor, readCursorIfSaved, saveCursor } from "./cursor/cursor_file";
import {
  Punch,
  RecordPunchesFunctionClient,
} from "./punches_function/record_punches_function_client";

const ISO_LOCAL_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss";

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
    const unsent = transactions.filter((transaction) =>
      !cursor.sentIdsAtPunchTime.includes(transaction.id)
    );

    await this.recordPunchesFunction.recordPunches(
      unsent.map(punchOf),
      this.serverLocalNow().toFormat(ISO_LOCAL_TIME_FORMAT),
    );
    await saveCursor(this.config.cursorFile, cursorAfter(cursor, unsent));
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

    return cursorStartingNow;
  }
}

function punchOf(transaction: BiotimeTransaction): Punch {
  return {
    employeeCode: transaction.emp_code,
    punchedAt: cairoInstantOfBiotimeTime(transaction.punch_time),
    terminalSerial: transaction.terminal_sn,
  };
}

function cursorAfter(cursor: Cursor, sent: BiotimeTransaction[]): Cursor {
  const latestPunchTime = sent.reduce(
    (latest, transaction) =>
      transaction.punch_time > latest ? transaction.punch_time : latest,
    cursor.punchTime,
  );
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
