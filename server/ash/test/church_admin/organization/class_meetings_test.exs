defmodule ChurchAdmin.Organization.ClassMeetingsTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Factory

  setup do
    for order <- 1..4, do: Factory.study_year!(order)

    service = Factory.service!()
    other_service = Factory.service!()

    class =
      Factory.class!(service,
        service_study_year: 1,
        service_study_year_to: 3,
        service_gender: true
      )

    meeting = fn service, year, gender ->
      Factory.meeting!(service_id: service.id, service_study_year: year, service_gender: gender)
    end

    {:ok, service: service, other_service: other_service, class: class, meeting: meeting}
  end

  defp meetings_of(class) do
    class
    |> Ash.load!(:meetings, authorize?: false)
    |> Map.fetch!(:meetings)
    |> MapSet.new(& &1.id)
  end

  test "a class shows the meetings of its service for any year in its range and its gender",
       %{class: class, service: service, meeting: meeting} do
    shown = [
      meeting.(service, 1, true),
      meeting.(service, 2, true),
      meeting.(service, 3, true),
      meeting.(service, nil, true),
      meeting.(service, 1, nil),
      meeting.(service, nil, nil)
    ]

    assert meetings_of(class) == MapSet.new(shown, & &1.id)
  end

  test "a class hides the meetings outside its years, gender or service",
       %{class: class, service: service, other_service: other_service, meeting: meeting} do
    meeting.(service, 4, true)
    meeting.(service, 2, false)
    meeting.(other_service, 2, true)
    meeting.(other_service, nil, nil)

    assert meetings_of(class) == MapSet.new()
  end

  test "a class without a gender shows the meetings of either gender",
       %{service: service, meeting: meeting} do
    class = Factory.class!(service, service_study_year: 2, service_study_year_to: 2)

    shown = [meeting.(service, 2, true), meeting.(service, 2, false), meeting.(service, 2, nil)]
    meeting.(service, 3, true)

    assert meetings_of(class) == MapSet.new(shown, & &1.id)
  end

  test "a meeting of a group is shown on no class", %{class: class, service: service} do
    group = Factory.group!(service)
    Factory.meeting!(group_id: group.id)

    assert meetings_of(class) == MapSet.new()
  end
end
