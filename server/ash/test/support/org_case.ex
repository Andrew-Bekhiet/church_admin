defmodule ChurchAdmin.OrgCase do
  @moduledoc """
  Organization and attendance command tests: the database sandbox, actors
  built from fixture users, `ChurchAdmin.OrgWrites` as the way to write, and
  readers for the rows a write leaves behind (`row/2`, `edit_rows/2`).
  """

  use ExUnit.CaseTemplate

  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Repo

  using do
    quote do
      import ChurchAdmin.AccountsCase, only: [codes: 1]
      import ChurchAdmin.OrgCase
      alias ChurchAdmin.Factory
      alias ChurchAdmin.OrgWrites
    end
  end

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    ChurchAdmin.DataCase.set_system_db_session()

    Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    :ok
  end

  @everything ~w(approved readAllData writeAllData deleteData recordAllAttendance recordAllServantsAttendance)

  @doc "A user holding every permission the organization and attendance rules ask for, and its actor."
  def everything_actor! do
    user = Factory.user!()
    Factory.permissions!(user, @everything)
    {user, ActorLoader.load(user.uid)}
  end

  def actor_for(user), do: ActorLoader.load(user.uid)

  @doc "The `deleted_at` and `deleted_by` of a row, or nil when the row is gone."
  def archived_state(table, id) do
    case Repo.query!(
           "select deleted_at is not null, deleted_by::text from #{table} where id = $1::text::uuid",
           [id]
         ) do
      %{rows: [[archived?, deleted_by]]} -> %{archived?: archived?, deleted_by: deleted_by}
      %{rows: []} -> nil
    end
  end

  @doc "Edit history rows of a record as `{recorded_by, user_role}`, oldest first."
  def edit_rows(table, id) do
    %{rows: rows} =
      Repo.query!(
        ~s(select recorded_by::text, user_role from history.edit_history where "table" = $1 and record_id = $2::text::uuid order by audit_id),
        [table, id]
      )

    Enum.map(rows, fn [recorded_by, user_role] -> {recorded_by, user_role} end)
  end

  @doc "The edit history rows `fun` adds for a record, as `{recorded_by, user_role}`."
  def edit_rows_written_by(table, id, fun) do
    before = edit_rows(table, id)
    fun.()
    edit_rows(table, id) -- before
  end

  @doc "A column of a row, or nil when the row is gone."
  def column(table, column, id) do
    case Repo.query!("select #{column}::text from #{table} where id = $1::text::uuid", [id]) do
      %{rows: [[value]]} -> value
      %{rows: []} -> nil
    end
  end

  def system_actor, do: ChurchAdmin.Authz.Actor.system()
end
