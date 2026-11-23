import { once } from "node:events";
import { createServer, IncomingMessage, Server, ServerResponse } from "node:http";
import { AddressInfo } from "node:net";
import { requestBodyOf } from "./request_body";

export const FUNCTION_SECRET = "test-fingerprint-sync-secret";

export interface ReceivedPunch {
  employeeCode: string;
  punchedAt: string;
  terminalSerial: string;
}

export interface ReceivedRequest {
  biotimeServerLocalTime: string;
  punches: ReceivedPunch[];
}

export class FakePunchesFunction {
  readonly accepted: ReceivedRequest[] = [];
  respondWithStatus = 204;
  requestsToAcceptBeforeFailing = Infinity;

  private constructor(private readonly server: Server) {}

  static async start(): Promise<FakePunchesFunction> {
    const server = createServer();
    const fake = new FakePunchesFunction(server);
    server.on("request", (req, res) => fake.handle(req, res));
    server.listen(0, "127.0.0.1");
    await once(server, "listening");

    return fake;
  }

  get url(): string {
    const { port } = this.server.address() as AddressInfo;

    return `http://127.0.0.1:${port}/recordFingerprintPunches`;
  }

  get acceptedPunches(): ReceivedPunch[] {
    return this.accepted.flatMap((request) => request.punches);
  }

  async stop(): Promise<void> {
    this.server.closeAllConnections();
    this.server.close();
    await once(this.server, "close");
  }

  private async handle(req: IncomingMessage, res: ServerResponse) {
    const body = await requestBodyOf(req);

    if (req.headers["x-fingerprint-sync-secret"] !== FUNCTION_SECRET) {
      res.writeHead(401).end();

      return;
    }

    if (this.accepted.length >= this.requestsToAcceptBeforeFailing) {
      res.writeHead(503).end();

      return;
    }

    if (this.respondWithStatus === 204) {
      this.accepted.push(JSON.parse(body));
    }

    res.writeHead(this.respondWithStatus).end();
  }
}
