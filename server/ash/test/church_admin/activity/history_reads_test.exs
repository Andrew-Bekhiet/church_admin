defmodule ChurchAdmin.Activity.HistoryReadsTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Activity.{
    ActivityDay,
    Call,
    Kodas,
    LatestCall,
    LatestConfession,
    LatestFatherVisit,
    LatestKodas,
    LatestVisit,
    Visit
  }

  alias ChurchAdmin.ActivityWorld

  setup %{world: world}, do: {:ok, world: ActivityWorld.extend!(world)}

  defp read_all(world), do: actor(world, :read_all)

  test "calls page newest first, with a total count, without repeating a row", %{world: world} do
    first =
      Call
      |> Ash.Query.sort(time: :desc)
      |> Ash.read!(actor: read_all(world), page: [limit: 5, count: true])

    assert first.count == length(ActivityWorld.person_names()) + 1
    assert length(first.results) == 5

    times = Enum.map(first.results, & &1.time)
    assert times == Enum.sort(times, {:desc, DateTime})
    assert List.first(times) == ActivityWorld.at(100)

    rest = Ash.page!(first, :next)
    refute Enum.any?(rest.results, &(&1.time in times))
    assert Enum.max(Enum.map(rest.results, & &1.time), DateTime) <= Enum.min(times, DateTime)
  end

  test "a record's visits are listed newest first", %{world: world} do
    m1 = world.records.m1.id

    visits =
      Visit
      |> Ash.Query.filter(table == "persons" and record_id == ^m1)
      |> Ash.Query.sort(time: :desc)
      |> Ash.read!(actor: read_all(world), page: false)

    assert Enum.map(visits, & &1.time) == [ActivityWorld.at(200), ActivityWorld.at(150)]
  end

  test "kodas of one day are found by the day", %{world: world} do
    [day_1, day_2] = ActivityWorld.days()

    on_day = fn day ->
      Kodas
      |> Ash.Query.filter(day_id == ^day)
      |> Ash.read!(actor: read_all(world), page: false)
      |> length()
    end

    assert on_day.(day_1) == length(ActivityWorld.person_names())
    assert on_day.(day_2) == 1
  end

  test "the latest views keep each record's newest row", %{world: world} do
    m1 = world.records.m1.id
    f_area = world.records.f_area.id
    actor = read_all(world)

    assert [call] = Ash.read!(LatestCall |> Ash.Query.filter(person_id == ^m1), actor: actor)
    assert call.time == ActivityWorld.at(100)

    assert [confession] =
             Ash.read!(LatestConfession |> Ash.Query.filter(person_id == ^m1), actor: actor)

    assert confession.time == ActivityWorld.day_2()

    assert [kodas] = Ash.read!(LatestKodas |> Ash.Query.filter(person_id == ^m1), actor: actor)
    assert kodas.time == ActivityWorld.day_2()

    assert [visit] =
             Ash.read!(
               LatestVisit |> Ash.Query.filter(table == "persons" and record_id == ^m1),
               actor: actor
             )

    assert visit.time == ActivityWorld.at(200)

    assert [family_visit] =
             Ash.read!(
               LatestVisit |> Ash.Query.filter(table == "families" and record_id == ^f_area),
               actor: actor
             )

    assert family_visit.time == ActivityWorld.at(200)

    assert [father_visit] =
             Ash.read!(LatestFatherVisit |> Ash.Query.filter(record_id == ^f_area), actor: actor)

    assert father_visit.time == ActivityWorld.at(300)
  end

  test "a history row loads its recorder, person and day, and hides itself from a reader without the person",
       %{world: world} do
    m1 = world.records.m1.id

    confession =
      ChurchAdmin.Activity.Confession
      |> Ash.Query.filter(person_id == ^m1 and day_id == ^ActivityWorld.day_1())
      |> Ash.Query.load([:user, :person, :day])
      |> Ash.read_one!(actor: actor(world, :service_open))

    assert confession.user.uid == world.recorded_by
    assert confession.person.id == m1
    assert confession.day.day == ActivityWorld.day_1()

    seen_by_area_reader =
      ChurchAdmin.Activity.Confession
      |> Ash.Query.filter(person_id == ^m1)
      |> Ash.read!(actor: actor(world, :area_read), page: false)

    assert seen_by_area_reader == []
  end

  test "an attendance day lists the confessions and kodases recorded on it", %{world: world} do
    day =
      ActivityDay
      |> Ash.Query.filter(day == ^ActivityWorld.day_2())
      |> Ash.Query.load([:confessions, :kodases])
      |> Ash.read_one!(actor: actor(world, :service_open))

    assert length(day.confessions) == 1
    assert length(day.kodases) == 1

    outside =
      ActivityDay
      |> Ash.Query.filter(day == ^ActivityWorld.day_2())
      |> Ash.Query.load(:confessions)
      |> Ash.read_one!(actor: actor(world, :area_read))

    assert outside.confessions == []
  end
end
