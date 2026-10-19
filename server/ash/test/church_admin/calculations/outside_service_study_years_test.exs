defmodule ChurchAdmin.Calculations.OutsideServiceStudyYearsTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.{DataCase, Factory}
  alias ChurchAdmin.People.ServiceMembership

  require Ash.Query

  # {person's study year, service from, service to}
  @cases [
    {nil, nil, nil},
    {nil, 2, 4},
    {3, nil, nil},
    {3, 2, 4},
    {2, 2, 4},
    {4, 2, 4},
    {1, 2, 4},
    {5, 2, 4},
    {3, 3, 3},
    {1, 3, 3},
    {5, 5, 5}
  ]

  setup do
    DataCase.set_system_db_session()
    for order <- 1..5, do: Factory.study_year!(order)

    memberships =
      for {study_year, from, to} <- @cases do
        service = Factory.service!(study_year_from_id: from, study_year_to_id: to)
        person = Factory.person!(study_year_id: study_year)
        {{study_year, from, to}, Factory.in_service!(person, service)}
      end

    {:ok, memberships: memberships}
  end

  defp sql_flags do
    %{rows: rows} =
      Ecto.Adapters.SQL.query!(
        ChurchAdmin.Repo,
        "select ps.rel_id, public.persons_service_is_outside_service_study_years(ps) from public.persons_services ps"
      )

    Map.new(rows, fn [rel_id, flag] -> {Ecto.UUID.load!(rel_id), flag} end)
  end

  test "the calculation reproduces the SQL function for every combination", %{
    memberships: memberships
  } do
    flags = sql_flags()

    for {case_, membership} <- memberships do
      loaded = Ash.load!(membership, :is_outside_service_study_years, authorize?: false)

      assert loaded.is_outside_service_study_years == Map.fetch!(flags, membership.rel_id),
             "differs for #{inspect(case_)}"
    end
  end

  test "both flag values occur in the cases", %{memberships: memberships} do
    flags = memberships |> Enum.map(fn {_case, m} -> sql_flags()[m.rel_id] end) |> Enum.uniq()

    assert Enum.sort(flags) == [false, true]
  end

  test "filtering by the calculation selects the memberships the SQL function flags", %{
    memberships: memberships
  } do
    flags = sql_flags()

    for outside? <- [true, false] do
      expected = for {_case, m} <- memberships, flags[m.rel_id] == outside?, do: m.rel_id

      ids =
        ServiceMembership
        |> Ash.Query.filter(is_outside_service_study_years == ^outside?)
        |> Ash.read!(authorize?: false, page: false)
        |> Enum.map(& &1.rel_id)

      assert Enum.sort(ids) == Enum.sort(expected), "differs for outside? #{outside?}"
    end
  end
end
