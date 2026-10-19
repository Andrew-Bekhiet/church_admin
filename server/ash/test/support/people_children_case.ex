defmodule ChurchAdmin.PeopleChildrenCase do
  @moduledoc """
  Policy tests over `ChurchAdmin.PeopleChildrenWorld`. Uses the helpers of
  `ChurchAdmin.AuthzCase`; `visible_ids/4` answers for the views, whose rows
  carry the id of the contact they show.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      import ChurchAdmin.AuthzCase
      import ChurchAdmin.PeopleChildrenCase
      require Ash.Query
    end
  end

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    {:ok, world: ChurchAdmin.PeopleChildrenWorld.build!()}
  end

  @doc "Names of the world's contacts a view over `contacts` shows the actor."
  def visible_ids(world, resource, kind) do
    by_id =
      for {name, %ChurchAdmin.People.Contact{id: id}} <- world.records, into: %{}, do: {id, name}

    resource
    |> Ash.read!(actor: ChurchAdmin.AuthzCase.actor(world, kind), page: false)
    |> Enum.map(&Map.fetch!(by_id, &1.id))
    |> MapSet.new()
  end
end
