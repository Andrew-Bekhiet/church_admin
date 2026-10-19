defmodule ChurchAdmin.Exports.Sheet do
  @moduledoc """
  One worksheet from mapped rows (`[{header, value}]` lists, see
  `ChurchAdmin.Exports.RowMappers`): id columns move to the end, the header is
  the merge of every row's keys, column widths follow the longest cell, and
  the autofilter covers the header and all rows.
  """

  @id_column ~r/(^|\.)u?id$/
  @forbidden_in_name ~r/[:\\\/?*\[\]]/
  @invalid_in_xml ~r/[\x00-\x08\x0B\x0C\x0E-\x1F]/u
  @max_name_length 31

  @type row :: [{String.t(), term()}]

  @spec build(String.t(), [row()]) :: {Elixlsx.Sheet.t(), String.t()}
  def build(table, mapped_rows) do
    rows = Enum.map(mapped_rows, &move_ids_to_end/1)
    header = merge_header(rows)
    by_header = Enum.map(rows, &Map.new/1)

    cells =
      for row <- by_header, do: Enum.map(header, &cell(Map.get(row, &1)))

    sheet = %Elixlsx.Sheet{
      name: sanitize_name(table),
      rows: [header | cells],
      col_widths: header |> column_widths(rows) |> Enum.with_index(1) |> Map.new(&swap/1)
    }

    {sheet, autofilter_range(header, length(rows))}
  end

  @spec move_ids_to_end(row()) :: row()
  def move_ids_to_end(row) do
    {ids, fields} = Enum.split_with(row, fn {key, _value} -> Regex.match?(@id_column, key) end)
    fields ++ ids
  end

  @doc """
  The union of the rows' keys. A key unseen so far goes right after the last
  key it shares with its row, so columns that only some rows have sit beside
  their neighbours.
  """
  @spec merge_header([row()]) :: [String.t()]
  def merge_header(rows) do
    rows
    |> Enum.map(fn row -> Enum.map(row, &elem(&1, 0)) end)
    |> Enum.uniq()
    |> Enum.reduce([], &merge_keys/2)
  end

  @spec column_widths([String.t()], [row()]) :: [non_neg_integer()]
  def column_widths(header, rows) do
    by_header = Enum.map(rows, &Map.new/1)

    for key <- header do
      by_header
      |> Enum.map(&display_length(Map.get(&1, key)))
      |> Enum.max(fn -> 0 end)
      |> max(String.length(key))
    end
  end

  @spec autofilter_range([String.t()], non_neg_integer()) :: String.t()
  def autofilter_range(header, row_count),
    do: "A1:#{Elixlsx.Util.encode_col(length(header))}#{row_count + 1}"

  @spec sanitize_name(String.t()) :: String.t()
  def sanitize_name(name) do
    @forbidden_in_name |> Regex.replace(name, "_") |> String.slice(0, @max_name_length)
  end

  defp merge_keys(keys, merged) do
    {merged, _insertion_index} = Enum.reduce(keys, {merged, 0}, &place_key/2)
    merged
  end

  defp place_key(key, {merged, insertion_index}) do
    case Enum.find_index(merged, &(&1 == key)) do
      nil -> {List.insert_at(merged, insertion_index, key), insertion_index + 1}
      existing -> {merged, max(insertion_index, existing + 1)}
    end
  end

  defp cell(value) when is_binary(value), do: Regex.replace(@invalid_in_xml, value, "")
  defp cell(value), do: value

  defp display_length(nil), do: 0
  defp display_length(value) when is_binary(value), do: String.length(value)
  defp display_length(value), do: value |> to_string() |> String.length()

  defp swap({width, index}), do: {index, width}
end
