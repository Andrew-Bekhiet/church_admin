defmodule ChurchAdmin.OrgWrites do
  @moduledoc """
  The writes the organization and attendance behaviour tests drive: create,
  update and delete of services, classes, groups, meetings and attendance
  records, through their Ash commands as an actor. Every call is one
  transaction whose deferred checks run at its end, and answers `{:ok, id}`
  or `{:error, code}` with a `ChurchAdmin.Errors.Codes` code.

  `delete/3` is what a user's delete does (an archive for services, classes
  and groups); `hard_delete/3` is the system actor's delete.
  """

  alias ChurchAdmin.Attendance.{AttendanceRecord, Meeting}
  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.Repo

  @commands %{
    service: {Service, :create_service, :update_service, :destroy},
    class: {Class, :create_class, :update_class, :destroy},
    group: {Group, :create_group, :update_group, :destroy},
    meeting: {Meeting, :create_meeting, :update_meeting, nil},
    attendance: {AttendanceRecord, :mark_attendance, :update_attendance_time, :unmark_attendance}
  }

  @type kind :: :service | :class | :group | :meeting | :attendance

  @spec create(term(), kind(), map()) :: {:ok, String.t()} | {:error, String.t()}
  def create(actor, kind, attrs) do
    {resource, create_action, _update_action, _destroy_action} = Map.fetch!(@commands, kind)

    transact(fn ->
      resource
      |> Ash.Changeset.for_create(create_action, attrs, actor: actor)
      |> Ash.create()
      |> id_of()
    end)
  end

  @spec update(term(), kind(), String.t(), map()) :: {:ok, String.t()} | {:error, String.t()}
  def update(actor, kind, id, attrs) do
    {resource, _create_action, update_action, _destroy_action} = Map.fetch!(@commands, kind)

    transact(fn ->
      resource
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_update(update_action, attrs, actor: actor)
      |> Ash.update()
      |> id_of()
    end)
  end

  @spec delete(term(), kind(), String.t()) :: {:ok, String.t()} | {:error, String.t()}
  def delete(actor, kind, id), do: destroy(actor, kind, id, elem(Map.fetch!(@commands, kind), 3))

  @spec hard_delete(term(), kind(), String.t()) :: {:ok, String.t()} | {:error, String.t()}
  def hard_delete(actor, kind, id) when kind in [:service, :class, :group],
    do: destroy(actor, kind, id, :hard_destroy)

  defp destroy(actor, kind, id, action) do
    {resource, _create_action, _update_action, _destroy_action} = Map.fetch!(@commands, kind)

    transact(fn ->
      resource
      |> Ash.get!(id, authorize?: false)
      |> Ash.Changeset.for_destroy(action, %{}, actor: actor)
      |> Ash.destroy()
      |> case do
        :ok -> {:ok, id}
        {:ok, _record} -> {:ok, id}
        {:error, error} -> {:error, error}
      end
    end)
  end

  defp id_of({:ok, record}), do: {:ok, record.id}
  defp id_of({:error, error}), do: {:error, error}

  defp transact(fun) do
    fire_deferred_checks!()

    Repo.transaction(fn ->
      case fun.() do
        {:ok, id} ->
          fire_deferred_checks!()
          id

        {:error, error} ->
          Repo.rollback(error)
      end
    end)
    |> case do
      {:ok, id} -> {:ok, id}
      {:error, error} -> {:error, code_of(error)}
    end
  rescue
    error in Postgrex.Error -> {:error, error.postgres.message}
  end

  defp fire_deferred_checks! do
    Repo.query!("set constraints all immediate")
    Repo.query!("set constraints all deferred")
  end

  defp code_of(error) when is_binary(error), do: error
  defp code_of(error), do: error |> ChurchAdmin.AccountsCase.codes() |> List.first()
end
