defmodule ChurchAdmin.AttendanceCase do
  @moduledoc """
  Policy tests over `ChurchAdmin.AttendanceWorld`: the `ChurchAdmin.AuthzCase`
  helpers, plus `roster_rows/1` and `day_meetings/1` to name what a read returns.
  """

  use ExUnit.CaseTemplate

  alias ChurchAdmin.Attendance.RosterEntry

  using do
    quote do
      import ChurchAdmin.AuthzCase
      import ChurchAdmin.AttendanceCase
      require Ash.Query
    end
  end

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    {:ok, world: ChurchAdmin.AttendanceWorld.build!()}
  end

  @doc "`{meeting, person, as_servant}` names of roster entries."
  def roster_rows(entries, world) do
    meetings = names_by_id(world, ChurchAdmin.Attendance.Meeting)
    persons = names_by_id(world, ChurchAdmin.People.Person)

    MapSet.new(entries, fn %RosterEntry{} = entry ->
      {Map.fetch!(meetings, entry.meeting_id), Map.fetch!(persons, entry.person_id),
       entry.as_servant}
    end)
  end

  @doc "The names of the meetings the days belong to."
  def day_meetings(days, world) do
    meetings = names_by_id(world, ChurchAdmin.Attendance.Meeting)
    MapSet.new(days, &Map.fetch!(meetings, &1.meeting_id))
  end

  defp names_by_id(world, resource) do
    for {name, %^resource{id: id}} <- world.records, into: %{}, do: {id, name}
  end
end
