defmodule ChurchAdmin.Exports.RtlAndAutofilterPatch do
  @moduledoc """
  Adds what Elixlsx 0.6 cannot write to a workbook it produced: the
  right-to-left sheet view (`rightToLeft="1"` on every `sheetView`) and an
  autofilter per sheet (`<autoFilter ref=…/>` right after `sheetData`, where
  the schema puts it when a sheet has no protection).

  Elixlsx names its parts `xl/worksheets/sheetN.xml` in workbook order, so the
  N-th range belongs to the N-th sheet.
  """

  @sheet_part ~r{\Axl/worksheets/sheet(\d+)\.xml\z}

  @spec patch(binary(), [String.t() | nil]) :: binary()
  def patch(xlsx, autofilter_ranges) do
    {:ok, parts} = :zip.unzip(xlsx, [:memory])

    patched = Enum.map(parts, &patch_part(&1, autofilter_ranges))

    {:ok, {_name, patched_xlsx}} = :zip.create(~c"export.xlsx", patched, [:memory])
    patched_xlsx
  end

  defp patch_part({name, xml}, autofilter_ranges) do
    case Regex.run(@sheet_part, to_string(name)) do
      [_, number] ->
        range = Enum.at(autofilter_ranges, String.to_integer(number) - 1)
        {name, xml |> right_to_left() |> autofilter(range)}

      nil ->
        {name, xml}
    end
  end

  defp right_to_left(xml),
    do: String.replace(xml, "<sheetView ", ~s(<sheetView rightToLeft="1" ), global: false)

  defp autofilter(xml, nil), do: xml

  defp autofilter(xml, range),
    do:
      String.replace(xml, "</sheetData>", ~s(</sheetData><autoFilter ref="#{range}"/>),
        global: false
      )
end
