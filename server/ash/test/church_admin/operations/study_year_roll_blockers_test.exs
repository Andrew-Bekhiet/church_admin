defmodule ChurchAdmin.Operations.StudyYearRollBlockersTest do
  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.Factory
  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll

  @season 2026

  setup do
    study_years!(1..6)
    :ok
  end

  defp blocker_lines do
    Roll.blockers()
    |> Enum.map(&"#{&1.issue_code}: #{&1.detail}")
    |> Enum.sort()
  end

  defp assert_blocked_by(expected_lines, unchanged_pupil) do
    committed!()

    assert blocker_lines() == Enum.sort(expected_lines)

    Roll.run_when_due(nayrouz(@season))

    assert [%{status: :failed, error: error, step_counts: nil}] = Roll.runs(@season)
    [message | detail_lines] = String.split(error, "\n")
    assert message == "study year roll blocked for season #{@season}"
    assert Enum.sort(detail_lines) == Enum.sort(expected_lines)
    assert study_year_of(unchanged_pupil) == unchanged_pupil.study_year_id
  end

  defp bystander! do
    service = graded_service!(1, 6)
    pupil!(service, 2)
  end

  describe "next_service_id cycle [E7]" do
    test "a self-linked service blocks" do
      service = service!()
      route!(service, service)

      assert_blocked_by(
        ["next_service_cycle: service #{service.id} is part of a next_service_id cycle"],
        bystander!()
      )
    end

    test "every service on a longer cycle is reported, a service leading into it is not" do
      first = service!()
      second = service!(next_service_id: first.id)
      route!(first, second)
      service!(next_service_id: first.id)

      assert_blocked_by(
        for(
          service <- [first, second],
          do: "next_service_cycle: service #{service.id} is part of a next_service_id cycle"
        ),
        bystander!()
      )
    end
  end

  describe "a person losing their last connection [C8]" do
    test "a top-year pupil of a service with no next service and no other container blocks" do
      service = graded_service!(1, 3)
      pupil = pupil!(service, 3)

      assert_blocked_by(
        [
          "person_loses_last_connection: person #{pupil.id} would keep no service, group, family, store or uid"
        ],
        pupil
      )
    end

    test "a soft-deleted person losing their last connection blocks too" do
      service = graded_service!(1, 3)
      pupil = pupil!(service, 3, deleted_at: deleted_at())

      assert_blocked_by(
        [
          "person_loses_last_connection: person #{pupil.id} would keep no service, group, family, store or uid"
        ],
        bystander!()
      )
    end

    test "a family keeps the pupil connected, so nothing blocks" do
      service = graded_service!(1, 3)
      pupil!(service, 3, family_id: family!().id)
      committed!()

      assert Roll.blockers() == []
    end
  end

  describe "class placement mismatch [C9] [E8]" do
    test "a class relocating to a service whose first year is not its next grade blocks" do
      destination = graded_service!(5, 6)
      source = graded_service!(1, 3, next_service_id: destination.id)
      class = class!(source, service_study_year: 3)

      assert_blocked_by(
        [
          "class_placement_mismatch: class #{class.id} moves to service #{destination.id} whose first year 5 does not match its cohort year 4"
        ],
        bystander!()
      )
    end
  end

  describe "next service soft-deleted [E14]" do
    test "a membership that would move to a soft-deleted service blocks" do
      destination = graded_service!(4, 6, deleted_at: deleted_at())
      source = graded_service!(1, 3, next_service_id: destination.id)
      pupil!(source, 3)

      assert_blocked_by(
        [
          "next_service_deleted: service #{source.id} routes to soft-deleted service #{destination.id}"
        ],
        bystander!()
      )
    end

    test "a class that would relocate to a soft-deleted service blocks" do
      destination = graded_service!(4, 6, deleted_at: deleted_at())
      source = graded_service!(1, 3, next_service_id: destination.id)
      class!(source, service_study_year: 3)

      assert_blocked_by(
        [
          "next_service_deleted: service #{source.id} routes to soft-deleted service #{destination.id}"
        ],
        bystander!()
      )
    end

    test "current behaviour: one class relocating to a soft-deleted service reports every service routed there" do
      destination = graded_service!(4, 6, deleted_at: deleted_at())
      with_class = graded_service!(1, 3, next_service_id: destination.id)
      without_class = graded_service!(1, 3, next_service_id: destination.id)
      class!(with_class, service_study_year: 3)

      assert_blocked_by(
        for(
          source <- [with_class, without_class],
          do:
            "next_service_deleted: service #{source.id} routes to soft-deleted service #{destination.id}"
        ),
        bystander!()
      )
    end

    test "a route to a soft-deleted service that nothing takes this year does not block" do
      destination = graded_service!(4, 6, deleted_at: deleted_at())
      source = graded_service!(1, 3, next_service_id: destination.id)
      pupil!(source, 1)
      class!(source, service_study_year: 1)
      committed!()

      assert Roll.blockers() == []
    end
  end

  describe "person placement outside the destination's study year range" do
    test "pupils moving to a service whose range excludes their next year block, counted per destination" do
      destination = graded_service!(5, 6)
      source = graded_service!(1, 3, next_service_id: destination.id)
      pupil!(source, 3, family_id: family!().id)
      pupil!(source, 3, family_id: family!().id)

      assert_blocked_by(
        [
          "person_placement_mismatch: 2 person(s) move to service #{destination.id} whose study year range 5-6 excludes year 4"
        ],
        bystander!()
      )
    end

    test "graduates moving on are not checked against the destination range" do
      destination = graded_service!(1, 2)
      source = graded_service!(5, 6, next_service_id: destination.id)
      pupil!(source, 6)
      committed!()

      assert Roll.blockers() == []
    end
  end
end
