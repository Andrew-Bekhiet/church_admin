defmodule ChurchAdmin.Dev.SeedGenerator.Rng do
  @moduledoc """
  Thin wrappers over `:rand`, seeded once per generation so a run is a pure
  function of its scale.
  """

  @spec seed() :: :ok
  def seed do
    :rand.seed(:exsss, {266, 0, 0})
    :ok
  end

  @spec int(integer(), integer()) :: integer()
  def int(low, high), do: low + :rand.uniform(high - low + 1) - 1

  @spec chance?(float()) :: boolean()
  def chance?(probability), do: :rand.uniform() < probability

  @spec pick([term(), ...]) :: term()
  def pick(list), do: Enum.at(list, :rand.uniform(length(list)) - 1)

  @spec weighted([{term(), pos_integer()}, ...]) :: term()
  def weighted(options) do
    total = options |> Enum.map(&elem(&1, 1)) |> Enum.sum()
    choose(options, :rand.uniform(total))
  end

  defp choose([{value, weight} | rest], remaining) do
    if remaining <= weight, do: value, else: choose(rest, remaining - weight)
  end
end
