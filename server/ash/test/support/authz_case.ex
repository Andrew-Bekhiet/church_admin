defmodule ChurchAdmin.AuthzCase do
  @moduledoc """
  Policy tests over `ChurchAdmin.AuthzWorld`: `setup` builds the world, and
  `visible/3` and `flagged/4` answer in record names so expectation tables
  read like the permission rules.
  """

  use ExUnit.CaseTemplate

  alias ChurchAdmin.Authz.ActorLoader

  using do
    quote do
      import ChurchAdmin.AuthzCase
      require Ash.Query
    end
  end

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    {:ok, world: ChurchAdmin.AuthzWorld.build!()}
  end

  def actor(_world, :anonymous), do: nil
  def actor(world, kind), do: ActorLoader.load(Map.fetch!(world.users, kind).uid)

  @doc "Names of the world's records of `resource` the actor reads."
  def visible(world, resource, kind) do
    resource
    |> Ash.read!(actor: actor(world, kind), page: false)
    |> names(world)
  end

  @doc "Names of the records the actor reads whose boolean `field` is true."
  def flagged(world, resource, kind, field) do
    resource
    |> Ash.Query.load(field)
    |> Ash.read!(actor: actor(world, kind), page: false)
    |> Enum.filter(&(Map.fetch!(&1, field) == true))
    |> names(world)
  end

  @doc "Names of the world's records of `resource` matching a scope expression, unauthorized."
  def matching(world, resource, scope) do
    resource
    |> Ash.Query.do_filter(scope)
    |> Ash.read!(authorize?: false, page: false)
    |> names(world)
  end

  def names(records, world) do
    by_key = Map.new(world.records, fn {name, record} -> {key(record), name} end)

    records
    |> Enum.map(&Map.get(by_key, key(&1)))
    |> Enum.reject(&is_nil/1)
    |> MapSet.new()
  end

  def user_names(records, world) do
    by_uid = Map.new(world.users, fn {kind, user} -> {user.uid, kind} end)
    records |> Enum.map(&Map.get(by_uid, &1.uid)) |> Enum.reject(&is_nil/1) |> MapSet.new()
  end

  defp key(%resource{} = record),
    do: {resource, Map.take(record, Ash.Resource.Info.primary_key(resource))}
end
