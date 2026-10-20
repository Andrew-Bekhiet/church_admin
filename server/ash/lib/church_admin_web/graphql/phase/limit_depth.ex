defmodule ChurchAdminWeb.Graphql.Phase.LimitDepth do
  @moduledoc """
  Rejects an operation whose selections nest deeper than `:max_depth`, before
  any validation or resolution work. A root field is at depth 1; a fragment
  spread counts as the fields it selects, and introspection fields
  (`__schema`, `__type`) are exempt because tooling nests them deeply by
  design.
  """

  use Absinthe.Phase

  alias Absinthe.{Blueprint, Phase}
  alias Absinthe.Blueprint.Document.{Field, Fragment}

  @impl Absinthe.Phase
  def run(blueprint, options) do
    max_depth = Keyword.fetch!(options, :max_depth)

    case Blueprint.current_operation(blueprint) do
      nil -> {:ok, blueprint}
      operation -> check(blueprint, operation, max_depth, options)
    end
  end

  @spec depth(Blueprint.t()) :: non_neg_integer()
  def depth(blueprint) do
    case Blueprint.current_operation(blueprint) do
      nil -> 0
      operation -> operation_depth(blueprint, operation)
    end
  end

  defp operation_depth(blueprint, operation) do
    fragments = Map.new(blueprint.fragments, &{&1.name, &1})
    {depth, _fragment_depths} = selections_depth(operation.selections, {fragments, %{}}, [])
    depth
  end

  defp check(blueprint, operation, max_depth, options) do
    depth = operation_depth(blueprint, operation)

    if depth > max_depth do
      reject(blueprint, operation, depth, max_depth, options)
    else
      {:ok, blueprint}
    end
  end

  defp reject(blueprint, operation, depth, max_depth, options) do
    error = %Phase.Error{
      phase: __MODULE__,
      message:
        "#{describe(operation)} is too deep: depth is #{depth} and maximum is #{max_depth}",
      locations: [operation.source_location]
    }

    blueprint = put_in(blueprint.execution.validation_errors, [error])

    case Map.new(options) do
      %{jump_phases: true, result_phase: result_phase} -> {:jump, blueprint, result_phase}
      _no_jumping -> {:error, blueprint}
    end
  end

  defp describe(%{name: nil}), do: "Operation"
  defp describe(%{name: name}), do: "Operation #{name}"

  defp selections_depth(selections, {fragments, depths}, spread_path) do
    Enum.reduce(selections, {0, depths}, fn selection, {deepest, depths} ->
      {depth, depths} = selection_depth(selection, {fragments, depths}, spread_path)
      {max(deepest, depth), depths}
    end)
  end

  defp selection_depth(%Field{name: "__" <> _introspection}, {_, depths}, _spread_path),
    do: {0, depths}

  defp selection_depth(%Field{selections: selections}, memo, spread_path) do
    {depth, depths} = selections_depth(selections, memo, spread_path)
    {1 + depth, depths}
  end

  defp selection_depth(%Fragment.Inline{selections: selections}, memo, spread_path),
    do: selections_depth(selections, memo, spread_path)

  defp selection_depth(%Fragment.Spread{name: name}, {fragments, depths} = memo, spread_path) do
    case {Map.fetch(depths, name), Map.fetch(fragments, name), name in spread_path} do
      {{:ok, depth}, _fragment, _cyclic} ->
        {depth, depths}

      {:error, {:ok, fragment}, false} ->
        {depth, depths} = selections_depth(fragment.selections, memo, [name | spread_path])
        {depth, Map.put(depths, name, depth)}

      _unknown_or_cyclic ->
        {0, depths}
    end
  end
end
