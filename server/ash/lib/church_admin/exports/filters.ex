defmodule ChurchAdmin.Exports.Filters do
  @moduledoc """
  Which rows each sheet holds for a selection, as Ash filters. When several
  kinds are selected the scopes are united.

    * by area: persons, families, stores and streets of the area; services
      and classes of its persons
    * by service: its persons, classes and groups; the families, streets and
      areas of its persons
    * by class: its persons; the families, streets, areas, groups and services
      they reach
    * by group: its persons; the streets, areas, classes and services they
      reach (families only when areas, services or classes are selected too)

  Rows reached through persons only count the persons that are not deleted.
  """

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine, only: [any_of: 1, unless_empty: 2]

  alias ChurchAdmin.Exports.Selection

  @spec for_tables(Selection.t()) :: [{String.t(), Ash.Expr.t()}]
  def for_tables(%Selection{} = selection) do
    reached = persons_reached(selection)

    [
      {"persons", persons(reached), true},
      {"families", families(selection, reached),
       selects_any?(selection, [:areas, :services, :classes])},
      {"stores", stores(selection), selects_any?(selection, [:areas])},
      {"streets", streets(selection, reached), true},
      {"areas", areas(selection, reached), true},
      {"classes", classes(selection, reached), true},
      {"groups", groups(selection, reached),
       selects_any?(selection, [:services, :classes, :groups])},
      {"services", services(selection, reached), true}
    ]
    |> Enum.filter(fn {_table, _filter, included?} -> included? end)
    |> Enum.map(fn {table, filter, _included?} -> {table, filter} end)
  end

  defp persons_reached(selection) do
    %{
      areas:
        unless_empty(selection.areas_ids, fn ids -> expr(exists(address, area_id in ^ids)) end),
      services:
        unless_empty(selection.services_ids, fn ids ->
          expr(exists(service_memberships, service_id in ^ids))
        end),
      classes:
        unless_empty(selection.classes_ids, fn ids ->
          expr(exists(class_memberships, class_id in ^ids))
        end),
      groups:
        unless_empty(selection.groups_ids, fn ids ->
          expr(exists(group_memberships, group_id in ^ids))
        end)
    }
  end

  defp persons(reached),
    do: any_of([reached.areas, reached.services, reached.classes, reached.groups])

  defp families(selection, reached) do
    reached_people = reached_without_areas(reached)

    any_of([
      unless_empty(selection.areas_ids, fn ids -> expr(exists(address, area_id in ^ids)) end)
      | Enum.map(reached_people, fn person ->
          expr(exists(persons, ^live(person)))
        end)
    ])
  end

  defp stores(selection) do
    unless_empty(selection.areas_ids, fn ids -> expr(exists(address, area_id in ^ids)) end)
  end

  defp streets(selection, reached) do
    reached_people = reached_without_areas(reached)

    any_of([
      unless_empty(selection.areas_ids, fn ids -> expr(exists(area_streets, area_id in ^ids)) end)
      | Enum.map(reached_people, fn person ->
          expr(exists(area_streets.area.addresses.family.persons, ^live(person)))
        end)
    ])
  end

  defp areas(selection, reached) do
    reached_people = reached_without_areas(reached)

    any_of([
      unless_empty(selection.areas_ids, fn ids -> expr(id in ^ids) end)
      | Enum.map(reached_people, fn person ->
          expr(exists(addresses.family.persons, ^live(person)))
        end)
    ])
  end

  defp classes(selection, reached) do
    any_of([
      with_persons(reached.areas),
      unless_empty(selection.services_ids, fn ids -> expr(service_id in ^ids) end),
      unless_empty(selection.classes_ids, fn ids -> expr(id in ^ids) end),
      with_persons(reached.groups)
    ])
  end

  defp groups(selection, reached) do
    any_of([
      unless_empty(selection.services_ids, fn ids -> expr(service_id in ^ids) end),
      with_persons(reached.classes),
      unless_empty(selection.groups_ids, fn ids -> expr(id in ^ids) end)
    ])
  end

  defp services(selection, reached) do
    any_of([
      with_persons(reached.areas),
      unless_empty(selection.services_ids, fn ids -> expr(id in ^ids) end),
      with_persons(reached.classes),
      with_persons(reached.groups)
    ])
  end

  defp reached_without_areas(reached),
    do: Enum.reject([reached.services, reached.classes, reached.groups], &(&1 == false))

  defp with_persons(false), do: false
  defp with_persons(person), do: expr(exists(persons, ^live(person)))

  defp live(person), do: expr(is_nil(deleted_at) and ^person)

  defp selects_any?(selection, kinds) do
    Enum.any?(kinds, fn
      :areas -> selection.areas_ids != []
      :services -> selection.services_ids != []
      :classes -> selection.classes_ids != []
      :groups -> selection.groups_ids != []
    end)
  end
end
