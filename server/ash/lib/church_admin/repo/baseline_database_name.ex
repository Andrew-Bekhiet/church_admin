defmodule ChurchAdmin.Repo.BaselineDatabaseName do
  @moduledoc """
  Lets the frozen baseline replay into a database that is not named
  `church_admin`, so production keeps its name while dev and test may share
  one Postgres server under names of their own.

  Two kinds of statement assume the name the baseline was dumped from: the
  init migration's `ALTER DATABASE "church_admin"`, and the study year roll's
  `CREATE EXTENSION pg_cron`, which pg_cron allows only in the database named
  by `cron.database_name`. `adapt/3` points them at the database being
  migrated as each folder is read, and leaves the files as Hasura applied
  them.
  """

  @init "1740598941409_init"
  @pg_cron_folders [
    "1788700000000_study_year_roll",
    "1788775921476_register_study_year_roll_schedule"
  ]

  @pg_cron_available "exists (select 1 from pg_available_extensions where name = 'pg_cron')"
  @pg_cron_available_in_its_database @pg_cron_available <>
                                       " and current_database() = coalesce(current_setting('cron.database_name', true), current_database())"

  @spec adapt(String.t(), String.t(), String.t()) :: String.t()
  def adapt(folder, sql, database) do
    folder
    |> rewrites(database)
    |> Enum.reduce(sql, fn {statement, replacement}, sql ->
      replace_once!(folder, sql, statement, replacement)
    end)
  end

  defp rewrites(@init, database),
    do: [{~s(ALTER DATABASE "church_admin"), "ALTER DATABASE " <> quote_identifier(database)}]

  defp rewrites(folder, _database) when folder in @pg_cron_folders,
    do: [{@pg_cron_available, @pg_cron_available_in_its_database}]

  defp rewrites(_folder, _database), do: []

  defp replace_once!(folder, sql, statement, replacement) do
    case String.split(sql, statement) do
      [before, rest] ->
        before <> replacement <> rest

      parts ->
        raise "#{folder}/up.sql holds `#{statement}` #{length(parts) - 1} times, expected once"
    end
  end

  defp quote_identifier(name), do: ~s(") <> String.replace(name, ~s("), ~s("")) <> ~s(")
end
