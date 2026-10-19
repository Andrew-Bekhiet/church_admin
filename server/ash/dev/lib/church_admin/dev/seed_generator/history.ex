defmodule ChurchAdmin.Dev.SeedGenerator.History do
  @moduledoc """
  Pastoral history backdated over two years from the clock anchor: visits, calls,
  confessions, kodas and explicit edit-history rows, each with a stated
  `recorded_by` and time instead of the session defaults.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Attendance, Clock, Ids, Rng}

  @window_minutes 2 * 365 * 24 * 60
  @friday_weeks 104
  @visit_tables [{"families", 60}, {"persons", 25}, {"stores", 5}, {"streets", 5}, {"areas", 5}]
  @edit_tables [
    {"persons", 45},
    {"families", 25},
    {"users", 8},
    {"groups", 5},
    {"streets", 5},
    {"services", 3},
    {"classes", 3},
    {"areas", 3},
    {"stores", 3}
  ]

  @spec build(map(), map()) :: map()
  def build(spec, pools) do
    fridays = Attendance.fridays(@friday_weeks)
    confessions = day_person_pairs(spec.confession_history, pools, fridays, "confession")
    kodas = day_person_pairs(spec.kodas_history, pools, fridays, "kodas")

    %{
      visits: Enum.map(0..(spec.visit_history - 1), &visit(&1, pools)),
      calls: calls(spec.call_history, pools),
      confessions: confessions,
      kodas: kodas,
      edits: Enum.map(0..(spec.explicit_edit_history - 1), &edit(&1, pools)),
      days: Enum.uniq(Enum.map(confessions ++ kodas, & &1.day_id))
    }
  end

  defp visit(number, pools) do
    table = Rng.weighted(@visit_tables)

    %{
      visit_id: Ids.uuid("visit", number),
      table: table,
      record_id: Rng.pick(Map.fetch!(pools.record_ids, table)),
      time: minutes_ago(Rng.int(0, @window_minutes)),
      recorded_by: Rng.pick(pools.recorder_uids),
      is_father_visit: Rng.chance?(0.08)
    }
  end

  defp calls(count, pools) do
    offsets = unique_offsets(count)

    Enum.map(offsets, fn offset ->
      %{
        time: minutes_ago(offset),
        person_id: Rng.pick(pools.record_ids["persons"]),
        recorded_by: Rng.pick(pools.recorder_uids),
        user_role: "user"
      }
    end)
  end

  defp day_person_pairs(count, pools, fridays, kind) do
    Stream.repeatedly(fn -> {Rng.pick(fridays), Rng.pick(pools.record_ids["persons"])} end)
    |> Stream.uniq()
    |> Enum.take(count)
    |> Enum.sort_by(fn {day, person_id} -> {Date.to_gregorian_days(day), person_id} end)
    |> Enum.with_index()
    |> Enum.map(fn {{day, person_id}, number} ->
      %{
        id: Ids.uuid(kind, number),
        day_id: day,
        person_id: person_id,
        recorded_by: Rng.pick(pools.recorder_uids)
      }
    end)
  end

  defp edit(number, pools) do
    table = Rng.weighted(@edit_tables)

    %{
      table: table,
      record_id: Rng.pick(Map.fetch!(pools.record_ids, table)),
      time: minutes_ago(Rng.int(0, @window_minutes)),
      recorded_by: Rng.pick(pools.recorder_uids),
      user_role: "user",
      audit_id: Ids.uuid("audit", number)
    }
  end

  defp unique_offsets(count) do
    Stream.repeatedly(fn -> Rng.int(0, @window_minutes) end)
    |> Stream.uniq()
    |> Enum.take(count)
    |> Enum.sort()
  end

  defp minutes_ago(minutes), do: DateTime.add(Clock.anchor(), -minutes, :minute)
end
