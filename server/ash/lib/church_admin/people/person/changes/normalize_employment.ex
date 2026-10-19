defmodule ChurchAdmin.People.Person.Changes.NormalizeEmployment do
  @moduledoc """
  Clears the fields a person's other answers make meaningless, as the client
  used to before sending them:

    * not a servant: no serving church or service type;
    * not a male shammas: not a shammas, no shammas level;
    * a study year set or changed: a school only up to year 12, a college
      only from year 12;
    * a work status set or changed: a study year, school and college only
      for a student, a qualification only for a non-student, a job and its
      description only when employed or retired.
  """

  use Ash.Resource.Change

  @with_job ~w(employed retired)

  @impl true
  def change(changeset, _opts, _context) do
    changeset
    |> clear_when(not servant?(changeset), [:serving_church_id, :service_type])
    |> normalize_shammas()
    |> normalize_school_by_study_year()
    |> normalize_by_work_status()
  end

  defp servant?(changeset), do: Ash.Changeset.get_attribute(changeset, :is_servant) != false

  defp normalize_shammas(changeset) do
    shammas? =
      Ash.Changeset.get_attribute(changeset, :gender) == true and
        Ash.Changeset.get_attribute(changeset, :is_shammas) == true

    if shammas?,
      do: changeset,
      else:
        Ash.Changeset.force_change_attributes(changeset, %{
          is_shammas: false,
          shammas_level_id: nil
        })
  end

  defp normalize_school_by_study_year(changeset) do
    if set_or_changed?(changeset, :study_year_id) do
      year = Ash.Changeset.get_attribute(changeset, :study_year_id)

      changeset
      |> clear_when((year || 0) > 12, [:school_id])
      |> clear_when((year || 12) < 12, [:college_id])
    else
      changeset
    end
  end

  defp normalize_by_work_status(changeset) do
    work_status = Ash.Changeset.get_attribute(changeset, :work_status)

    if work_status && set_or_changed?(changeset, :work_status) do
      student? = work_status == "student"

      changeset
      |> clear_when(not student?, [:study_year_id, :school_id, :college_id])
      |> clear_when(student?, [:qualification_id])
      |> clear_when(work_status not in @with_job, [:job_id, :job_description])
    else
      changeset
    end
  end

  defp clear_when(changeset, true, attributes),
    do: Ash.Changeset.force_change_attributes(changeset, Map.new(attributes, &{&1, nil}))

  defp clear_when(changeset, false, _attributes), do: changeset

  defp set_or_changed?(%{action_type: :create} = changeset, attribute),
    do: Ash.Changeset.changing_attribute?(changeset, attribute)

  defp set_or_changed?(changeset, attribute),
    do: Ash.Changeset.get_attribute(changeset, attribute) != Map.get(changeset.data, attribute)
end
