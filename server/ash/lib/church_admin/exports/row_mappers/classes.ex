defmodule ChurchAdmin.Exports.RowMappers.Classes do
  @moduledoc "The `classes` sheet: one row per class."

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.Organization.Class.t()) :: [{String.t(), term()}]
  def map(class) do
    [
      Fragments.viewable(class),
      Fragments.study_year("studyYearFrom", class.study_year_from),
      Fragments.study_year("studyYearTo", class.study_year_to),
      Fragments.gender(class.service_gender),
      Fragments.object_ref("service", class.service),
      Fragments.audit_log("lastEdit", class.latest_edit)
    ]
    |> List.flatten()
    |> Localization.localize()
  end
end
