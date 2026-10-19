defmodule ChurchAdmin.Dev.SeedGenerator.Sql do
  @moduledoc """
  Renders rows (maps keyed by column name) as multi-row `INSERT` statements.
  A column a row does not carry renders as `DEFAULT`.
  """

  @batch_size 400

  @type raw :: {:raw, String.t()}

  @spec raw(String.t()) :: raw()
  def raw(sql), do: {:raw, sql}

  @spec person_type(String.t()) :: raw()
  def person_type(name),
    do: raw("(SELECT id FROM public.person_types WHERE name = #{literal(name)})")

  @spec geography(String.t()) :: raw()
  def geography(wkt), do: raw("ST_GeogFromText('SRID=4326;#{wkt}')")

  @spec insert(String.t(), [atom()], [map()]) :: iodata()
  def insert(_table, _columns, []), do: []

  def insert(table, columns, rows) do
    column_list = Enum.map_join(columns, ", ", &~s("#{&1}"))

    rows
    |> Enum.chunk_every(@batch_size)
    |> Enum.map(fn batch ->
      values = Enum.map_join(batch, ",\n", &row(&1, columns))
      ["INSERT INTO ", table, " (", column_list, ") VALUES\n", values, ";\n"]
    end)
  end

  @spec literal(term()) :: String.t()
  def literal(nil), do: "NULL"
  def literal(true), do: "true"
  def literal(false), do: "false"
  def literal(number) when is_integer(number), do: Integer.to_string(number)
  def literal({:raw, sql}), do: sql
  def literal({:json, term}), do: literal(Jason.encode!(term)) <> "::jsonb"
  def literal(%Date{} = date), do: literal(Date.to_iso8601(date))
  def literal(%DateTime{} = datetime), do: literal(DateTime.to_iso8601(datetime))
  def literal(text) when is_binary(text), do: "'" <> String.replace(text, "'", "''") <> "'"

  defp row(row, columns) do
    values =
      Enum.map_join(columns, ", ", fn column ->
        case Map.fetch(row, column) do
          {:ok, value} -> literal(value)
          :error -> "DEFAULT"
        end
      end)

    "(" <> values <> ")"
  end
end
