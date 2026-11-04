defmodule ChurchAdminWeb.Graphql.Phase.PutResultHash do
  @moduledoc """
  Runs after the Result phase. A query response that returned data and no errors
  gets `extensions.resultHash`, the `ChurchAdmin.Realtime.Live.ResultHash` of its
  `data`. Mutations and failed or partial responses get none.
  """

  use Absinthe.Phase

  alias Absinthe.Blueprint
  alias ChurchAdmin.Realtime.Live.ResultHash

  @impl Absinthe.Phase
  def run(%Blueprint{result: %{data: %{} = data} = result} = blueprint, _options)
      when not is_map_key(result, :errors) do
    if query?(blueprint) do
      extensions =
        result |> Map.get(:extensions, %{}) |> Map.put(:resultHash, ResultHash.of(data))

      {:ok, %{blueprint | result: Map.put(result, :extensions, extensions)}}
    else
      {:ok, blueprint}
    end
  end

  def run(blueprint, _options), do: {:ok, blueprint}

  defp query?(blueprint) do
    match?(%{type: :query}, Blueprint.current_operation(blueprint))
  end
end
