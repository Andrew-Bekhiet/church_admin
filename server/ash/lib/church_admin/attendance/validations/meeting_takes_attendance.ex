defmodule ChurchAdmin.Attendance.Validations.MeetingTakesAttendance do
  @moduledoc """
  The attendance record is one its meeting accepts: the meeting exists and is
  not archived, its audience includes the role (person or servant), and the
  person belongs to the meeting. A servant is an admin of the meeting's group
  or service (a grant with a study year or gender must match the meeting's
  when the meeting has one); a person belongs to the meeting's group, or to its
  service and, when the meeting is limited to a study year or gender, has it.
  Checked on every create and update, so moving the time of a record on an
  archived meeting fails too.
  """

  use Ash.Resource.Validation

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine, only: [all_of: 1, any_of: 1]

  require Ash.Query

  alias ChurchAdmin.Accounts.ScopeGrant
  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.People.{GroupMembership, Person}

  @impl Ash.Resource.Validation
  def validate(changeset, _opts, _context) do
    record = %{
      person_id: Ash.Changeset.get_attribute(changeset, :person_id),
      as_servant: Ash.Changeset.get_attribute(changeset, :as_servant)
    }

    meeting_id = Ash.Changeset.get_attribute(changeset, :meeting_id)

    case Ash.get(Meeting, meeting_id, authorize?: false) do
      {:ok, meeting} -> check(meeting, record)
      {:error, _not_found} -> {:error, error(Codes.attendance_meeting_not_found(), :meeting_id)}
    end
  end

  @impl Ash.Resource.Validation
  def atomic(_changeset, _opts, _context),
    do: {:not_atomic, "the meeting and the person's memberships are read from their tables"}

  defp check(%Meeting{is_archived: true}, _record),
    do: {:error, error(Codes.attendance_meeting_archived(), :meeting_id)}

  defp check(%Meeting{audience: audience}, %{as_servant: as_servant})
       when (audience == :only_servants and not as_servant) or
              (audience == :only_persons and as_servant),
       do: {:error, error(Codes.attendance_audience_mismatch(), :as_servant)}

  defp check(meeting, %{as_servant: true} = record),
    do:
      require_membership(
        servant_of_meeting?(meeting, record.person_id),
        Codes.attendance_not_a_servant_of_meeting()
      )

  defp check(%Meeting{group_id: group_id}, record) when group_id != nil,
    do:
      require_membership(in_group?(group_id, record.person_id), Codes.attendance_not_in_meeting())

  defp check(meeting, record),
    do:
      require_membership(
        in_service_scope?(meeting, record.person_id),
        Codes.attendance_not_in_meeting()
      )

  defp require_membership(true, _code), do: :ok
  defp require_membership(false, code), do: {:error, error(code, :person_id)}

  defp servant_of_meeting?(meeting, person_id) do
    case Ash.get(Person, person_id, authorize?: false) do
      {:ok, %Person{uid: uid}} when is_binary(uid) -> admin_of_meeting?(meeting, uid)
      _no_user -> false
    end
  end

  defp admin_of_meeting?(meeting, uid) do
    on_group =
      if is_nil(meeting.group_id), do: false, else: expr(admin_on_group == ^meeting.group_id)

    on_service =
      if is_nil(meeting.service_id),
        do: false,
        else:
          all_of([
            expr(admin_on_service == ^meeting.service_id),
            grant_matches(meeting.service_study_year, :service_study_year),
            grant_matches(meeting.service_gender, :service_gender)
          ])

    ScopeGrant
    |> Ash.Query.filter(uid == ^uid)
    |> Ash.Query.filter(^any_of([on_group, on_service]))
    |> Ash.exists?(authorize?: false)
  end

  defp grant_matches(nil, _attribute), do: true

  defp grant_matches(value, attribute),
    do: expr(is_nil(^ref(attribute)) or ^ref(attribute) == ^value)

  defp in_group?(group_id, person_id) do
    GroupMembership
    |> Ash.Query.filter(person_id == ^person_id and group_id == ^group_id)
    |> Ash.exists?(authorize?: false)
  end

  defp in_service_scope?(meeting, person_id) do
    Person
    |> Ash.Query.filter(
      id == ^person_id and exists(service_memberships, service_id == ^meeting.service_id)
    )
    |> Ash.Query.filter(
      ^all_of([
        person_has(meeting.service_study_year, :study_year_id),
        person_has(meeting.service_gender, :gender)
      ])
    )
    |> Ash.exists?(authorize?: false)
  end

  defp person_has(nil, _attribute), do: true
  defp person_has(value, attribute), do: expr(^ref(attribute) == ^value)

  defp error(code, field), do: DomainError.exception(code: code, fields: [field])
end
