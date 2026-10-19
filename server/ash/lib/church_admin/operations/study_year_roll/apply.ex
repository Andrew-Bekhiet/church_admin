defmodule ChurchAdmin.Operations.StudyYearRoll.Apply do
  @moduledoc """
  Writes a `Plan` through the roll's internal bulk actions, as the system
  actor, inside the caller's transaction, and returns the twelve step counts
  in the order the steps run. Each count is the number of planned rows the
  step writes; the plan was read under the roll's table locks, so every
  planned row still exists.
  """

  alias ChurchAdmin.Accounts.ScopeGrant
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Operations.StudyYearRoll.Plan
  alias ChurchAdmin.Organization.{Class, Service}
  alias ChurchAdmin.People.{GroupMembership, Person, ServiceMembership}

  require Ash.Query

  @type step_counts :: [{String.t(), non_neg_integer()}]

  @spec apply!(Plan.t()) :: step_counts()
  def apply!(%Plan{} = plan) do
    {graduating, advancing} = Enum.split_with(plan.persons, & &1.graduating?)
    leaving = Enum.group_by(plan.leaving, & &1.action)
    classes = Enum.group_by(plan.classes, & &1.action)
    {scopes_moving, scopes_unchanged} = Enum.split_with(plan.scopes, & &1.study_year_after_roll)

    [
      {"graduate_top_cohort_persons", graduate_persons!(graduating)},
      {"advance_persons_study_years", advance_persons!(advancing)},
      {"drop_persons_services_memberships_without_next_service", leave_services!(leaving[:drop])},
      {"dedupe_converging_persons_services_memberships", leave_services!(leaving[:dedupe])},
      {"advance_persons_services_memberships_to_next_service",
       move_service_memberships!(leaving[:move])},
      {"drop_stranded_persons_groups_memberships",
       leave_groups!(plan.stranded_group_memberships)},
      {"advance_classes_study_years", advance_classes!(classes[:advance])},
      {"relocate_classes_to_next_service", relocate_classes!(classes[:relocate])},
      {"delete_classes_whose_next_service_has_no_grades", retire_classes!(classes[:delete])},
      {"advance_servant_scopes_study_years", advance_scopes!(scopes_moving)},
      {"servant_scopes_left_unchanged", length(scopes_unchanged)},
      {"services_missing_first_grade_class", services_missing_first_grade_class()}
    ]
  end

  defp graduate_persons!(persons) do
    update!(Person, :id, Enum.map(persons, & &1.id), :graduate, %{})
  end

  defp advance_persons!(persons) do
    persons
    |> Enum.group_by(& &1.next_study_year, & &1.id)
    |> Enum.map(fn {next_study_year, ids} ->
      update!(Person, :id, ids, :advance_study_year, %{study_year_id: next_study_year})
    end)
    |> Enum.sum()
  end

  defp leave_services!(memberships) do
    destroy!(ServiceMembership, :rel_id, rel_ids(memberships), :leave_service)
  end

  defp move_service_memberships!(nil), do: 0

  defp move_service_memberships!(moving) do
    leave_services!(moving)

    moving
    |> Enum.map(&%{person_id: &1.person_id, service_id: &1.destination_service_id})
    |> Ash.bulk_create(ServiceMembership, :join_service, bulk_options())
    |> succeeded!()

    length(moving)
  end

  defp leave_groups!(memberships) do
    destroy!(GroupMembership, :rel_id, rel_ids(memberships), :leave_group)
  end

  defp advance_classes!(classes) do
    classes
    |> List.wrap()
    |> Enum.group_by(& &1.next_study_year, & &1.id)
    |> Enum.map(fn {next_study_year, ids} ->
      update!(Class, :id, ids, :place_cohort, %{
        service_study_year: next_study_year,
        service_study_year_to: next_study_year
      })
    end)
    |> Enum.sum()
  end

  defp relocate_classes!(classes) do
    classes
    |> List.wrap()
    |> Enum.group_by(&{&1.next_service_id, &1.next_service_first_study_year}, & &1.id)
    |> Enum.map(fn {{service_id, first_study_year}, ids} ->
      update!(Class, :id, ids, :place_cohort, %{
        service_id: service_id,
        service_study_year: first_study_year,
        service_study_year_to: first_study_year
      })
    end)
    |> Enum.sum()
  end

  defp retire_classes!(classes) do
    update!(Class, :id, Enum.map(List.wrap(classes), & &1.id), :retire_cohort, %{})
  end

  # A servant may hold one service scope per study year, and the unique index
  # is checked row by row, so the highest target goes first: a chain of
  # consecutive scopes then advances without colliding.
  defp advance_scopes!(scopes) do
    scopes
    |> Enum.group_by(& &1.study_year_after_roll, & &1.permission_id)
    |> Enum.sort_by(&elem(&1, 0), :desc)
    |> Enum.map(fn {study_year, ids} ->
      update!(ScopeGrant, :permission_id, ids, :set_service_study_year, %{
        service_study_year: study_year
      })
    end)
    |> Enum.sum()
  end

  defp services_missing_first_grade_class do
    Service
    |> Ash.Query.filter(
      is_nil(deleted_at) and not is_nil(study_year_from_id) and
        not exists(
          classes,
          is_nil(deleted_at) and service_study_year <= parent(study_year_from_id) and
            service_study_year_to >= parent(study_year_from_id)
        )
    )
    |> Ash.count!(actor: Actor.system())
  end

  defp update!(_resource, _key, [], _action, _input), do: 0

  defp update!(resource, key, ids, action, input) do
    resource
    |> Ash.Query.do_filter([{key, [in: ids]}])
    |> Ash.bulk_update(action, input, bulk_options(strategy: [:atomic, :stream]))
    |> succeeded!()

    length(ids)
  end

  defp destroy!(_resource, _key, [], _action), do: 0

  defp destroy!(resource, key, ids, action) do
    resource
    |> Ash.Query.do_filter([{key, [in: ids]}])
    |> Ash.bulk_destroy(action, %{}, bulk_options(strategy: [:atomic, :stream]))
    |> succeeded!()

    length(ids)
  end

  defp rel_ids(memberships), do: Enum.map(List.wrap(memberships), & &1.rel_id)

  defp bulk_options(extra \\ []) do
    Keyword.merge(
      [actor: Actor.system(), return_errors?: true, stop_on_error?: true, notify?: false],
      extra
    )
  end

  defp succeeded!(%Ash.BulkResult{status: :success}), do: :ok

  defp succeeded!(%Ash.BulkResult{errors: errors}),
    do: raise(Ash.Error.to_error_class(errors))
end
