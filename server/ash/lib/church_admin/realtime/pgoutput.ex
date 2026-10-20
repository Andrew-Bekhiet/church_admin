defmodule ChurchAdmin.Realtime.Pgoutput do
  @moduledoc """
  Decodes the logical replication messages of the `pgoutput` plugin,
  protocol version 1 (https://www.postgresql.org/docs/current/protocol-logicalrep-message-formats.html).
  Column values stay in Postgres' text format.

  An old row is `{:key, values}` when only the replica identity key was
  replicated (non-key values are nil) and `{:full, values}` for tables with
  `REPLICA IDENTITY FULL`.
  """

  @type lsn :: non_neg_integer()
  @type value :: String.t() | nil | :unchanged_toast
  @type old_row :: {:key | :full, [value()]}
  @type relation :: %{
          id: non_neg_integer(),
          schema: String.t(),
          table: String.t(),
          columns: [%{name: String.t(), key?: boolean()}]
        }
  @type message ::
          {:begin, final_lsn :: lsn(), xid :: non_neg_integer()}
          | {:commit, commit_lsn :: lsn(), end_lsn :: lsn()}
          | {:relation, relation()}
          | {:insert, relation_id :: non_neg_integer(), [value()]}
          | {:update, relation_id :: non_neg_integer(), old_row() | nil, [value()]}
          | {:delete, relation_id :: non_neg_integer(), old_row()}
          | {:truncate, [relation_id :: non_neg_integer()]}
          | {:ignored, tag :: byte()}

  @spec decode(binary()) :: message()
  def decode(<<?B, final_lsn::64, _commit_time::64, xid::32>>), do: {:begin, final_lsn, xid}

  def decode(<<?C, _flags::8, commit_lsn::64, end_lsn::64, _commit_time::64>>),
    do: {:commit, commit_lsn, end_lsn}

  def decode(<<?R, id::32, rest::binary>>) do
    {schema, after_schema} = cstring(rest)

    {table, <<_replica_identity::8, column_count::16, after_table::binary>>} =
      cstring(after_schema)

    {:relation,
     %{id: id, schema: schema, table: table, columns: columns(after_table, column_count)}}
  end

  def decode(<<?I, relation_id::32, ?N, tuple::binary>>),
    do: {:insert, relation_id, tuple_values(tuple)}

  def decode(<<?U, relation_id::32, ?N, tuple::binary>>),
    do: {:update, relation_id, nil, tuple_values(tuple)}

  def decode(<<?U, relation_id::32, kind, tuple::binary>>) when kind in [?K, ?O] do
    {old, <<?N, new_tuple::binary>>} = take_tuple(tuple)
    {:update, relation_id, {old_kind(kind), old}, tuple_values(new_tuple)}
  end

  def decode(<<?D, relation_id::32, kind, tuple::binary>>) when kind in [?K, ?O],
    do: {:delete, relation_id, {old_kind(kind), tuple_values(tuple)}}

  def decode(<<?T, count::32, _options::8, ids::binary-size(count * 4)>>),
    do: {:truncate, for(<<id::32 <- ids>>, do: id)}

  def decode(<<tag, _rest::binary>>), do: {:ignored, tag}

  defp old_kind(?K), do: :key
  defp old_kind(?O), do: :full

  defp cstring(binary) do
    [string, rest] = :binary.split(binary, <<0>>)
    {string, rest}
  end

  defp columns(_rest, 0), do: []

  defp columns(<<flags::8, rest::binary>>, remaining) do
    {name, <<_type_oid::32, _type_modifier::32, rest::binary>>} = cstring(rest)
    [%{name: name, key?: flags == 1} | columns(rest, remaining - 1)]
  end

  defp tuple_values(tuple) do
    {values, <<>>} = take_tuple(tuple)
    values
  end

  defp take_tuple(<<count::16, rest::binary>>), do: take_values(rest, count, [])

  defp take_values(rest, 0, values), do: {Enum.reverse(values), rest}

  defp take_values(<<?n, rest::binary>>, remaining, values),
    do: take_values(rest, remaining - 1, [nil | values])

  defp take_values(<<?u, rest::binary>>, remaining, values),
    do: take_values(rest, remaining - 1, [:unchanged_toast | values])

  defp take_values(<<kind, size::32, value::binary-size(size), rest::binary>>, remaining, values)
       when kind in [?t, ?b],
       do: take_values(rest, remaining - 1, [value | values])
end
