defmodule ChurchAdmin.Realtime.Live.Document.Cache do
  @moduledoc """
  Owns the ETS table that maps a document's hash to its parsed form. The
  table is emptied when it reaches `@max_entries`, because a client can
  register as many distinct documents as it likes.
  """

  use GenServer

  @table __MODULE__
  @max_entries 1_000

  def start_link(_opts), do: GenServer.start_link(__MODULE__, nil, name: __MODULE__)

  @spec fetch(String.t()) :: {:ok, Absinthe.Language.Document.t()} | :error
  def fetch(hash) do
    case :ets.lookup(@table, hash) do
      [{^hash, parsed}] -> {:ok, parsed}
      [] -> :error
    end
  end

  @spec put(String.t(), Absinthe.Language.Document.t()) :: true
  def put(hash, parsed) do
    if :ets.info(@table, :size) >= @max_entries, do: :ets.delete_all_objects(@table)
    :ets.insert(@table, {hash, parsed})
  end

  @impl GenServer
  def init(nil) do
    :ets.new(@table, [:set, :public, :named_table, read_concurrency: true])
    {:ok, nil}
  end
end
