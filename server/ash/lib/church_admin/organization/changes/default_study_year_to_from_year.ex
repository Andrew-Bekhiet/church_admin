defmodule ChurchAdmin.Organization.Changes.DefaultStudyYearToFromYear do
  @moduledoc """
  Sets the class's `service_study_year_to` from the `service_study_year_to`
  argument, which a class covering only its `service_study_year` leaves out.
  """

  use Ash.Resource.Change

  @impl Ash.Resource.Change
  def change(changeset, _opts, _context) do
    study_year_to =
      Ash.Changeset.get_argument(changeset, :service_study_year_to) ||
        Ash.Changeset.get_attribute(changeset, :service_study_year)

    Ash.Changeset.force_change_attribute(changeset, :service_study_year_to, study_year_to)
  end
end
