defmodule ChurchAdmin.Exports.RowMappers.Streets do
  @moduledoc "The `streets` sheet: one row per street."

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.Places.Street.t()) :: [{String.t(), term()}]
  def map(street) do
    [
      Fragments.viewable(street),
      Fragments.list_names_and_ids("areas", street.areas),
      Fragments.audit_log("lastEdit", street.latest_edit)
    ]
    |> List.flatten()
    |> Localization.localize()
  end
end
