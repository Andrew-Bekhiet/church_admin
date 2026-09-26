#!/usr/bin/env node
// usage: node graphql_schema.cjs <write|check> <schema.graphql>
// Reads HASURA_GRAPHQL_ENDPOINT (server base URL) and HASURA_GRAPHQL_ADMIN_SECRET.
const fs = require("node:fs");
const os = require("node:os");
const path = require("node:path");
const {
  buildClientSchema,
  buildSchema,
  getIntrospectionQuery,
  lexicographicSortSchema,
  printSchema,
} = require("graphql");

const [mode, schemaPath] = process.argv.slice(2);
const {
  HASURA_GRAPHQL_ENDPOINT: endpoint,
  HASURA_GRAPHQL_ADMIN_SECRET: adminSecret,
} = process.env;

const canonical = (schema) => printSchema(lexicographicSortSchema(schema));

(async () => {
  if (!endpoint || !adminSecret) {
    throw new Error(
      "Set HASURA_GRAPHQL_ENDPOINT and HASURA_GRAPHQL_ADMIN_SECRET.",
    );
  }

  const response = await fetch(
    new URL("v1/graphql", endpoint.endsWith("/") ? endpoint : `${endpoint}/`),
    {
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": adminSecret,
        "x-hasura-role": "user",
      },
      body: JSON.stringify({
        query: getIntrospectionQuery({ descriptions: false }),
      }),
    },
  );
  const { data, errors } = await response.json();
  if (errors) throw new Error(JSON.stringify(errors));

  const served = buildClientSchema(data);

  if (mode === "write") {
    fs.writeFileSync(schemaPath, `${printSchema(served)}\n`);
    return;
  }

  const committed = buildSchema(fs.readFileSync(schemaPath, "utf8"));
  if (canonical(committed) === canonical(served)) return;

  const tmp = path.join(os.tmpdir(), "schema.graphql.served");
  fs.writeFileSync(tmp, `${canonical(served)}\n`);
  console.error(
    `${schemaPath} is out of date with ${endpoint}. Served schema written to ${tmp}.`,
  );
  process.exit(1);
})().catch((error) => {
  console.error(error.message ?? error);
  process.exit(2);
});
