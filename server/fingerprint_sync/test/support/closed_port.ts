import { once } from "node:events";
import { createServer } from "node:net";
import { AddressInfo } from "node:net";

export async function urlOfAPortNobodyListensOn(): Promise<string> {
  const server = createServer();
  server.listen(0, "127.0.0.1");
  await once(server, "listening");
  const { port } = server.address() as AddressInfo;
  server.close();
  await once(server, "close");

  return `http://127.0.0.1:${port}`;
}
