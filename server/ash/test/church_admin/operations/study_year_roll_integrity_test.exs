defmodule ChurchAdmin.Operations.StudyYearRollIntegrityTest do
  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.Factory
  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll

  @season 2026

  setup do
    study_years!(1..6)
    :ok
  end

  describe "edit history" do
    test "one row per updated person, class and scope, and per inserted membership; none for deleted memberships" do
      staying_service = graded_service!(1, 6)
      ungraded = service!()
      destination = graded_service!(4, 6, next_service_id: ungraded.id)
      source = graded_service!(1, 3, next_service_id: destination.id)
      dead_end = graded_service!(1, 3)

      advancing = pupil!(staying_service, 1)
      moving = pupil!(source, 3)
      in_group!(moving, group!(source))
      dropped = pupil!(dead_end, 3, family_id: family!().id)

      advancing_class = class!(staying_service, service_study_year: 1)
      relocating_class = class!(source, service_study_year: 3)
      deleted_class = class!(destination, service_study_year: 6)

      servant = user!()
      grant!(servant, :service, staying_service.id, study_year: 1)
      committed!()

      {{:ok, _counts}, written} = with_edit_history_written(fn -> Roll.run(@season) end)

      author = Roll.edit_history_author()

      expected =
        [
          {"persons", advancing.id},
          {"persons", moving.id},
          {"persons", dropped.id},
          {"services", destination.id},
          {"persons", moving.id},
          {"classes", advancing_class.id},
          {"classes", relocating_class.id},
          {"classes", deleted_class.id},
          {"users", servant.uid}
        ]
        |> Enum.map(fn {table, record_id} ->
          Map.merge(author, %{table: table, record_id: record_id})
        end)

      assert Enum.sort(written) == Enum.sort(expected)
    end
  end

  describe "invariants checked at the end of the roll" do
    test "a person left without any container rolls back every step and records failed" do
      service = graded_service!(1, 6)
      pupil = pupil!(service, 1)
      committed!()
      person!(study_year_id: nil)

      Roll.run_when_due(nayrouz(@season))

      assert study_year_of(pupil) == 1

      assert Roll.runs(@season) == [
               %{
                 status: :failed,
                 error: "Person must have at least one of (family, store, service, group, uid)",
                 step_counts: nil
               }
             ]
    end

    test "a membership outside its service's study year range rolls back every step and records failed" do
      in_range = graded_service!(1, 6)
      out_of_range = graded_service!(3, 5)
      pupil = pupil!(in_range, 1)
      committed!()
      in_service!(pupil, out_of_range)

      Roll.run_when_due(nayrouz(@season))

      assert study_year_of(pupil) == 1
      assert services_of(pupil) == Enum.sort([in_range.id, out_of_range.id])
      assert [%{status: :failed, error: error, step_counts: nil}] = Roll.runs(@season)
      assert error =~ "Person study_year does not match service study_year_range"
      assert error =~ pupil.id
    end
  end

  describe "concurrency [E18]" do
    test "a roll holds its advisory lock and blocks writers to the tables it rolls until it ends" do
      service = graded_service!(1, 6)
      pupil!(service, 1)
      committed!()

      {:ok, _counts} = Roll.run(@season)

      %{rows: tables} =
        Repo.query!("""
        select relation::regclass::text from pg_locks
        where pid = pg_backend_pid() and mode = 'ShareRowExclusiveLock'
        order by 1
        """)

      assert List.flatten(tables) ==
               Enum.sort(
                 ~w(auth.users_admin_on classes persons persons_groups persons_services services study_years)
               )

      assert %{rows: [[1]]} =
               Repo.query!("""
               select count(*)::int from pg_locks
               where pid = pg_backend_pid()
                 and locktype = 'advisory'
                 and (classid::bigint << 32 | objid::bigint) = hashtext('operations.study_year_roll')::bigint
               """)
    end
  end
end
