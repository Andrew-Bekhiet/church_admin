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
    const response = await fetch(this.config.url, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Fingerprint-Sync-Secret": this.config.secret,
      },
      body: JSON.stringify({ biotimeServerLocalTime, punches }),
    });

    if (!response.ok) {
      throw new Error(
        `The record punches function answered ${response.status}: ${await response.text()}`,
      );
    }
  }
}
