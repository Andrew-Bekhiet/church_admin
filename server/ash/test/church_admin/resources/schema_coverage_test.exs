defmodule ChurchAdmin.Resources.SchemaCoverageTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.ResourceCatalog

  @columns_without_attribute %{}

  @application_schemas ["public", "auth", "history", "operations"]

  @deliberately_unmapped %{
    {"public", "schema_migrations"} =>
      "Hasura-era migration bookkeeping, frozen with the baseline",
    {"public", "ash_schema_migrations"} =>
      "Ecto's migration bookkeeping table (migration_source)",
    {"public", "oban_jobs"} => "owned by Oban",
    {"public", "oban_peers"} => "owned by Oban"
  }

  test "every column of a mapped relation is an attribute" do
    for resource <- ResourceCatalog.resources() do
      {schema, table} = ResourceCatalog.relation(resource)
      attribute_columns = resource |> Ash.Resource.Info.attributes() |> MapSet.new(& &1.source)
      ignored = Map.get(@columns_without_attribute, {schema, table}, [])

      uncovered =
        for column <- columns_of(schema, table),
            column not in ignored,
            not MapSet.member?(attribute_columns, String.to_atom(column)),
            do: column

      assert uncovered == [], "#{inspect(resource)} has no attribute for #{inspect(uncovered)}"
    end
  end

  test "every attribute maps to a column of the relation" do
    for resource <- ResourceCatalog.resources() do
      {schema, table} = ResourceCatalog.relation(resource)
      columns = schema |> columns_of(table) |> MapSet.new()

      phantom =
        resource
        |> Ash.Resource.Info.attributes()
        |> Enum.reject(&MapSet.member?(columns, to_string(&1.source)))
        |> Enum.map(& &1.name)

      assert phantom == [], "#{inspect(resource)} maps #{inspect(phantom)} to no column"
    end
  end

  test "every table and view of the application schemas has a resource or is deliberately unmapped" do
    mapped = MapSet.new(ResourceCatalog.resources(), &ResourceCatalog.relation/1)

    unmapped =
      for relation <- application_relations(),
          not MapSet.member?(mapped, relation),
          not Map.has_key?(@deliberately_unmapped, relation),
          do: relation

    assert unmapped == []
  end

  test "every deliberately unmapped relation still exists" do
    existing = MapSet.new(application_relations())

    stale =
      for {relation, _} <- @deliberately_unmapped,
          not MapSet.member?(existing, relation),
          do: relation

    assert stale == []
  end

  defp columns_of(schema, table) do
    %{rows: rows} =
      Ecto.Adapters.SQL.query!(
        Repo,
        "select column_name from information_schema.columns where table_schema = $1 and table_name = $2",
        [schema, table]
      )

    List.flatten(rows)
  end

  defp application_relations do
    %{rows: rows} =
      Ecto.Adapters.SQL.query!(
        Repo,
        """
        select n.nspname, c.relname
        from pg_class c
        join pg_namespace n on n.oid = c.relnamespace
        where c.relkind in ('r', 'v', 'm', 'p', 'f')
          and n.nspname = any($1)
          and not exists (select 1 from pg_depend d where d.objid = c.oid and d.deptype = 'e')
        """,
        [@application_schemas]
      )

    Enum.map(rows, &List.to_tuple/1)
  end
end
