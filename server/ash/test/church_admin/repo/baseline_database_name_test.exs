defmodule ChurchAdmin.Repo.BaselineDatabaseNameTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Repo.BaselineDatabaseName
  alias ChurchAdmin.Repo.BaselineMigration

  @init "1740598941409_init"
  @pg_cron_folders [
    "1788700000000_study_year_roll",
    "1788775921476_register_study_year_roll_schedule"
  ]

  defp adapted(folder, database) do
    sql = folder |> BaselineMigration.folder_path() |> Path.join("up.sql") |> File.read!()
    BaselineDatabaseName.adapt(folder, sql, database)
  end

  test "the init migration sets the search path of the database being migrated" do
    sql = adapted(@init, "church_admin_dev")

    assert sql =~ ~s(ALTER DATABASE "church_admin_dev" SET "search_path")
    refute sql =~ ~s(ALTER DATABASE "church_admin")
  end

  test "a database name is quoted as an identifier" do
    assert adapted(@init, ~s(odd"name)) =~ ~s(ALTER DATABASE "odd""name" SET)
  end

  test "pg_cron is created only in the database pg_cron runs in" do
    for folder <- @pg_cron_folders do
      assert adapted(folder, "church_admin_test") =~
               "current_database() = coalesce(current_setting('cron.database_name', true), current_database())"
    end
  end

  test "every other baseline folder runs as Hasura applied it" do
    for folder <- BaselineMigration.folders() -- [@init | @pg_cron_folders] do
      original = folder |> BaselineMigration.folder_path() |> Path.join("up.sql") |> File.read!()

      assert BaselineDatabaseName.adapt(folder, original, "church_admin_dev") == original
    end
  end

  test "a statement the frozen folder no longer holds fails the migration" do
    assert_raise RuntimeError, ~r/#{@init}/, fn ->
      BaselineDatabaseName.adapt(@init, "select 1;", "church_admin_dev")
    end
  end
end
