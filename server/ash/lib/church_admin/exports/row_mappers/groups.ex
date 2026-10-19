defmodule ChurchAdmin.Exports.RowMappers.Groups do
  @moduledoc "The `groups` sheet: one row per group."

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.Organization.Group.t()) :: [{String.t(), term()}]
  def map(group) do
    [
      Fragments.viewable(group),
      Fragments.object_ref("service", group.service),
      Fragments.raw("validity", group.validity),
      Fragments.audit_log("lastEdit", group.latest_edit)
    ]
    |> List.flatten()
    |> Localization.localize()
  end
end
