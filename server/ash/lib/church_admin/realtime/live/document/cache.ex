defmodule ChurchAdmin.Realtime.Live.Document.Cache do
  @moduledoc """
  Owns the ETS table that maps a document's hash to its parsed form. The
  table is emptied when it reaches `@max_entries`, because a client can
  register as many distinct documents as it likes.
  """

  use GenServer

  alias ChurchAdmin.Realtime.Live.BoundedTable

  @table __MODULE__
  @max_entries 1_000

  def start_link(_opts), do: GenServer.start_link(__MODULE__, nil, name: __MODULE__)

  @spec fetch(String.t()) :: {:ok, Absinthe.Language.Document.t()} | :error
  def fetch(hash), do: BoundedTable.fetch(@table, hash)

  @spec put(String.t(), Absinthe.Language.Document.t()) :: :ok
  def put(hash, parsed), do: BoundedTable.put(@table, hash, parsed, @max_entries)

  @impl GenServer
  def init(nil) do
    BoundedTable.new(@table)
    {:ok, nil}
  end
end
