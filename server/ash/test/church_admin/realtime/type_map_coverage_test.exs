defmodule ChurchAdmin.Realtime.TypeMapCoverageTest do
  use ChurchAdmin.DataCase, async: true

  alias ChurchAdmin.Realtime.Dependencies
  alias ChurchAdmin.Realtime.RowChange
  alias ChurchAdmin.Realtime.TypeMap
  alias ChurchAdmin.ResourceCatalog

  @publication "church_admin_changes"

  setup_all do
    {:ok, type_map: TypeMap.build()}
  end

  defp graphql_resources do
    Enum.filter(ResourceCatalog.resources(), &AshGraphql.Resource.Info.type/1)
  end

  defp relkind({schema, table}) do
    %{rows: [[kind]]} =
      Repo.query!(
        "select c.relkind::text from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = $1 and c.relname = $2",
        [schema, table]
      )

    kind
  end

  defp type_name(resource),
    do:
      resource |> AshGraphql.Resource.Info.type() |> Atom.to_string() |> Absinthe.Utils.camelize()

  defp emitted_types(type_map, relation) do
    type_map
    |> TypeMap.changes_for(%RowChange{relation: relation, op: :truncate})
    |> MapSet.new(& &1.type)
  end

  defp tables_read_by_view({schema, view}) do
    %{rows: rows} =
      Repo.query!(
        """
        with recursive reads(view_oid, source_oid) as (
          select distinct r.ev_class, d.refobjid
          from pg_rewrite r
          join pg_depend d on d.objid = r.oid
            and d.classid = 'pg_rewrite'::regclass
            and d.refclassid = 'pg_class'::regclass
          where d.refobjid <> r.ev_class
        ),
        closure(view_oid, source_oid) as (
          select * from reads
          union
          select c.view_oid, r.source_oid from closure c join reads r on r.view_oid = c.source_oid
        )
        select s.relnamespace::regnamespace::text, s.relname::text
        from closure c
        join pg_class s on s.oid = c.source_oid and s.relkind in ('r', 'p')
        where c.view_oid = format('%I.%I', $1::text, $2::text)::regclass
        """,
        [schema, view]
      )

    MapSet.new(rows, &List.to_tuple/1)
  end

  defp published_tables do
    %{rows: rows} =
      Repo.query!(
        """
        select p.schemaname::text, p.tablename::text, c.relreplident::text
        from pg_publication_tables p
        join pg_namespace n on n.nspname = p.schemaname
        join pg_class c on c.relnamespace = n.oid and c.relname = p.tablename
        where p.pubname = $1
        """,
        [@publication]
      )

    Map.new(rows, fn [schema, table, identity] -> {{schema, table}, identity} end)
  end

  defp key_columns({schema, table}) do
    %{rows: rows} =
      Repo.query!(
        """
        select a.attname::text
        from pg_index i
        join pg_attribute a on a.attrelid = i.indrelid and a.attnum = any(i.indkey)
        where i.indisprimary and i.indrelid = format('%I.%I', $1::text, $2::text)::regclass
        """,
        [schema, table]
      )

    List.flatten(rows)
  end

  test "every resource with a GraphQL type is mapped or explicitly excluded", %{
    type_map: type_map
  } do
    uncovered =
      for resource <- graphql_resources(),
          not Map.has_key?(Dependencies.excluded(), resource),
          relation = ResourceCatalog.relation(resource),
          not covered?(type_map, resource, relation),
          do: resource

    assert uncovered == [],
           "add these to the view sources or the exclusions in ChurchAdmin.Realtime.Dependencies: #{inspect(uncovered)}"
  end

  defp covered?(type_map, resource, relation) do
    case relkind(relation) do
      "v" -> Map.has_key?(Dependencies.view_sources(), resource)
      _table -> type_name(resource) in emitted_types(type_map, relation)
    end
  end

  test "each view declares exactly the tables it reads" do
    for {view, sources} <- Dependencies.view_sources() do
      declared = MapSet.new(sources, &ResourceCatalog.relation/1)
      actual = tables_read_by_view(ResourceCatalog.relation(view))

      assert declared == actual,
             "#{inspect(view)} reads #{inspect(MapSet.to_list(actual))}, declared #{inspect(MapSet.to_list(declared))}"
    end
  end

  test "every table the type map maps is published", %{type_map: type_map} do
    published = published_tables()

    unpublished =
      for relation <- TypeMap.relations(type_map),
          relkind(relation) == "r",
          not Map.has_key?(published, relation),
          do: relation

    assert unpublished == []
  end

  test "a table whose old rows the type map reads beyond the key replicates full rows",
       %{type_map: type_map} do
    published = published_tables()

    missing_full_identity =
      for relation <- TypeMap.relations(type_map),
          Map.has_key?(published, relation),
          extra = TypeMap.columns_read(type_map, relation) -- key_columns(relation),
          extra != [],
          published[relation] != "f",
          do: {relation, extra}

    assert missing_full_identity == []
  end

  test "every published table can replicate its updates and deletes" do
    without_identity =
      for {relation, identity} <- published_tables(),
          identity != "f",
          key_columns(relation) == [],
          do: relation

    assert without_identity == []
  end
end
