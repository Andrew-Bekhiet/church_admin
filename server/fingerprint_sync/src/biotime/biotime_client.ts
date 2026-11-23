import { FingerprintSyncConfig } from "../config";

export interface BiotimeTransaction {
  id: number;
  emp_code: string;
  punch_time: string;
  terminal_sn: string;
}

interface TransactionsPage {
  next: string | null;
  data: BiotimeTransaction[];
}

const PAGE_SIZE = 100;

export class BiotimeClient {
  private token: string | undefined;

  constructor(private readonly config: FingerprintSyncConfig["biotime"]) {}

  async transactionsFrom(startTime: string): Promise<BiotimeTransaction[]> {
    const transactions: BiotimeTransaction[] = [];

    for (let pageNumber = 1; ; pageNumber++) {
      const page = await this.transactionsPage(startTime, pageNumber);
      transactions.push(...page.data);

      if (page.next === null) {
        return transactions;
      }
    }
  }

  private async transactionsPage(
    startTime: string,
    pageNumber: number,
  ): Promise<TransactionsPage> {
    const url = new URL("/iclock/api/transactions/", this.config.baseUrl);
    url.searchParams.set("start_time", startTime);
    url.searchParams.set("page", String(pageNumber));
    url.searchParams.set("page_size", String(PAGE_SIZE));

    let response = await this.authorizedGet(url);

    if (response.status === 401) {
      this.token = undefined;
      response = await this.authorizedGet(url);
    }

    return await jsonOfSuccessful(response) as TransactionsPage;
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
    const { token } = await jsonOfSuccessful(response) as { token: string };

    return token;
  }
}

async function jsonOfSuccessful(response: Response): Promise<unknown> {
  if (!response.ok) {
    throw new Error(
      `BioTime answered ${response.status} to ${response.url}: ${await response.text()}`,
    );
  }

  return await response.json();
}
