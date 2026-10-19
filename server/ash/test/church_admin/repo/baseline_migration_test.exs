defmodule ChurchAdmin.Repo.BaselineMigrationTest do
  use ChurchAdmin.DataCase, async: true

  alias ChurchAdmin.Repo.BaselineMigration

  defp single_column(sql) do
    %{rows: rows} = Repo.query!(sql)
    Enum.map(rows, &hd/1)
  end

  test "every baseline folder has exactly one Ecto migration with its version" do
    migration_files =
      [:code.priv_dir(:church_admin), "repo", "migrations", "baseline", "*.exs"]
      |> Path.join()
      |> Path.wildcard()
      |> Enum.map(&Path.basename(&1, ".exs"))
      |> Enum.sort()

    assert migration_files == BaselineMigration.folders()
  end

  test "the migrated database has applied every baseline version" do
    baseline_versions = Enum.map(BaselineMigration.folders(), &BaselineMigration.version/1)
    last_baseline_version = List.last(baseline_versions)

    applied_baseline_versions =
      single_column(
        "select version from ash_schema_migrations where version <= #{last_baseline_version} order by version"
      )

    assert applied_baseline_versions == baseline_versions
  end

  test "the baseline schema carries the domain tables and the extensions it depends on" do
    tables =
      single_column("select table_schema || '.' || table_name from information_schema.tables")

    extensions = single_column("select extname from pg_extension")

    assert "public.persons" in tables
    assert "auth.users_data" in tables
    assert "history.attendance_history" in tables
    assert Enum.all?(~w(postgis timescaledb pg_cron citext pgcrypto), &(&1 in extensions))
  end
end
