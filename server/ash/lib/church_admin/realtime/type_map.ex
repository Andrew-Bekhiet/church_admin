defmodule ChurchAdmin.Realtime.TypeMap do
  @moduledoc """
  Maps a replicated row change to the GraphQL invalidations it causes:
  `%{type, id, op}`, where a nil id invalidates every list of the type.

  Built from the Ash domains: each table resource with a GraphQL type emits
  that type with the row's id (encoded as AshGraphql encodes it), and the
  declarations in `ChurchAdmin.Realtime.Dependencies` add parents, visited
  records, `ViewerScope` for permission tables, and list invalidations of the
  views that read the table. Tables without a GraphQL type emit nothing.
  """

  alias ChurchAdmin.Realtime.Dependencies
  alias ChurchAdmin.Realtime.RowChange

  defstruct emitters: %{}

  @type relation :: {schema :: String.t(), table :: String.t()}
  @type change :: %{type: String.t(), id: String.t() | nil, op: String.t()}
  @type t :: %__MODULE__{emitters: %{relation() => [tuple()]}}

  @viewer_scope "ViewerScope"

  @spec build([module()]) :: t()
  def build(domains \\ Application.fetch_env!(:church_admin, :ash_domains)) do
    resources =
      domains
      |> Enum.flat_map(&Ash.Domain.Info.resources/1)
      |> Enum.filter(&(Ash.DataLayer.data_layer(&1) == AshPostgres.DataLayer))

    emitters =
      Enum.concat([
        own_types(resources),
        parents(),
        record_references(resources),
        viewer_scopes(),
        views()
      ])

    %__MODULE__{
      emitters: Enum.group_by(emitters, &elem(&1, 0), &elem(&1, 1))
    }
  end

  @spec relations(t()) :: [relation()]
  def relations(%__MODULE__{emitters: emitters}), do: Map.keys(emitters)

  @doc "The columns beyond the own key that the emitters of `relation` read from a row."
  @spec columns_read(t(), relation()) :: [String.t()]
  def columns_read(%__MODULE__{emitters: emitters}, relation) do
    emitters
    |> Map.get(relation, [])
    |> Enum.flat_map(fn
      {:parent, _type, column} -> [column]
      {:record, _types_by_table, table_column, id_column} -> [table_column, id_column]
      {:viewer_scope, column} -> [column]
      _own_or_view -> []
    end)
    |> Enum.uniq()
  end

  @spec changes_for(t(), RowChange.t()) :: [change()]
  def changes_for(%__MODULE__{emitters: emitters}, %RowChange{relation: relation} = change) do
    emitters
    |> Map.get(relation, [])
    |> Enum.flat_map(&emit(&1, change))
    |> Enum.uniq()
  end

  defp emit(emitter, %RowChange{op: :truncate}), do: truncated(emitter)

  defp emit(emitter, %RowChange{op: op, old: old, new: new}) do
    rows = Enum.reject([new, old], &is_nil/1)
    Enum.flat_map(rows, &emit_for_row(emitter, Atom.to_string(op), &1))
  end

  defp emit_for_row({:own, type, resource, key}, op, row),
    do: [%{type: type, id: encode_id(resource, key, row), op: op}]

  defp emit_for_row({:parent, type, column}, _op, row),
    do: updated(type, row[column])

  defp emit_for_row({:record, types_by_table, table_column, id_column}, _op, row),
    do: updated(types_by_table[row[table_column]], row[id_column])

  defp emit_for_row({:viewer_scope, column}, _op, row), do: updated(@viewer_scope, row[column])

  defp emit_for_row({:view, type}, op, _row), do: [%{type: type, id: nil, op: op}]

  defp updated(type, id) when is_binary(type) and is_binary(id),
    do: [%{type: type, id: id, op: "update"}]

  defp updated(_type, _id), do: []

  defp truncated({:own, type, _resource, _key}), do: [%{type: type, id: nil, op: "delete"}]
  defp truncated({:parent, type, _column}), do: [%{type: type, id: nil, op: "update"}]
  defp truncated({:viewer_scope, _column}), do: [%{type: @viewer_scope, id: nil, op: "update"}]
  defp truncated({:view, type}), do: [%{type: type, id: nil, op: "delete"}]

  defp truncated({:record, types_by_table, _table_column, _id_column}) do
    types_by_table |> Map.values() |> Enum.uniq() |> Enum.map(&%{type: &1, id: nil, op: "update"})
  end

  defp encode_id(resource, key, row) do
    values = for {name, column, attribute} <- key, do: {name, cast(attribute, row[column])}

    if Enum.all?(values, fn {_name, value} -> value != nil end) do
      resource |> struct(values) |> AshGraphql.Resource.encode_primary_key() |> to_string()
    end
  end

  defp cast(attribute, text) when is_binary(text) do
    case Ash.Type.cast_input(attribute.type, text, attribute.constraints) do
      {:ok, value} when value != nil -> value
      _uncastable -> text
    end
  end

  defp cast(_attribute, _null_or_toast), do: nil

  defp own_types(resources) do
    for resource <- resources, type = type_name(resource), type != nil do
      key =
        for name <- Ash.Resource.Info.primary_key(resource) do
          attribute = Ash.Resource.Info.attribute(resource, name)
          {name, to_string(attribute.source), attribute}
        end

      {relation(resource), {:own, type, resource, key}}
    end
  end

  defp parents do
    for {resource, names} <- Dependencies.parents(), name <- names do
      relationship = belongs_to!(resource, name)

      {relation(resource),
       {:parent, type_name!(relationship.destination),
        column!(resource, relationship.source_attribute)}}
    end
  end

  defp record_references(resources) do
    types_by_table =
      for resource <- resources,
          {"public", table} <- [relation(resource)],
          type = type_name(resource),
          type != nil,
          into: %{},
          do: {table, type}

    for {resource, {table_attribute, id_attribute}} <- Dependencies.record_references() do
      {relation(resource),
       {:record, types_by_table, column!(resource, table_attribute),
        column!(resource, id_attribute)}}
    end
  end

  defp viewer_scopes do
    for {resource, uid_attribute} <- Dependencies.viewer_scope_uids() do
      {relation(resource), {:viewer_scope, column!(resource, uid_attribute)}}
    end
  end

  defp views do
    for {view, sources} <- Dependencies.view_sources(), source <- sources do
      {relation(source), {:view, type_name!(view)}}
    end
  end

  defp relation(resource) do
    {AshPostgres.DataLayer.Info.schema(resource) || "public",
     AshPostgres.DataLayer.Info.table(resource)}
  end

  defp type_name(resource) do
    case AshGraphql.Resource.Info.type(resource) do
      nil -> nil
      type -> type |> Atom.to_string() |> Absinthe.Utils.camelize()
    end
  end

  defp type_name!(resource) do
    type_name(resource) ||
      raise ArgumentError, "realtime dependency #{inspect(resource)} has no GraphQL type"
  end

  defp column!(resource, attribute_name) do
    case Ash.Resource.Info.attribute(resource, attribute_name) do
      nil ->
        raise ArgumentError, "#{inspect(resource)} has no attribute #{inspect(attribute_name)}"

      attribute ->
        to_string(attribute.source)
    end
  end

  defp belongs_to!(resource, name) do
    relationship = Ash.Resource.Info.relationship(resource, name)

    case relationship do
      %Ash.Resource.Relationships.BelongsTo{destination_attribute: destination_attribute} ->
        if Ash.Resource.Info.primary_key(relationship.destination) != [destination_attribute] do
          raise ArgumentError,
                "realtime parent #{inspect(resource)}.#{name} does not point at the primary key of #{inspect(relationship.destination)}"
        end

        relationship

      _missing_or_not_belongs_to ->
        raise ArgumentError, "#{inspect(resource)} has no belongs_to #{inspect(name)}"
    end
  end
end
