defmodule ChurchAdmin.Exports.RowMappers.Stores do
  @moduledoc "The `stores` sheet: one row per store."

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.Places.Store.t()) :: [{String.t(), term()}]
  def map(store) do
    [
      Fragments.viewable(store),
      Fragments.address(store.address),
      Fragments.object_ref("adminFamily", store.admin_family),
      Fragments.audit_log("lastEdit", store.latest_edit)
    ]
    |> List.flatten()
    |> Localization.localize()
  end
end
