defmodule ChurchAdmin.Operations.StudyYearRollIntegrityTest do
  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.Factory
  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Operations.StudyYearRoll.{Failure, Invariants}
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

  describe "invariants checked on the rows the roll writes" do
    test "an updated person left without any container fails the check, a person the roll did not update is not checked" do
      uncontained = person!(study_year_id: 2)

      assert {:error, %Failure{message: message, detail: nil}} =
               Invariants.check(%{person_ids: [uncontained.id], service_memberships: []})

      assert message == "Person must have at least one of (family, store, service, group, uid)"

      assert Invariants.check(%{person_ids: [], service_memberships: []}) == :ok
    end

    test "inserted memberships outside their service's study year range fail the check, listing every violation; memberships the roll did not insert are not checked" do
      out_of_range = graded_service!(3, 5)
      first = pupil!(out_of_range, 1)
      second = pupil!(out_of_range, 2)
      inserted = [{first.id, out_of_range.id}, {second.id, out_of_range.id}]

      assert {:error, %Failure{message: message, detail: detail}} =
               Invariants.check(%{person_ids: [], service_memberships: inserted})

      assert message == "Person study_year does not match service study_year_range"

      assert Enum.sort(String.split(detail, "\n")) ==
               Enum.sort(
                 for {person_id, service_id} <- inserted,
                     do: "person_id: #{person_id} service_id: #{service_id}"
               )

      assert Invariants.check(%{person_ids: [first.id, second.id], service_memberships: []}) ==
               :ok
    end

    test "a pre-existing person without any container that the roll does not update does not block the roll" do
      service = graded_service!(1, 6)
      pupil = pupil!(service, 1)
      committed!()
      person!(study_year_id: nil)

      Roll.run_when_due(nayrouz(@season))

      assert study_year_of(pupil) == 2
      assert [%{status: :succeeded}] = Roll.runs(@season)
    end

    test "a pre-existing out-of-range membership of a person the roll does not move does not block the roll" do
      in_range = graded_service!(1, 6)
      out_of_range = graded_service!(3, 5)
      pupil = pupil!(in_range, 1)
      committed!()
      in_service!(pupil, out_of_range)

      Roll.run_when_due(nayrouz(@season))

      assert study_year_of(pupil) == 2
      assert services_of(pupil) == Enum.sort([in_range.id, out_of_range.id])
      assert [%{status: :succeeded}] = Roll.runs(@season)
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
