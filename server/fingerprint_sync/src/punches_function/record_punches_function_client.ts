import { FingerprintSyncConfig } from "../config";

export interface Punch {
  employeeCode: string;
  punchedAt: string;
  terminalSerial: string;
}

export class RecordPunchesFunctionClient {
  constructor(
    private readonly config: FingerprintSyncConfig["recordPunchesFunction"],
  ) {}

  async recordPunches(
    punches: Punch[],
    biotimeServerLocalTime: string,
  ): Promise<void> {
    await fetch(this.config.url, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Fingerprint-Sync-Secret": this.config.secret,
      },
      body: JSON.stringify({ biotimeServerLocalTime, punches }),
    });
  }
}
