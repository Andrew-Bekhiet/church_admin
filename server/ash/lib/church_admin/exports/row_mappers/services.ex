defmodule ChurchAdmin.Exports.RowMappers.Services do
  @moduledoc "The `services` sheet: one row per service."

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.Organization.Service.t()) :: [{String.t(), term()}]
  def map(service) do
    [
      Fragments.viewable(service),
      Fragments.study_year("studyYearFrom", service.study_year_from),
      Fragments.study_year("studyYearTo", service.study_year_to),
      Fragments.object_ref("nextService", service.next_service),
      Fragments.audit_log("lastEdit", service.latest_edit)
    ]
    |> List.flatten()
    |> Localization.localize()
  end
end
