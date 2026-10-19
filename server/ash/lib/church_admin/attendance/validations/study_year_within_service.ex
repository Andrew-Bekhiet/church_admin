defmodule ChurchAdmin.Attendance.Validations.StudyYearWithinService do
  @moduledoc """
  A service meeting limited to a study year (`service_study_year`) names a
  year inside its service's study year range, or its service has no range
  (`meeting/service-study-year-mismatch`). Group meetings and meetings without
  a year are not checked. Checked on every create and update, so renaming a
  meeting whose service range has since moved off its year fails too.
  """

  use Ash.Resource.Validation

  require Ash.Query

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Organization.Service

  @impl true
  def validate(changeset, _opts, _context) do
    group_id = Ash.Changeset.get_attribute(changeset, :group_id)
    study_year = Ash.Changeset.get_attribute(changeset, :service_study_year)
    service_id = Ash.Changeset.get_attribute(changeset, :service_id)

    if is_nil(group_id) and not is_nil(study_year) and not in_range?(service_id, study_year) do
      {:error,
       DomainError.exception(
         code: Codes.meeting_service_study_year_mismatch(),
         fields: [:service_study_year]
       )}
    else
      :ok
    end
  end

  @impl true
  def atomic(_changeset, _opts, _context),
    do: {:not_atomic, "the year is compared with the service's range"}

  defp in_range?(service_id, study_year) do
    Service
    |> Ash.Query.filter(
      id == ^service_id and
        ((is_nil(study_year_from_id) and is_nil(study_year_to_id)) or
           (study_year_from_id <= ^study_year and study_year_to_id >= ^study_year))
    )
    |> Ash.exists?(authorize?: false)
  end
end
