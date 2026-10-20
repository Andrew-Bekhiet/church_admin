defmodule ChurchAdmin.Dev.SeedLoadTest do
  use ExUnit.Case, async: false

  alias ChurchAdmin.Dev.SeedGenerator
  alias ChurchAdmin.Dev.SeedSpec
  alias ChurchAdmin.RolledBackSession, as: Session

  @moduletag timeout: 600_000

  for scale <- SeedSpec.scales() do
    describe "the #{scale} seed loaded on top of the reference and services seeds" do
      setup do
        output = SeedGenerator.generate(unquote(scale))
        script = body_without_transaction(output.sql)

        {:ok, output: output, script: script, spec: SeedSpec.fetch!(unquote(scale))}
      end

      test "has exactly the specified rows per table", %{script: script} do
        in_loaded_session(script, fn session ->
          for {table, expected} <- SeedSpec.table_counts(unquote(scale)) do
            assert {table, Session.count!(session, "select count(*) from #{table}")} ==
                     {table, expected}
          end
        end)
      end

      test "derives the geometry pairs, deletions and data-check failures it was built with",
           context do
        %{script: script, output: output, spec: spec} = context

        in_loaded_session(script, fn session ->
          pairs = Session.rows!(session, "select area_id, street_id from public.areas_streets")
          assert Enum.sort(Enum.map(pairs, &List.to_tuple/1)) == output.expected_areas_streets

          assert Session.count!(
                   session,
                   "select count(*) from public.families where deleted_at is not null"
                 ) ==
                   spec.soft_deleted_families

          assert Session.count!(
                   session,
                   "select count(*) from public.persons where deleted_at is not null"
                 ) ==
                   spec.soft_deleted_persons

          assert Session.count!(
                   session,
                   "select count(*) from public.data_checks where not (family_check and address_check)"
                 ) == SeedSpec.data_check_failing_families(unquote(scale))

          assert Session.count!(
                   session,
                   """
                   select count(*) from public.persons_services ps
                   where not exists (
                     select 1
                     from public.persons p
                     join public.services s on s.id = ps.service_id
                     where p.id = ps.person_id
                       and (
                         p.study_year_id is null
                         or (s.study_year_from_id is null and s.study_year_to_id is null)
                         or s.study_year_from_id <= p.study_year_id
                            and s.study_year_to_id >= p.study_year_id
                       )
                   )
                   """
                 ) == spec.persons_outside_service_range

          assert Session.count!(
                   session,
                   "select count(*) from history.meetings where is_archived"
                 ) == 1

          assert Session.count!(
                   session,
                   "select count(*) from public.contacts where person_id is null"
                 ) > 0
        end)
      end

      test "creates every user kind with its permissions, grants and linked person", %{
        script: script,
        output: output
      } do
        in_loaded_session(script, fn session ->
          for user <- output.users do
            assert [[email, auth_id]] =
                     Session.rows!(
                       session,
                       "select email, auth_id from auth.users_data where uid = '#{user.uid}'"
                     )

            assert {user.key, email, auth_id} == {user.key, user.email, user.auth_id}

            permissions =
              session
              |> Session.rows!(
                "select permission from auth.users_permissions where uid = '#{user.uid}'"
              )
              |> List.flatten()
              |> Enum.sort()

            assert {user.key, permissions} == {user.key, Enum.sort(user.kind.permissions)}

            grants =
              Session.count!(
                session,
                "select count(*) from auth.users_admin_on where uid = '#{user.uid}'"
              )

            assert {user.key, grants > 0} ==
                     {user.key, user.kind.grants != [] or user.kind[:filler?] == true}

            linked =
              Session.count!(
                session,
                "select count(*) from public.persons where uid = '#{user.uid}'"
              )

            assert {user.key, linked} == {user.key, if(user.kind.person, do: 1, else: 0)}
          end

          pending = Enum.filter(output.users, & &1.pending?)

          assert Session.count!(
                   session,
                   "select count(*) from auth.invitations i join auth.users_data u on u.uid = i.user_uid " <>
                     "where u.auth_id is null"
                 ) == length(pending)

          assert Session.count!(
                   session,
                   "select count(*) from public.persons p where p.deleted_at is not null and p.uid is not null"
                 ) == 1
        end)
      end
    end
  end

  defp in_loaded_session(script, fun) do
    Session.within_rolled_back_transaction(ChurchAdmin.Repo, fn session ->
      for file <- [
            Path.join("repo/seeds", "1780874533476_enums_seed.sql"),
            Path.join("repo/seeds", "1788885627898_services_seed.sql")
          ] do
        Session.run!(session, File.read!(Path.join(:code.priv_dir(:church_admin), file)))
      end

      Session.run!(
        session,
        "delete from operations.study_year_roll_runs where season_year = 2026 and status = 'succeeded'"
      )

      Session.run!(session, script)
      Session.run!(session, "SET CONSTRAINTS ALL IMMEDIATE")
      fun.(session)
    end)
  end

  defp body_without_transaction(sql) do
    assert [_header, "BEGIN;\n" <> rest] = String.split(sql, "\n", parts: 2)
    assert String.ends_with?(rest, "COMMIT;\n")
    String.replace_suffix(rest, "COMMIT;\n", "")
  end
end
