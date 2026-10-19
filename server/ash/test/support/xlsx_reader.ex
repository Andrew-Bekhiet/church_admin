defmodule ChurchAdmin.XlsxReader do
  @moduledoc """
  Reads a produced xlsx back through its XML, so tests assert on what Excel
  would open: sheet names in workbook order, the right-to-left flag, the
  autofilter range and the cell values per row (`nil` for an empty cell).
  """

  @type sheet :: %{
          name: String.t(),
          right_to_left?: boolean(),
          autofilter: String.t() | nil,
          rows: [[String.t() | number() | boolean() | nil]]
        }

  @spec read(binary()) :: [sheet()]
  def read(xlsx) do
    {:ok, files} = :zip.unzip(xlsx, [:memory])
    files = Map.new(files, fn {name, content} -> {to_string(name), content} end)
    strings = shared_strings(Map.get(files, "xl/sharedStrings.xml", ""))

    files
    |> Map.fetch!("xl/workbook.xml")
    |> then(&Regex.scan(~r/<sheet name="([^"]*)"/, &1))
    |> Enum.with_index(1)
    |> Enum.map(fn {[_, name], index} ->
      sheet_xml = Map.fetch!(files, "xl/worksheets/sheet#{index}.xml")

      %{
        name: unescape(name),
        right_to_left?: right_to_left?(sheet_xml),
        autofilter: autofilter(sheet_xml),
        rows: rows(sheet_xml, strings)
      }
    end)
  end

  @spec sheet(binary(), String.t()) :: sheet()
  def sheet(xlsx, name), do: xlsx |> read() |> Enum.find(&(&1.name == name))

  @doc "The sheet's data rows as maps from header to value, empty cells omitted."
  @spec records(sheet()) :: [%{String.t() => term()}]
  def records(%{rows: [header | rows]}) do
    for row <- rows do
      header
      |> Enum.zip(row)
      |> Enum.reject(fn {_header, value} -> is_nil(value) end)
      |> Map.new()
    end
  end

  defp right_to_left?(sheet_xml), do: sheet_xml =~ ~r/<sheetView[^>]*rightToLeft="1"/

  defp autofilter(sheet_xml) do
    case Regex.run(~r/<autoFilter ref="([^"]*)"/, sheet_xml) do
      [_, range] -> range
      nil -> nil
    end
  end

  defp shared_strings(xml) do
    ~r/<si>(.*?)<\/si>/s
    |> Regex.scan(xml)
    |> Enum.map(fn [_, item] ->
      ~r/<t[^>]*>(.*?)<\/t>/s
      |> Regex.scan(item)
      |> Enum.map_join(fn [_, text] -> unescape(text) end)
    end)
  end

  defp rows(sheet_xml, strings) do
    ~r/<row r="(\d+)"[^>]*>(.*?)<\/row>/s
    |> Regex.scan(sheet_xml)
    |> Enum.map(fn [_, _number, row_xml] -> cells(row_xml, strings) end)
  end

  defp cells(row_xml, strings) do
    by_column =
      ~r/<c r="([A-Z]+)\d+"[^>]*?t="(\w)"[^>]*>\s*<v>(.*?)<\/v>/s
      |> Regex.scan(row_xml)
      |> Map.new(fn [_, column, type, value] ->
        {column_index(column), value(type, value, strings)}
      end)

    case Map.keys(by_column) do
      [] -> []
      columns -> for index <- 1..Enum.max(columns), do: Map.get(by_column, index)
    end
  end

  defp value("s", index, strings), do: Enum.at(strings, String.to_integer(index))
  defp value("b", flag, _strings), do: flag == "1"

  defp value("n", number, _strings) do
    case Integer.parse(number) do
      {integer, ""} -> integer
      _decimal -> String.to_float(number)
    end
  end

  defp column_index(letters) do
    letters
    |> String.to_charlist()
    |> Enum.reduce(0, fn letter, index -> index * 26 + letter - ?A + 1 end)
  end

  defp unescape(text) do
    text
    |> String.replace("&lt;", "<")
    |> String.replace("&gt;", ">")
    |> String.replace("&quot;", "\"")
    |> String.replace("&amp;", "&")
  end
end
