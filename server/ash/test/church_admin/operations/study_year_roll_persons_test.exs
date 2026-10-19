defmodule ChurchAdmin.Operations.StudyYearRollPersonsTest do
  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.Factory
  import ChurchAdmin.Operations.StudyYearRollWorld

  alias ChurchAdmin.Operations.StudyYearRollUnderTest, as: Roll

  @season 2026

  setup do
    study_years!(1..6)
    :ok
  end

  defp roll_counts!(steps) do
    {:ok, counts} = Roll.run(@season)
    Map.take(counts, steps)
  end

  defp with_family, do: [family_id: family!().id]

  describe "study years" do
    test "a graded person advances one year and keeps a service whose range still covers it" do
      service = graded_service!(1, 6)
      pupil = pupil!(service, 1)

      assert roll_counts!(["advance_persons_study_years"]) == %{
               "advance_persons_study_years" => 1
             }

      assert study_year_of(pupil) == 2
      assert services_of(pupil) == [service.id]
    end

    test "the next study year is the next one in order, skipping missing orders" do
      ChurchAdmin.Repo.query!("delete from public.study_years where \"order\" = 3")
      service = graded_service!(1, 6)
      pupil = pupil!(service, 2)

      roll_counts!([])

      assert study_year_of(pupil) == 4
    end

    test "the top cohort graduates: no study year, and a student becomes unemployed" do
      service = service!()
      student = pupil!(service, 6, work_status: "student")
      employed = pupil!(service, 6, work_status: "employed")

      assert roll_counts!(["graduate_top_cohort_persons"]) == %{
               "graduate_top_cohort_persons" => 2
             }

      assert {study_year_of(student), work_status_of(student)} == {nil, "unemployed"}
      assert {study_year_of(employed), work_status_of(employed)} == {nil, "employed"}
    end

    test "a person without a study year is left alone" do
      service = service!()
      person = pupil!(service, nil)

      assert roll_counts!(["advance_persons_study_years", "graduate_top_cohort_persons"]) == %{
               "advance_persons_study_years" => 0,
               "graduate_top_cohort_persons" => 0
             }

      assert study_year_of(person) == nil
      assert services_of(person) == [service.id]
    end

    test "a soft-deleted person still advances and moves on [C3]" do
      destination = graded_service!(4, 6)
      source = graded_service!(1, 3, next_service_id: destination.id)
      pupil = pupil!(source, 3, deleted_at: deleted_at())

      roll_counts!([])

      assert study_year_of(pupil) == 4
      assert services_of(pupil) == [destination.id]
    end
  end

  describe "service memberships" do
    test "an ungraded service is never outgrown" do
      service = service!()
      pupil = pupil!(service, 3)

      roll_counts!([])

      assert services_of(pupil) == [service.id]
    end

    test "outgrowing a service moves the membership to its next service" do
      destination = graded_service!(4, 6)
      source = graded_service!(1, 3, next_service_id: destination.id)
      pupil = pupil!(source, 3)

      assert roll_counts!(["advance_persons_services_memberships_to_next_service"]) == %{
               "advance_persons_services_memberships_to_next_service" => 1
             }

      assert services_of(pupil) == [destination.id]
    end

    test "a graduate leaves a bounded service for its next service" do
      destination = service!()
      source = graded_service!(4, 6, next_service_id: destination.id)
      pupil = pupil!(source, 6)

      roll_counts!([])

      assert services_of(pupil) == [destination.id]
    end

    test "outgrowing a service with no next service drops the membership" do
      service = graded_service!(1, 3)
      pupil = pupil!(service, 3, with_family())

      assert roll_counts!(["drop_persons_services_memberships_without_next_service"]) == %{
               "drop_persons_services_memberships_without_next_service" => 1
             }

      assert services_of(pupil) == []
    end

    test "two memberships converging on one next service leave a single membership" do
      destination = graded_service!(4, 6)
      first = graded_service!(1, 3, next_service_id: destination.id)
      second = graded_service!(2, 3, next_service_id: destination.id)
      pupil = pupil!(first, 3)
      in_service!(pupil, second)

      assert roll_counts!([
               "dedupe_converging_persons_services_memberships",
               "advance_persons_services_memberships_to_next_service"
             ]) == %{
               "dedupe_converging_persons_services_memberships" => 1,
               "advance_persons_services_memberships_to_next_service" => 1
             }

      assert services_of(pupil) == [destination.id]
    end

    test "a membership whose next service the person already holds is removed" do
      destination = graded_service!(3, 6)
      source = graded_service!(1, 3, next_service_id: destination.id)
      pupil = pupil!(source, 3)
      in_service!(pupil, destination)

      assert roll_counts!([
               "dedupe_converging_persons_services_memberships",
               "advance_persons_services_memberships_to_next_service"
             ]) == %{
               "dedupe_converging_persons_services_memberships" => 1,
               "advance_persons_services_memberships_to_next_service" => 0
             }

      assert services_of(pupil) == [destination.id]
    end
  end

  describe "group memberships" do
    test "a group membership in a service the person leaves is dropped, not moved" do
      destination = graded_service!(4, 6)
      source = graded_service!(1, 3, next_service_id: destination.id)
      group = group!(source)
      group!(destination)
      pupil = pupil!(source, 3)
      in_group!(pupil, group)

      assert roll_counts!(["drop_stranded_persons_groups_memberships"]) == %{
               "drop_stranded_persons_groups_memberships" => 1
             }

      assert groups_of(pupil) == []
    end

    test "a group membership in a service the person keeps stays" do
      destination = graded_service!(4, 6)
      leaving = graded_service!(1, 3, next_service_id: destination.id)
      staying = graded_service!(1, 6)
      group = group!(staying)
      pupil = pupil!(leaving, 3)
      in_service!(pupil, staying)
      in_group!(pupil, group)

      assert roll_counts!(["drop_stranded_persons_groups_memberships"]) == %{
               "drop_stranded_persons_groups_memberships" => 0
             }

      assert groups_of(pupil) == [group.id]
    end
  end
end
