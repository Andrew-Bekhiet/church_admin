defmodule ChurchAdmin.Calculations.PersonBirthdayTest do
  @moduledoc """
  Expected texts are the output of `get_person_birthday` over the same dates,
  captured before the function was dropped.
  """

  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.{DataCase, Factory}
  alias ChurchAdmin.People.Person

  require Ash.Query

  @birthdays [
    {nil, nil},
    {~D[2000-01-01], "01-01"},
    {~D[1999-12-31], "12-31"},
    {~D[2004-02-29], "02-29"},
    {~D[1987-03-09], "03-09"},
    {~D[1950-11-30], "11-30"},
    {~D[2015-07-04], "07-04"}
  ]

  setup do
    DataCase.set_system_db_session()

    persons =
      for {birthdate, expected} <- @birthdays,
          do: {expected, Factory.person!(birthdate: birthdate)}

    {:ok, persons: persons}
  end

  defp ids_read(query) do
    query |> Ash.read!(authorize?: false, page: false) |> MapSet.new(& &1.id)
  end

  defp ids_of(persons, birthdays) do
    for {birthday, person} <- persons, birthday in birthdays, into: MapSet.new(), do: person.id
  end

  test "the calculation reads as month and day", %{persons: persons} do
    for {expected, person} <- persons do
      assert Ash.load!(person, :birthday, authorize?: false).birthday == expected
    end
  end

  test "equality finds the persons born on a day, whatever the year", %{persons: persons} do
    assert ids_read(Ash.Query.filter(Person, birthday == "02-29")) == ids_of(persons, ["02-29"])
    assert ids_read(Ash.Query.filter(Person, birthday == "13-45")) == MapSet.new()
  end

  test "ilike finds the persons born in a month or on the same day of any month", %{
    persons: persons
  } do
    assert ids_read(Ash.Query.filter(Person, ilike(birthday, "03-%"))) ==
             ids_of(persons, ["03-09"])

    assert ids_read(Ash.Query.filter(Person, ilike(birthday, "%-30"))) ==
             ids_of(persons, ["11-30"])
  end

  test "sorting by the calculation orders by month and day, unknown birthdays last", %{
    persons: persons
  } do
    ids = Enum.map(persons, fn {_, person} -> person.id end)

    sorted =
      Person
      |> Ash.Query.filter(id in ^ids)
      |> Ash.Query.sort(birthday: :asc_nils_last)
      |> Ash.Query.load(:birthday)
      |> Ash.read!(authorize?: false, page: false)

    assert Enum.map(sorted, & &1.birthday) == [
             "01-01",
             "02-29",
             "03-09",
             "07-04",
             "11-30",
             "12-31",
             nil
           ]
  end
end
