defmodule ChurchAdmin.Exports.RowMappers.Persons do
  @moduledoc """
  The `persons` sheet: one row per person. The `user.id` column is always
  empty, as in the sheets the Firebase export produced (users are identified
  by `uid`, which has its own column).
  """

  alias ChurchAdmin.Exports.RowMappers.{Fragments, Localization}

  @spec map(ChurchAdmin.People.Person.t()) :: [{String.t(), term()}]
  def map(person) do
    [
      Fragments.viewable(person),
      Fragments.contacts(person.contacts),
      Fragments.family_admin_contacts(person.family_contacts, person.id),
      Fragments.address(person.address),
      Fragments.raw("birthdate", Fragments.date_text(person.birthdate)),
      Fragments.raw("birthday", Fragments.month_and_day(person.birthdate)),
      Fragments.list_names_and_ids("services", person.services),
      Fragments.list_names_and_ids("classes", person.classes),
      Fragments.list_names_and_ids("groups", person.groups),
      Fragments.raw("workStatus", person.work_status),
      Fragments.raw("isStudent", person.is_student),
      Fragments.study_year("studyYear", person.study_year),
      Fragments.object_ref("college", person.college),
      Fragments.object_ref("school", person.school),
      Fragments.object_ref("qualification", person.qualification),
      Fragments.object_ref("job", person.job),
      Fragments.raw("jobDescription", person.job_description),
      Fragments.gender(person.gender),
      Fragments.raw("martialStatus", person.martial_status),
      Fragments.person_type(person.person_type),
      Fragments.object_ref("church", person.church),
      Fragments.object_ref("confessionFather", person.father),
      Fragments.raw("isServant", person.is_servant),
      Fragments.object_ref("servingChurch", person.serving_church),
      Fragments.raw("isShammas", person.is_shammas),
      Fragments.object_ref("shammasLevel", person.shammas_level),
      Fragments.object_ref("state", person.state),
      Fragments.list_names_and_ids("hobbies", person.hobbies),
      Fragments.list_names_and_ids("tags", person.tags),
      Fragments.raw("notes", person.notes),
      Fragments.object_ref("family", person.family),
      Fragments.object_ref("store", person.store),
      Fragments.audit_log("lastKodas", person.latest_kodas),
      Fragments.audit_log("lastConfession", person.latest_confession),
      Fragments.audit_log("lastVisit", person.latest_visit),
      Fragments.audit_log("lastCall", person.latest_call),
      Fragments.audit_log("lastEdit", person.latest_edit),
      Fragments.raw("uid", person.uid),
      user_name_with_empty_id_column(person.user)
    ]
    |> List.flatten()
    |> Localization.localize()
  end

  defp user_name_with_empty_id_column(user),
    do: [{"user.name", user && user.name}, {"user.id", nil}]
end
