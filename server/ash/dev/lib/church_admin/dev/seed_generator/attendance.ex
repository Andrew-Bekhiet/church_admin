defmodule ChurchAdmin.Dev.SeedGenerator.Attendance do
  @moduledoc """
  Weekly attendance for every meeting, mirroring who the baseline insert guard
  admits: group members or service members matching the meeting's year and
  gender as persons, and persons linked to a user with an admin grant on the
  meeting's scope as servants.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Clock, Ids, Rng}

  @meeting_hour 17

  @type t :: %{rows: [map()], days: [Date.t()]}

  @spec build(map(), map()) :: t()
  def build(spec, context) do
    meetings = context.meetings ++ context.seed_meetings
    eligibility = Enum.map(meetings, &{&1, eligible(&1, context)})
    fridays = fridays(spec.attendance_weeks)

    candidates =
      for friday <- fridays, {meeting, entries} <- eligibility, entry <- entries do
        {friday, meeting.id, entry}
      end

    if length(candidates) < spec.attendance_history do
      raise "only #{length(candidates)} attendance records are possible, #{spec.attendance_history} wanted"
    end

    rows =
      candidates
      |> Enum.shuffle()
      |> Enum.take(spec.attendance_history)
      |> Enum.sort_by(fn {friday, meeting_id, entry} ->
        {Date.to_gregorian_days(friday), meeting_id, entry}
      end)
      |> Enum.with_index()
      |> Enum.map(&row(&1, context.recorder_uids))

    %{rows: rows, days: fridays}
  end

  @spec fridays(pos_integer()) :: [Date.t()]
  def fridays(count) do
    today = Clock.today()
    last = Date.add(today, -rem(Date.day_of_week(today) - 5 + 7, 7))
    for week <- (count - 1)..0//-1, do: Date.add(last, -7 * week)
  end

  defp eligible(meeting, context) do
    persons =
      if meeting.group_id,
        do: Map.get(context.group_members, meeting.group_id, []),
        else:
          context.service_members
          |> Map.get(meeting.service_slug, [])
          |> Enum.filter(&matches_meeting?(&1, meeting))

    as_persons = Enum.map(persons, &{&1.id, false})
    as_servants = for id <- servant_ids(meeting, context), do: {id, true}

    case meeting.audience do
      "onlyServants" -> as_servants
      "onlyPersons" -> as_persons
      "personsAndServants" -> as_persons ++ as_servants
    end
  end

  defp matches_meeting?(person, meeting) do
    (meeting.study_year == nil or person.study_year == meeting.study_year) and
      (meeting.gender == nil or person.male? == meeting.gender)
  end

  defp servant_ids(meeting, context) do
    context.admin_on
    |> Enum.filter(&grant_covers?(&1, meeting))
    |> Enum.flat_map(fn grant ->
      context.person_id_by_uid |> Map.get(grant.uid) |> List.wrap()
    end)
    |> Enum.uniq()
    |> Enum.sort()
  end

  defp grant_covers?(grant, %{group_id: group_id}) when group_id != nil,
    do: Map.get(grant, :admin_on_group) == group_id

  defp grant_covers?(grant, meeting) do
    Map.get(grant, :admin_on_service) == meeting.service_id and
      compatible?(Map.get(grant, :service_study_year), meeting.study_year) and
      compatible?(Map.get(grant, :service_gender), meeting.gender)
  end

  defp compatible?(grant_value, meeting_value),
    do: grant_value == nil or meeting_value == nil or grant_value == meeting_value

  defp row({{friday, meeting_id, {person_id, as_servant}}, number}, recorder_uids) do
    minute = rem(number, 50)

    %{
      id: Ids.uuid("attendance", number),
      meeting_id: meeting_id,
      person_id: person_id,
      datetime: DateTime.new!(friday, Time.new!(@meeting_hour, minute, 0), "Etc/UTC"),
      as_servant: as_servant,
      recorded_by: Enum.at(recorder_uids, Rng.int(0, length(recorder_uids) - 1))
    }
  end
end
