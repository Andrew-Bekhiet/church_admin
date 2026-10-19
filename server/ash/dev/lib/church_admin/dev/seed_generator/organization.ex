defmodule ChurchAdmin.Dev.SeedGenerator.Organization do
  @moduledoc """
  Groups, classes and meetings layered on the seeded services: classes that span
  one year or several, with and without a gender; meetings for a whole service,
  a year, a gender, both, a group, each audience, and one that ends up archived.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Clock, Ids, Services}

  @group_services ~w(ebtedaey e3dady thanawy kg gam3a_wa_khrigeen edad_khodam gam3a)a
  @class_services ~w(ebtedaey e3dady thanawy kg ebtedaey e3dady thanawy gam3a)a
  @meeting_services ~w(ebtedaey e3dady thanawy kg gam3a_wa_khrigeen edad_khodam)a
  @unbounded_study_years {13, 17}
  @archived_meeting_position 2
  @meeting_pattern_length 8

  @spec groups(map(), String.t()) :: [map()]
  def groups(spec, deleted_by) do
    Enum.map(0..(spec.groups - 1), fn index ->
      slug = Enum.at(@group_services, rem(index, length(@group_services)))
      deleted? = index == spec.groups - 1

      %{
        id: Ids.uuid("group", index),
        index: index,
        service_slug: slug,
        row: %{
          id: Ids.uuid("group", index),
          name:
            "مجموعة #{Enum.at(~w(المرنمين الكشافة الشباب الخدام الأمهات الرياضة المسرح الإيبارشية), rem(index, 8))} #{div(index, 8) + 1}",
          service_id: Ids.seed_service(slug),
          validity: if(rem(index, 2) == 1, do: "[2026-09-01,2027-07-01)"),
          deleted_at: if(deleted?, do: Clock.days_ago(20)),
          deleted_by: if(deleted?, do: deleted_by)
        }
      }
    end)
  end

  @spec classes(map(), String.t()) :: [map()]
  def classes(spec, deleted_by) do
    Enum.map(0..(spec.generated_classes - 1), fn index ->
      service = Services.fetch!(Enum.at(@class_services, rem(index, length(@class_services))))
      {low, high} = service.range || @unbounded_study_years
      span = high - low + 1
      single = low + rem(index, span)
      deleted? = index == spec.generated_classes - 1

      {from, to, gender} =
        case rem(index, 3) do
          0 -> {single, single, nil}
          1 -> {low, high, nil}
          2 -> {single, single, rem(index, 2) == 0}
        end

      %{
        id: Ids.uuid("class", index),
        name: "فصل #{index + 1}",
        service_id: service.id,
        service_study_year: from,
        service_study_year_to: to,
        service_gender: gender,
        deleted_at: if(deleted?, do: Clock.days_ago(10)),
        deleted_by: if(deleted?, do: deleted_by)
      }
    end)
  end

  @spec meetings(map(), [map()]) :: %{
          meetings: [map()],
          seed_meetings: [map()],
          group_default_meetings: [{String.t(), String.t()}]
        }
  def meetings(spec, groups) do
    generated =
      Enum.map(0..(spec.generated_meetings - 1), fn position ->
        meeting(position, groups)
      end)

    seed_meetings =
      for service <- Services.all(), service.default_meeting_id != nil do
        %{
          id: service.default_meeting_id,
          service_slug: service.slug,
          service_id: service.id,
          group_id: nil,
          study_year: nil,
          gender: nil,
          audience: "personsAndServants",
          archived?: false
        }
      end

    default_meetings =
      generated
      |> Enum.filter(&(&1.group_id != nil and not &1.archived?))
      |> Enum.uniq_by(& &1.group_id)
      |> Enum.map(&{&1.group_id, &1.id})

    %{meetings: generated, seed_meetings: seed_meetings, group_default_meetings: default_meetings}
  end

  defp meeting(position, groups) do
    slug = Enum.at(@meeting_services, rem(position, length(@meeting_services)))
    service = Services.fetch!(slug)
    group = Enum.at(groups, rem(position, length(groups)))
    {low, high} = service.range || @unbounded_study_years
    study_year = low + rem(position, high - low + 1)
    gender = rem(position, 2) == 0

    {scope, audience} =
      case rem(position, @meeting_pattern_length) do
        0 -> {%{service: slug}, "personsAndServants"}
        1 -> {%{service: slug, study_year: study_year}, "personsAndServants"}
        2 -> {%{service: slug, gender: gender}, "onlyPersons"}
        3 -> {%{service: slug, study_year: study_year, gender: gender}, "personsAndServants"}
        4 -> {%{group: group}, "personsAndServants"}
        5 -> {%{group: group}, "onlyPersons"}
        6 -> {%{service: slug}, "onlyServants"}
        7 -> {%{service: slug}, "onlyPersons"}
      end

    id = Ids.uuid("meeting", position)
    group_id = scope[:group] && scope.group.id
    service_id = if scope[:service], do: service.id

    %{
      id: id,
      position: position,
      service_slug: scope[:service],
      service_id: service_id,
      group_id: group_id,
      group_service_slug: scope[:group] && scope.group.service_slug,
      study_year: scope[:study_year],
      gender: scope[:gender],
      audience: audience,
      archived?: position == @archived_meeting_position,
      row: %{
        id: id,
        name: "اجتماع #{position + 1}",
        service_id: service_id,
        service_study_year: scope[:study_year],
        service_gender: scope[:gender],
        group_id: group_id,
        audience: audience,
        is_archived: false,
        show_kodas_checkbox: rem(position, 4) != 3
      }
    }
  end
end
