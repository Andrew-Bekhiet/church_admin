defmodule ChurchAdmin.Realtime.Live.BoundedTable do
  @moduledoc """
  A named ETS cache that clients can grow, so it is emptied when it reaches
  its bound. Its owner can crash and restart at any moment, and a cache is
  never worth a caller's failure: while the table is missing it reads as
  empty and drops what it is given.
  """

  @spec new(atom()) :: atom()
  def new(table), do: :ets.new(table, [:set, :public, :named_table, read_concurrency: true])

  @spec fetch(atom(), term()) :: {:ok, term()} | :error
  def fetch(table, key) do
    case :ets.lookup(table, key) do
      [{^key, value}] -> {:ok, value}
      [] -> :error
    end
  rescue
    ArgumentError -> :error
  end

  @spec put(atom(), term(), term(), pos_integer()) :: :ok
  def put(table, key, value, max_entries) do
    if :ets.info(table, :size) >= max_entries, do: :ets.delete_all_objects(table)
    :ets.insert(table, {key, value})
    :ok
  rescue
    ArgumentError -> :ok
  end
end
