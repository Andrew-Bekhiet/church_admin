import { z } from "zod";
import { FingerprintSyncConfig } from "../config";
import { logWarning } from "../log";
import { isReadableBiotimeTime } from "./biotime_time";

export type BiotimeTransaction = z.infer<typeof biotimeTransaction>;

const biotimeTransaction = z.object({
  id: z.number().int(),
  emp_code: z.string().trim().min(1),
  punch_time: z.string().refine(isReadableBiotimeTime),
  terminal_sn: z.string().nullable().transform((serial) => serial ?? ""),
});

const transactionsPage = z.object({
  next: z.string().nullable(),
  data: z.array(z.unknown()),
});

const loginResponse = z.object({ token: z.string().min(1) });

const PAGE_SIZE = 100;

export class BiotimeClient {
  private token: string | undefined;

  constructor(private readonly config: FingerprintSyncConfig["biotime"]) {}

  async transactionsFrom(
    startTime: string,
    untilTime?: string,
  ): Promise<BiotimeTransaction[]> {
    const url = new URL("/iclock/api/transactions/", this.config.baseUrl);
    url.searchParams.set("start_time", startTime);

    if (untilTime !== undefined) {
      url.searchParams.set("end_time", untilTime);
    }

    url.searchParams.set("page_size", String(PAGE_SIZE));

    const transactions: BiotimeTransaction[] = [];

    for (let pageNumber = 1; ; pageNumber++) {
      url.searchParams.set("page", String(pageNumber));
      const page = await this.transactionsPage(url);
      transactions.push(...readableTransactionsOf(page.data));

      if (page.next === null) {
        return transactions;
      }
    }
  }

  private async transactionsPage(
    url: URL,
  ): Promise<z.infer<typeof transactionsPage>> {
    let response = await this.authorizedGet(url);

    if (response.status === 401) {
      this.token = undefined;
      response = await this.authorizedGet(url);
    }

    return transactionsPage.parse(await jsonOfSuccessful(response));
  }

  private async authorizedGet(url: URL): Promise<Response> {
    return await fetch(url, {
      headers: { Authorization: `Token ${await this.loggedInToken()}` },
    });
  }

  private async loggedInToken(): Promise<string> {
    this.token ??= await this.logIn();

    return this.token;
  }

  private async logIn(): Promise<string> {
    const response = await fetch(
      new URL("/api-token-auth/", this.config.baseUrl),
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: this.config.username,
          password: this.config.password,
        }),
      },
    );

    return loginResponse.parse(await jsonOfSuccessful(response)).token;
  }
}

function readableTransactionsOf(rawTransactions: unknown[]) {
  return rawTransactions.flatMap((rawTransaction) => {
    const transaction = biotimeTransaction.safeParse(rawTransaction);

    if (!transaction.success) {
      logWarning(
        "Skipped an unreadable BioTime transaction",
        JSON.stringify(rawTransaction),
        transaction.error.issues,
      );

      return [];
    }

    return [transaction.data];
  });
}

async function jsonOfSuccessful(response: Response): Promise<unknown> {
  if (!response.ok) {
    throw new Error(
      `BioTime answered ${response.status} to ${response.url}: ${await response.text()}`,
    );
  }

  return await response.json();
}
