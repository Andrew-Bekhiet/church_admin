// usage: node graphql_schema.cjs <graphql-endpoint> <admin-secret> <schema.graphql> [--write]
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const {
  buildClientSchema,
  buildSchema,
  getIntrospectionQuery,
  lexicographicSortSchema,
  printSchema,
} = require('graphql');

const [endpoint, adminSecret, schemaPath, mode] = process.argv.slice(2);

const canonical = (schema) => `${printSchema(lexicographicSortSchema(schema))}\n`;

(async () => {
  const response = await fetch(endpoint, {
    method: 'POST',
    headers: {
      'content-type': 'application/json',
      'x-hasura-admin-secret': adminSecret,
      'x-hasura-role': 'user',
    },
    body: JSON.stringify({ query: getIntrospectionQuery({ descriptions: false }) }),
  });
  const { data, errors } = await response.json();
  if (errors) throw new Error(JSON.stringify(errors));

  const served = canonical(buildClientSchema(data));

  if (mode === '--write') {
    fs.writeFileSync(schemaPath, served);
    return;
  }

  const committed = canonical(buildSchema(fs.readFileSync(schemaPath, 'utf8')));
  if (committed === served) return;

  const tmp = path.join(os.tmpdir(), 'schema.graphql.served');
  fs.writeFileSync(tmp, served);
  console.error(`${schemaPath} is out of date with Hasura. Served schema written to ${tmp}.`);
  console.error('Regenerate with: client/scripts/check_graphql_schema.sh --write');
  process.exit(1);
})().catch((error) => {
  console.error(error);
  process.exit(2);
});
