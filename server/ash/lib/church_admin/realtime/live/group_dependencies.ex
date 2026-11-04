defmodule ChurchAdmin.Realtime.Live.GroupDependencies do
  @moduledoc """
  What a group's result depends on: the union of what its statements read,
  or `:everything` when Postgres could not tell for one of them, a function
  that is not immutable being the usual reason. A group that depends on
  everything cannot react to time passing alone.
  """

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.StatementDependencies

  @type t :: :everything | StatementDependencies.dependencies()

  @spec of_statements([String.t()]) :: t()
  def of_statements(statements) do
    statements
    |> Enum.uniq()
    |> Enum.reduce_while(%{}, fn sql, dependencies ->
      case StatementDependencies.for_sql(sql) do
        {:ok, read} -> {:cont, merge(dependencies, read)}
        {:error, _reason} -> {:halt, :everything}
      end
    end)
  end

  @spec merge(t(), t()) :: t()
  def merge(:everything, _other), do: :everything
  def merge(_other, :everything), do: :everything

  def merge(left, right) do
    Map.merge(left, right, fn
      _relation, :all, _columns -> :all
      _relation, _columns, :all -> :all
      _relation, left_columns, right_columns -> MapSet.union(left_columns, right_columns)
    end)
  end

  @spec touched?(t(), [Broadcaster.touched_row()]) :: boolean()
  def touched?(dependencies, rows), do: Enum.any?(rows, &touches?(dependencies, &1))

  defp touches?(:everything, %{columns: columns}), do: any_column?(columns)

  defp touches?(dependencies, %{relation: relation, columns: columns}) do
    case dependencies do
      %{^relation => read} -> reads_any?(read, columns)
      _not_read -> false
    end
  end

  defp reads_any?(:all, columns), do: any_column?(columns)
  defp reads_any?(_read, :all), do: true
  defp reads_any?(read, columns), do: not MapSet.disjoint?(read, columns)

  defp any_column?(:all), do: true
  defp any_column?(columns), do: MapSet.size(columns) > 0
end
