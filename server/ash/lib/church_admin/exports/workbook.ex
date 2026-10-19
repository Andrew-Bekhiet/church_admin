defmodule ChurchAdmin.Exports.Workbook do
  @moduledoc """
  The Excel export of a selection, as the requesting user. `build/2`
  authorizes the selection, reads the rows through Ash with the actor, maps
  them to Arabic-headed sheets and writes the xlsx. Tables without rows get
  no sheet; a workbook with no rows at all holds one empty `persons` sheet,
  because a workbook needs a sheet to open.
  """

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Exports.{Authorization, Data, RtlAndAutofilterPatch, Selection, Sheet}

  @spec build(ChurchAdmin.Authz.Actor.t() | nil, Selection.t()) ::
          {:ok, binary()} | {:error, DomainError.t() | Ash.Error.t()}
  def build(actor, %Selection{} = selection) do
    with :ok <- validate_selected(selection),
         :ok <- Authorization.authorize(actor, selection),
         {:ok, tables} <- Data.fetch(actor, selection) do
      {:ok, write(tables)}
    end
  end

  @spec file_name() :: String.t()
  def file_name do
    iso = DateTime.utc_now() |> DateTime.truncate(:millisecond) |> DateTime.to_iso8601()
    "export-#{iso}.xlsx"
  end

  @spec validate_selected(Selection.t()) :: :ok | {:error, DomainError.t()}
  def validate_selected(%Selection{} = selection) do
    if Selection.empty?(selection) do
      {:error,
       DomainError.exception(
         code: Codes.invalid(),
         fields: [:areas_ids, :services_ids, :classes_ids, :groups_ids],
         message: "At least one of areasIds, servicesIds, classesIds, groupsIds must be provided"
       )}
    else
      :ok
    end
  end

  defp write(tables) do
    {sheets, autofilter_ranges} =
      case for({table, rows} <- tables, rows != [], do: Sheet.build(table, rows)) do
        [] -> {[%Elixlsx.Sheet{name: "persons", rows: [[]]}], [nil]}
        built -> Enum.unzip(built)
      end

    {:ok, {_name, xlsx}} =
      Elixlsx.write_to_memory(%Elixlsx.Workbook{sheets: sheets}, "export.xlsx")

    RtlAndAutofilterPatch.patch(xlsx, autofilter_ranges)
  end
end
