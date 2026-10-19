defmodule ChurchAdmin.OrgWrites do
  @moduledoc """
  The writes the organization and attendance behaviour tests drive: create,
  update and delete of services, classes, groups, meetings and attendance
  records, as an actor. Every call is one transaction whose deferred checks
  run at its end, and answers `{:ok, id}` or `{:error, code}` with a
  `ChurchAdmin.Errors.Codes` code, so a scenario reads the same whatever
  carries it out.

  `delete/3` is what a user's delete does (an archive for services, classes
  and groups); `hard_delete/3` is the system actor's delete.
  """

  alias ChurchAdmin.Attendance.{AttendanceRecord, Meeting, MeetingAudience}
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  @tables %{
    service: "public.services",
    class: "public.classes",
    group: "public.groups",
    meeting: "history.meetings",
    attendance: "history.attendance_history"
  }

  @uuid_columns ~w(id service_id group_id next_service_id default_meeting_id meeting_id person_id)a

  @messages %{
    "Meeting not found" => Codes.attendance_meeting_not_found(),
    "Cannot record attendance for archived meeting" => Codes.attendance_meeting_archived(),
    "servants audience requires as_servant = true" => Codes.attendance_audience_mismatch(),
    "persons audience requires as_servant = false" => Codes.attendance_audience_mismatch(),
    "Person is not a servant admin on this meeting scope" =>
      Codes.attendance_not_a_servant_of_meeting(),
    "Person does not belong to meeting group" => Codes.attendance_not_in_meeting(),
    "Person does not belong to meeting service scope" => Codes.attendance_not_in_meeting(),
    "service_study_year doesnot match service_id" => Codes.meeting_service_study_year_mismatch(),
    "Default meeting does not belong to service" => Codes.service_default_meeting_mismatch(),
    "Default meeting does not belong to group" => Codes.group_default_meeting_mismatch()
  }

  @constraints %{
    "services_name_key" => Codes.service_name_taken(),
    "attendance_history_meeting_person_day_idx" => Codes.attendance_already_recorded(),
    "classes_service_fkey" => Codes.service_in_use(),
    "groups_service_id_fkey" => Codes.service_in_use()
  }

  @commands %{
    meeting: {Meeting, :create_meeting, :update_meeting, nil},
    attendance: {AttendanceRecord, :mark_attendance, :update_attendance_time, :unmark_attendance}
  }

  @type kind :: :service | :class | :group | :meeting | :attendance

  @spec create(term(), kind(), map()) :: {:ok, String.t()} | {:error, String.t()}
  def create(actor, kind, attrs) when is_map_key(@commands, kind) do
    {resource, create_action, _update_action, _destroy_action} = Map.fetch!(@commands, kind)

    transact(actor, kind, fn ->
      resource
      |> Ash.Changeset.for_create(create_action, attrs, actor: actor)
      |> Ash.create()
      |> id_of()
    end)
  end

  def create(actor, kind, attrs), do: transact(actor, kind, fn -> insert!(kind, attrs) end)

  @spec update(term(), kind(), String.t(), map()) :: {:ok, String.t()} | {:error, String.t()}
  def update(actor, kind, id, attrs) when is_map_key(@commands, kind) do
    {resource, _create_action, update_action, _destroy_action} = Map.fetch!(@commands, kind)

    transact(actor, kind, fn ->
      resource
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_update(update_action, attrs, actor: actor)
      |> Ash.update()
      |> id_of()
    end)
  end

  def update(actor, kind, id, attrs) do
    transact(actor, kind, fn ->
      update!(kind, id, attrs)
      id
    end)
  end

  @spec delete(term(), kind(), String.t()) :: {:ok, String.t()} | {:error, String.t()}
  def delete(actor, :attendance, id) do
    {resource, _create_action, _update_action, destroy_action} =
      Map.fetch!(@commands, :attendance)

    transact(actor, :attendance, fn ->
      resource
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_destroy(destroy_action, %{}, actor: actor)
      |> Ash.destroy()
      |> case do
        :ok -> {:ok, id}
        {:error, error} -> {:error, error}
      end
    end)
  end

  def delete(actor, kind, id) do
    transact(actor, kind, fn ->
      Repo.query!("delete from #{Map.fetch!(@tables, kind)} where id = $1::text::uuid", [id])
      id
    end)
  end

  @spec hard_delete(term(), kind(), String.t()) :: {:ok, String.t()} | {:error, String.t()}
  def hard_delete(actor, kind, id), do: delete(actor, kind, id)

  defp id_of({:ok, record}), do: {:ok, record.id}
  defp id_of({:error, error}), do: {:error, error}

  defp transact(actor, kind, fun) do
    fire_deferred_checks!()

    Repo.transaction(fn ->
      HasuraSession.set_for_transaction(Repo, actor)

      case fun.() do
        {:ok, id} ->
          fire_deferred_checks!()
          id

        {:error, error} ->
          Repo.rollback(error)

        id ->
          fire_deferred_checks!()
          id
      end
    end)
    |> case do
      {:ok, id} -> {:ok, id}
      {:error, error} -> {:error, code_of(error, kind)}
    end
  rescue
    error in Postgrex.Error -> {:error, code_of(error, kind)}
  end

  defp fire_deferred_checks! do
    Repo.query!("set constraints all immediate")
    Repo.query!("set constraints all deferred")
  end

  defp code_of(error, _kind) when is_binary(error), do: error

  defp code_of(%Ash.Changeset{errors: errors}, kind),
    do: code_of(Ash.Error.to_error_class(errors), kind)

  defp code_of(%{class: _} = error, _kind),
    do: error |> ChurchAdmin.AccountsCase.codes() |> List.first()

  defp code_of(%Postgrex.Error{postgres: %{message: message} = postgres}, kind) do
    constraint = Map.get(postgres, :constraint)

    cond do
      message == "Cannot set default meeting to archived meeting" ->
        archived_default_meeting_code(kind)

      Map.has_key?(@messages, message) ->
        Map.fetch!(@messages, message)

      Map.has_key?(@constraints, constraint) ->
        Map.fetch!(@constraints, constraint)

      true ->
        message
    end
  end

  defp archived_default_meeting_code(:service), do: Codes.service_default_meeting_archived()
  defp archived_default_meeting_code(:group), do: Codes.group_default_meeting_archived()

  defp insert!(kind, attrs) do
    attrs = Map.put_new_lazy(attrs, :id, &Ash.UUID.generate/0)
    columns = Enum.map_join(attrs, ", ", fn {name, _value} -> ~s("#{name}") end)

    placeholders =
      attrs
      |> Enum.with_index(1)
      |> Enum.map_join(", ", fn {{name, _value}, position} -> placeholder(name, position) end)

    Repo.query!(
      "insert into #{Map.fetch!(@tables, kind)} (#{columns}) values (#{placeholders})",
      Enum.map(attrs, fn {name, value} -> param(name, value) end)
    )

    attrs.id
  end

  defp update!(kind, id, attrs) when attrs == %{} do
    Repo.query!("update #{Map.fetch!(@tables, kind)} set id = id where id = $1::text::uuid", [id])
  end

  defp update!(kind, id, attrs) do
    assignments =
      attrs
      |> Enum.with_index(2)
      |> Enum.map_join(", ", fn {{name, _value}, position} ->
        ~s("#{name}" = #{placeholder(name, position)})
      end)

    Repo.query!(
      "update #{Map.fetch!(@tables, kind)} set #{assignments} where id = $1::text::uuid",
      [id | Enum.map(attrs, fn {name, value} -> param(name, value) end)]
    )
  end

  defp placeholder(name, position) when name in @uuid_columns, do: "$#{position}::text::uuid"
  defp placeholder(:audience, position), do: "$#{position}::text::history.meeting_audience"
  defp placeholder(_name, position), do: "$#{position}"

  defp param(:audience, audience) do
    {:ok, label} = MeetingAudience.dump_to_native(audience, [])
    label
  end

  defp param(_name, value), do: value
end
