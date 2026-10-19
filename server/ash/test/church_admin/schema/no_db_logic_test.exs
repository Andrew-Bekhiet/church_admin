defmodule ChurchAdmin.Schema.NoDbLogicTest do
  use ChurchAdmin.DataCase, async: true

  @allowlist_path Path.expand("../../support/db_logic_allowlist.txt", __DIR__)
  @external_resource @allowlist_path

  @logic_schemas ~w(public auth history operations)

  @routines_sql """
  select case p.prokind when 'p' then 'procedure' else 'function' end
         || ' ' || n.nspname || '.' || p.proname || '(' || oidvectortypes(p.proargtypes) || ')'
  from pg_proc p
  join pg_namespace n on n.oid = p.pronamespace
  where n.nspname = any($1::text[])
    and not exists (select 1 from pg_depend d where d.objid = p.oid and d.deptype = 'e')
    and not (n.nspname = 'public' and (p.proname like 'ash\\_%' or p.proname = 'uuid_generate_v7'))
  """

  @triggers_sql """
  select 'trigger ' || n.nspname || '.' || c.relname || '.' || t.tgname
  from pg_trigger t
  join pg_class c on c.oid = t.tgrelid
  join pg_namespace n on n.oid = c.relnamespace
  where not t.tgisinternal
    and n.nspname = any($1::text[])
  """

  @session_defaults_sql """
  select 'default ' || n.nspname || '.' || c.relname || '.' || a.attname
  from pg_attrdef d
  join pg_attribute a on a.attrelid = d.adrelid and a.attnum = d.adnum
  join pg_class c on c.oid = d.adrelid
  join pg_namespace n on n.oid = c.relnamespace
  where n.nspname = any($1::text[])
    and pg_get_expr(d.adbin, d.adrelid) ilike '%current\\_setting%'
  """

  @cron_jobs_sql "select 'cron.job ' || coalesce(jobname, jobid::text) from cron.job"

  defp single_column(sql, params \\ []) do
    %{rows: rows} = Repo.query!(sql, params)
    Enum.map(rows, &hd/1)
  end

  defp live_db_logic do
    cron_jobs =
      if single_column("select to_regclass('cron.job')::text") == [nil],
        do: [],
        else: single_column(@cron_jobs_sql)

    [@routines_sql, @triggers_sql, @session_defaults_sql]
    |> Enum.flat_map(&single_column(&1, [@logic_schemas]))
    |> Enum.concat(cron_jobs)
    |> Enum.sort()
  end

  defp allowlist do
    @allowlist_path |> File.read!() |> String.split("\n", trim: true)
  end

  test "the allowlist is sorted and free of duplicates" do
    assert allowlist() == allowlist() |> Enum.uniq() |> Enum.sort()
  end

  test "the database carries exactly the logic the allowlist names" do
    live = live_db_logic()
    allowed = allowlist()

    unexpected = live -- allowed
    missing = allowed -- live

    assert unexpected == [] and missing == [], """
    The migrated database and test/support/db_logic_allowlist.txt disagree.

    In the database but not allowlisted (new DB logic belongs in Ash; if this
    is a deliberate leftover, add the line):
    #{Enum.map_join(unexpected, "\n", &"  + #{&1}")}

    Allowlisted but no longer in the database (delete these lines):
    #{Enum.map_join(missing, "\n", &"  - #{&1}")}
    """
  end
end
