defmodule ChurchAdmin.Calculations.OutsideServiceStudyYearsTest do
  @moduledoc """
  Expected flags are the output of `persons_service_is_outside_service_study_years`
  over the same rows, captured before the function was dropped.
  """

  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Factory
  alias ChurchAdmin.People.ServiceMembership

  require Ash.Query

  # {person's study year, service from, service to, outside?}
  @cases [
    {nil, nil, nil, false},
    {nil, 2, 4, false},
    {3, nil, nil, false},
    {3, 2, 4, false},
    {2, 2, 4, false},
    {4, 2, 4, false},
    {1, 2, 4, true},
    {5, 2, 4, true},
    {3, 3, 3, false},
    {1, 3, 3, true},
    {5, 5, 5, false}
  ]

  setup do
    for order <- 1..5, do: Factory.study_year!(order)

    memberships =
      for {study_year, from, to, outside?} <- @cases do
        service = Factory.service!(study_year_from_id: from, study_year_to_id: to)
        person = Factory.person!(study_year_id: study_year)
        {{study_year, from, to, outside?}, Factory.in_service!(person, service)}
      end

    {:ok, memberships: memberships}
  end

  test "the calculation flags exactly the memberships the SQL function flagged", %{
    memberships: memberships
  } do
    for {{study_year, from, to, outside?} = case_, membership} <- memberships do
      loaded = Ash.load!(membership, :is_outside_service_study_years, authorize?: false)

      assert loaded.is_outside_service_study_years == outside?,
             "person year #{inspect(study_year)} in service #{inspect({from, to})}: #{inspect(case_)}"
    end
  end

  test "filtering by the calculation selects the flagged memberships and the others", %{
    memberships: memberships
  } do
    for outside? <- [true, false] do
      expected = for {{_, _, _, ^outside?}, m} <- memberships, do: m.rel_id

      ids =
        ServiceMembership
        |> Ash.Query.filter(is_outside_service_study_years == ^outside?)
        |> Ash.read!(authorize?: false, page: false)
        |> Enum.map(& &1.rel_id)

      assert expected != []
      assert Enum.sort(ids) == Enum.sort(expected), "differs for outside? #{outside?}"
    end
  end

  test "a soft-deleted person is judged by their study year like any other", %{
    memberships: memberships
  } do
    {_case, membership} = Enum.find(memberships, fn {{_, _, _, outside?}, _} -> outside? end)

    Ash.Seed.update!(
      Ash.get!(ChurchAdmin.People.Person, membership.person_id, authorize?: false),
      %{
        deleted_at: Factory.deleted_at()
      }
    )

    assert Ash.load!(membership, :is_outside_service_study_years, authorize?: false).is_outside_service_study_years
  end
end
