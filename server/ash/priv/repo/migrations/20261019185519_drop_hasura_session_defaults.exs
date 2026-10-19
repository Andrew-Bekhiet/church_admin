defmodule ChurchAdmin.Repo.Migrations.DropHasuraSessionDefaults do
  use Ecto.Migration

  @recorded_by_default "(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-user-id'::text))::uuid"
  @user_role_default "COALESCE(((current_setting('hasura.user'::text, true))::json ->> 'x-hasura-role'::text), 'postgres'::text)"

  @defaults [
    {"history.attendance_history", "recorded_by", @recorded_by_default},
    {"history.call_history", "recorded_by", @recorded_by_default},
    {"history.call_history", "user_role", @user_role_default},
    {"history.confession_history", "recorded_by", @recorded_by_default},
    {"history.edit_history", "recorded_by", @recorded_by_default},
    {"history.edit_history", "user_role", @user_role_default},
    {"history.kodas_history", "recorded_by", @recorded_by_default},
    {"history.visit_history", "recorded_by", @recorded_by_default}
  ]

  def up do
    for {table, column, _default} <- @defaults do
      execute "alter table #{table} alter column #{column} drop default"
    end
  end

  def down do
    for {table, column, default} <- @defaults do
      execute "alter table #{table} alter column #{column} set default #{default}"
    end
  end
end
