defmodule ChurchAdmin.Attendance.MeetingAudience do
  @moduledoc "Who a meeting is for; stored as the Postgres enum `history.meeting_audience` with camelCase labels."
  use Ash.Type.Enum, values: [:only_persons, :only_servants, :persons_and_servants]

  @stored_labels %{
    only_persons: "onlyPersons",
    only_servants: "onlyServants",
    persons_and_servants: "personsAndServants"
  }
  @values_by_label Map.new(@stored_labels, fn {value, label} -> {label, value} end)

  @impl Ash.Type
  def storage_type, do: :meeting_audience

  @impl Ash.Type.Enum
  def match(label) when is_map_key(@values_by_label, label),
    do: {:ok, Map.fetch!(@values_by_label, label)}

  def match(value), do: super(value)

  @impl Ash.Type
  def dump_to_native(nil, _), do: {:ok, nil}

  def dump_to_native(value, _) when is_map_key(@stored_labels, value),
    do: {:ok, Map.fetch!(@stored_labels, value)}

  def dump_to_native(_, _), do: :error
end
