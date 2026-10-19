defmodule ChurchAdmin.Calculations.PersonBirthdayTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.{DataCase, Factory}
  alias ChurchAdmin.People.Person

  require Ash.Query

  @birthdates [
    nil,
    ~D[2000-01-01],
    ~D[1999-12-31],
    ~D[2004-02-29],
    ~D[1987-03-09],
    ~D[1950-11-30],
    ~D[2015-07-04]
  ]

  setup do
    DataCase.set_system_db_session()
    persons = for birthdate <- @birthdates, do: Factory.person!(birthdate: birthdate)
    {:ok, persons: persons}
  end

  defp sql_birthday(%Person{id: id}) do
    %{rows: [[text]]} =
      Ecto.Adapters.SQL.query!(
        ChurchAdmin.Repo,
        "select public.get_person_birthday(p) from public.persons p where p.id = $1",
        [Ecto.UUID.dump!(id)]
      )

    text
  end

  defp read_ids(query) do
    query |> Ash.read!(authorize?: false, page: false) |> MapSet.new(& &1.id)
  end

  test "the calculation reproduces the SQL function for every birthdate", %{persons: persons} do
    for person <- persons do
      assert Ash.load!(person, :birthday, authorize?: false).birthday == sql_birthday(person),
             "differs for #{inspect(person.birthdate)}"
    end
  end

  test "filtering by the calculation selects the persons the SQL function selects", %{
    persons: persons
  } do
    for text <- ["01-01", "02-29", "03-%", "%-30", "13-45"] do
      expected = for p <- persons, ilike?(sql_birthday(p), text), do: p.id
      ids = Person |> Ash.Query.filter(ilike(birthday, ^text)) |> read_ids()

      assert ids == MapSet.new(expected), "differs for #{text}"
    end

    assert read_ids(Ash.Query.filter(Person, birthday == "12-31")) ==
             MapSet.new(for p <- persons, sql_birthday(p) == "12-31", do: p.id)
  end

  test "sorting by the calculation orders as the SQL function does", %{persons: persons} do
    ids = Enum.map(persons, & &1.id)

    %{rows: sql_order} =
      Ecto.Adapters.SQL.query!(
        ChurchAdmin.Repo,
        "select p.id from public.persons p order by public.get_person_birthday(p) nulls last, p.id"
      )

    ash_order =
      Person
      |> Ash.Query.sort(birthday: :asc_nils_last, id: :asc)
      |> Ash.read!(authorize?: false, page: false)
      |> Enum.map(&Ecto.UUID.dump!(&1.id))

    assert Enum.sort(Enum.map(ash_order, &Ecto.UUID.load!/1)) == Enum.sort(ids)
    assert ash_order == Enum.map(sql_order, fn [id] -> id end)
  end

  defp ilike?(nil, _pattern), do: false

  defp ilike?(text, pattern) do
    regex = pattern |> Regex.escape() |> String.replace("%", ".*")
    Regex.match?(~r/\A#{regex}\z/i, text)
  end
end
