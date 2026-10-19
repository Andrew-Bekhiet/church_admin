defmodule ChurchAdmin.Operations.StudyYearRollClassesTest do
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

  defp placed(service, years, deleted? \\ false),
    do: %{service_id: service.id, years: years, deleted?: deleted?}

  describe "classes stay cohorts [C9] [C10]" do
    test "a class inside its service's range advances one grade" do
      service = graded_service!(1, 3)
      class = class!(service, service_study_year: 1)

      assert roll_counts!(["advance_classes_study_years"]) == %{
               "advance_classes_study_years" => 1
             }

      assert class_placement(class) == placed(service, 2..2)
    end

    test "a class outgrowing its service relocates to the next service's first grade" do
      destination = graded_service!(4, 6)
      source = graded_service!(1, 3, next_service_id: destination.id)
      class = class!(source, service_study_year: 3)

      assert roll_counts!(["relocate_classes_to_next_service"]) == %{
               "relocate_classes_to_next_service" => 1
             }

      assert class_placement(class) == placed(destination, 4..4)
    end

    test "a class outgrowing into an ungraded next service is soft-deleted" do
      destination = service!()
      source = graded_service!(1, 3, next_service_id: destination.id)
      class = class!(source, service_study_year: 3)

      assert roll_counts!(["delete_classes_whose_next_service_has_no_grades"]) == %{
               "delete_classes_whose_next_service_has_no_grades" => 1
             }

      assert class_placement(class) == placed(source, 3..3, true)
    end

    test "a class outgrowing a service with no next service is left alone" do
      service = graded_service!(1, 3)
      class = class!(service, service_study_year: 3)

      roll_counts!([])

      assert class_placement(class) == placed(service, 3..3)
    end

    test "a top-grade class with no next grade is left alone" do
      destination = graded_service!(1, 3)
      source = graded_service!(4, 6, next_service_id: destination.id)
      ungraded = service!()
      leaving = class!(source, service_study_year: 6)
      staying = class!(ungraded, service_study_year: 6)

      roll_counts!([])

      assert class_placement(leaving) == placed(source, 6..6)
      assert class_placement(staying) == placed(ungraded, 6..6)
    end

    test "a soft-deleted class is skipped [E14]" do
      service = graded_service!(1, 3)
      class = class!(service, service_study_year: 1, deleted_at: deleted_at())

      assert roll_counts!(["advance_classes_study_years"]) == %{
               "advance_classes_study_years" => 0
             }

      assert class_placement(class) == placed(service, 1..1, true)
    end

    test "current behaviour: a class spanning several study years is left in place" do
      service = graded_service!(1, 6)
      class = class!(service, service_study_year: 2, service_study_year_to: 3)

      assert roll_counts!(["advance_classes_study_years"]) == %{
               "advance_classes_study_years" => 0
             }

      assert class_placement(class) == placed(service, 2..3)
    end
  end

  describe "services missing a first-grade class" do
    test "counts live graded services whose first grade no live class covers" do
      advanced_away = graded_service!(1, 3)
      class!(advanced_away, service_study_year: 1)

      covered_by_range = graded_service!(1, 3)
      class!(covered_by_range, service_study_year: 1, service_study_year_to: 2)

      covered_only_by_deleted = graded_service!(4, 6)
      class!(covered_only_by_deleted, service_study_year: 4, deleted_at: deleted_at())

      graded_service!(4, 6, deleted_at: deleted_at())
      service!()

      assert roll_counts!(["services_missing_first_grade_class"]) == %{
               "services_missing_first_grade_class" => 2
             }
    end
  end

  describe "servant scopes" do
    setup do
      %{servant: user!()}
    end

    test "a scope inside its service's range advances one grade", %{servant: servant} do
      service = graded_service!(1, 3)
      scope = grant!(servant, :service, service.id, study_year: 1)

      assert roll_counts!(["advance_servant_scopes_study_years"]) == %{
               "advance_servant_scopes_study_years" => 1
             }

      assert scope_study_year(scope) == 2
    end

    test "a scope outgrowing its service wraps to the service's first grade", %{servant: servant} do
      service = graded_service!(4, 6)
      outgrowing = grant!(servant, :service, service.id, study_year: 5)
      graduating = grant!(servant, :service, service.id, study_year: 6)

      roll_counts!([])

      assert {scope_study_year(outgrowing), scope_study_year(graduating)} == {6, 4}
    end

    test "a scope in an ungraded service advances with the ladder", %{servant: servant} do
      service = service!()
      scope = grant!(servant, :service, service.id, study_year: 3)

      roll_counts!([])

      assert scope_study_year(scope) == 4
    end

    test "a wrap with no first grade to land on leaves the scope unchanged [E11]",
         %{servant: servant} do
      service = service!()
      scope = grant!(servant, :service, service.id, study_year: 6)

      assert roll_counts!(["advance_servant_scopes_study_years", "servant_scopes_left_unchanged"]) ==
               %{
                 "advance_servant_scopes_study_years" => 0,
                 "servant_scopes_left_unchanged" => 1
               }

      assert scope_study_year(scope) == 6
    end

    test "a scope on the whole service, with no study year, is left alone",
         %{servant: servant} do
      service = graded_service!(1, 3)
      scope = grant!(servant, :service, service.id)

      assert roll_counts!(["advance_servant_scopes_study_years", "servant_scopes_left_unchanged"]) ==
               %{
                 "advance_servant_scopes_study_years" => 0,
                 "servant_scopes_left_unchanged" => 0
               }

      assert scope_study_year(scope) == nil
    end
  end
end
