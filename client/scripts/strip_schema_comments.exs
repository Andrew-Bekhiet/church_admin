IO.puts("Getting GQL schema from the server...")

System.shell(
  "graphql-inspector introspect http://localhost:8088/v1/graphql -w ./lib/src/core/graphql/schema.graphql get-schema -h \"Authorization: Bearer $TOKEN\""
)

IO.puts("Stripping comments from the schema...")

schema_file = "./lib/src/core/graphql/schema.graphql"

schema_without_comments =
  schema_file
  |> File.read!()
  |> String.replace(~r/^\s+""".+"""\n/m, "")
  |> String.replace(~r/^""".+"""\n/m, "")
  |> String.replace(~r/^"""\n.+\n"""\n/m, "")
  |> String.replace(~r/^\s+"""\s+.+\s+"""\n/m, "")

File.write!(schema_file, schema_without_comments)

IO.puts("Done!")
