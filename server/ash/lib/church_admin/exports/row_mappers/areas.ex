defmodule ChurchAdmin.Exports.RowMappers.Areas do
  @moduledoc "The `areas` sheet: one row per area, with only its name, color and id."

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.Places.Area.t()) :: [{String.t(), term()}]
  def map(area), do: area |> Fragments.viewable() |> Localization.localize()
end
