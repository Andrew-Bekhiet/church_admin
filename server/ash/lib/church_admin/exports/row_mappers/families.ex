defmodule ChurchAdmin.Exports.RowMappers.Families do
  @moduledoc "The `families` sheet: one row per family."

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.People.Family.t()) :: [{String.t(), term()}]
  def map(family) do
    [
      Fragments.viewable(family),
      Fragments.address(family.address),
      Fragments.raw("marriageDate", Fragments.date_text(family.marriage_date)),
      Fragments.raw("deceasedSpouseName", family.deceased_spouse_name),
      Fragments.raw("status", family.status),
      Fragments.object_ref("church", family.church),
      Fragments.raw("notes", family.notes),
      Fragments.audit_log("lastVisit", family.latest_visit),
      Fragments.audit_log("lastFatherVisit", family.latest_father_visit),
      Fragments.list_names_and_ids("stores", family.stores),
      Fragments.audit_log("lastEdit", family.latest_edit)
    ]
    |> List.flatten()
    |> Localization.localize()
  end
end
