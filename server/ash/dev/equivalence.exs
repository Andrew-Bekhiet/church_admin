# Compares, per user and root, the primary keys (and edit flags) master's
# Hasura returns with role `user` against what Ash reads with that user's
# actor, on the same database. Run through dev/equivalence.sh, which builds
# that database and Hasura; directly:
#
#   mix run --no-start dev/equivalence.exs --hasura-url URL --admin-secret S \
#     --out mismatches.csv [uid ...]
#
# Without uids it checks every auth.users_data uid plus an anonymous request.
# Writes one CSV row per mismatch and exits 1 when there is any. A unit that
# adds read policies for a resource adds its root to dev/equivalence_roots.exs.

Code.require_file("equivalence_roots.exs", __DIR__)

defmodule ChurchAdmin.Equivalence do
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Equivalence.Roots

  def run(argv) do
    {opts, uids} =
      OptionParser.parse!(argv,
        strict: [hasura_url: :string, admin_secret: :string, out: :string]
      )

    hasura = %{
      url: Keyword.fetch!(opts, :hasura_url),
      secret: Keyword.fetch!(opts, :admin_secret)
    }

    uids = if uids == [], do: [nil | all_uids()], else: uids

    roots = Roots.roots()
    results = for uid <- uids, root <- roots, do: compare(hasura, uid, root)
    mismatches = Enum.flat_map(results, &elem(&1, 1))
    compared = results |> Enum.map(&elem(&1, 0)) |> Enum.sum()

    write_csv(Keyword.fetch!(opts, :out), mismatches)

    IO.puts(
      "#{length(uids)} users x #{length(roots)} roots, #{compared} rows visible through Hasura: " <>
        "#{length(mismatches)} mismatches"
    )

    if mismatches != [], do: System.halt(1)
  end

  defp compare(hasura, uid, root) do
    {hasura_rows, entity_ids} = hasura_rows(hasura, uid, root)
    ash_rows = ash_rows(uid, root, entity_ids)
    user = uid || "anonymous"

    missing =
      for key <- Map.keys(hasura_rows) -- Map.keys(ash_rows),
          do: [user, root.name, "missing_in_ash", key, ""]

    extra =
      for key <- Map.keys(ash_rows) -- Map.keys(hasura_rows),
          do: [user, root.name, "extra_in_ash", key, ""]

    flags =
      for {key, hasura_flag} <- hasura_rows,
          Map.has_key?(ash_rows, key),
          ash_rows[key] != hasura_flag,
          do: [user, root.name, "flag_differs", key, "hasura=#{hasura_flag} ash=#{ash_rows[key]}"]

    {map_size(hasura_rows), missing ++ extra ++ flags}
  end

  defp hasura_rows(_hasura, nil, _root), do: {%{}, MapSet.new()}

  defp hasura_rows(hasura, uid, %{via: via} = root) do
    page = Map.get(root, :page, 100_000)
    nested = Enum.map_join(root.key, " ", &elem(&1, 0))

    Stream.iterate(0, &(&1 + page))
    |> Enum.reduce_while({%{}, MapSet.new()}, fn offset, {rows, ids} ->
      document =
        "{ rows: #{root.hasura}(limit: #{page}, offset: #{offset}, orderBy: [{id: ASC}]) " <>
          "{ id #{via.path} { #{nested} } } }"

      page_rows = hasura_query!(hasura, uid, document)
      ids = Enum.into(page_rows, ids, & &1["id"])

      rows =
        for entity <- page_rows, nested_row = entity[via.path], into: rows do
          {hasura_key(nested_row, root), false}
        end

      if length(page_rows) < page, do: {:halt, {rows, ids}}, else: {:cont, {rows, ids}}
    end)
  end

  defp hasura_rows(hasura, uid, root) do
    page = Map.get(root, :page, 100_000)
    fields = Enum.map(root.key, &elem(&1, 0)) ++ List.wrap(flag_field(root))
    {root_field, selection, order} = hasura_selection(root, fields)

    rows =
      Stream.iterate(0, &(&1 + page))
      |> Enum.reduce_while(%{}, fn offset, acc ->
        document =
          "{ rows: #{root_field}(limit: #{page}, offset: #{offset}, orderBy: [#{order}]) { #{selection} } }"

        page_rows = hasura_query!(hasura, uid, document)
        rows = unwrap_through(page_rows, root)
        acc = Enum.into(rows, acc, &{hasura_key(&1, root), &1[flag_field(root)] == true})
        if length(page_rows) < page, do: {:halt, acc}, else: {:cont, acc}
      end)

    {rows, nil}
  end

  defp hasura_selection(%{through: {parent, relationship}}, fields),
    do: {parent, "#{relationship} { #{Enum.join(fields, " ")} }", "{id: ASC}"}

  defp hasura_selection(root, fields) do
    order = Enum.map_join(root.key, ", ", fn {field, _} -> "{#{field}: ASC}" end)
    {root.hasura, Enum.join(fields, " "), order}
  end

  defp unwrap_through(rows, %{through: {_parent, relationship}}),
    do: rows |> Enum.map(& &1[relationship]) |> Enum.reject(&is_nil/1)

  defp unwrap_through(rows, _root), do: rows

  defp hasura_query!(hasura, uid, document) do
    response =
      Req.post!(hasura.url,
        json: %{query: document},
        headers: [
          {"x-hasura-admin-secret", hasura.secret},
          {"x-hasura-role", "user"},
          {"x-hasura-user-id", uid}
        ]
      )

    case response.body do
      %{"data" => %{"rows" => rows}} -> rows
      body -> raise "Hasura failed for #{uid}: #{inspect(body)}"
    end
  end

  defp ash_rows(uid, root, entity_ids) do
    actor = if uid, do: ActorLoader.load(uid)
    attributes = Enum.map(root.key, &elem(&1, 1))

    root.resource
    |> Ash.Query.load(List.wrap(flag_attribute(root)))
    |> Ash.read!(actor: actor, page: false)
    |> Enum.filter(&of_entity_hasura_showed?(&1, root, entity_ids))
    |> Map.new(fn row ->
      {Enum.map_join(attributes, "|", &key_part(Map.fetch!(row, &1))), ash_flag(row, root)}
    end)
  end

  defp of_entity_hasura_showed?(_row, %{via: _via}, nil), do: false

  defp of_entity_hasura_showed?(row, %{via: via}, entity_ids) do
    (is_nil(via.table) or row.table == via.table) and
      to_string(Map.fetch!(row, via.id_attribute)) in entity_ids
  end

  defp of_entity_hasura_showed?(_row, _root, _entity_ids), do: true

  defp ash_flag(row, %{flag: {_, attribute}}), do: Map.fetch!(row, attribute) == true
  defp ash_flag(_row, _root), do: false

  defp hasura_key(row, root),
    do: Enum.map_join(root.key, "|", fn {field, _} -> key_part(row[field]) end)

  # Hasura prints timestamps as "2026-03-01T09:00:00.1+00:00", Ash as DateTime.
  defp key_part(%DateTime{} = value), do: value |> DateTime.to_unix(:microsecond) |> to_string()

  defp key_part(value) when is_binary(value) do
    case DateTime.from_iso8601(value) do
      {:ok, datetime, _offset} -> key_part(datetime)
      {:error, _reason} -> value
    end
  end

  defp key_part(value), do: to_string(value)

  defp flag_field(%{flag: {field, _}}), do: field
  defp flag_field(_root), do: nil

  defp flag_attribute(%{flag: {_, attribute}}), do: attribute
  defp flag_attribute(_root), do: nil

  defp all_uids do
    %{rows: rows} = ChurchAdmin.Repo.query!("select uid::text from auth.users_data order by uid")
    List.flatten(rows)
  end

  defp write_csv(path, mismatches) do
    lines =
      for row <- [["user", "root", "kind", "key", "detail"] | mismatches] do
        Enum.map_join(row, ",", &csv_field/1)
      end

    File.write!(path, Enum.join(lines, "\n") <> "\n")
  end

  defp csv_field(value) do
    value = to_string(value)

    if String.contains?(value, [",", "\"", "\n"]),
      do: ~s("#{String.replace(value, "\"", "\"\"")}"),
      else: value
  end
end

Logger.configure(level: :warning)
{:ok, _apps} = Application.ensure_all_started([:postgrex, :ecto_sql, :req])
{:ok, _repo} = ChurchAdmin.Repo.start_link()
ChurchAdmin.Equivalence.run(System.argv())
