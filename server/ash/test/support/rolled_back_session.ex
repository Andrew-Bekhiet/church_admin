defmodule ChurchAdmin.RolledBackSession do
  @moduledoc """
  A dedicated connection that opens a transaction, runs scripts and queries in
  it, and always rolls back. It lets a test load a multi-statement seed script
  (which the extended protocol rejects) without committing anything or touching
  the SQL sandbox.

  Query results come back as text, as the simple protocol returns them.
  """

  @behaviour Postgrex.SimpleConnection

  alias Postgrex.SimpleConnection

  @connection_option_keys [
    :hostname,
    :port,
    :socket,
    :socket_dir,
    :username,
    :password,
    :database,
    :parameters,
    :ssl,
    :connect_timeout,
    :handshake_timeout
  ]

  @spec within_rolled_back_transaction(Ecto.Repo.t(), (pid() -> result)) :: result
        when result: term()
  def within_rolled_back_transaction(repo, fun) do
    options =
      repo.config() |> Keyword.take(@connection_option_keys) |> Keyword.put(:sync_connect, true)

    {:ok, connection} = SimpleConnection.start_link(__MODULE__, [], options)

    try do
      run!(connection, "BEGIN")
      fun.(connection)
    after
      SimpleConnection.call(connection, {:query, "ROLLBACK"}, :infinity)
      GenServer.stop(connection)
    end
  end

  @spec run!(pid(), String.t()) :: [Postgrex.Result.t()]
  def run!(connection, sql) do
    case SimpleConnection.call(connection, {:query, sql}, :infinity) do
      %Postgrex.Error{} = error -> raise Exception.message(error)
      results -> results
    end
  end

  @spec rows!(pid(), String.t()) :: [[String.t() | nil]]
  def rows!(connection, sql), do: connection |> run!(sql) |> List.last() |> Map.fetch!(:rows)

  @spec count!(pid(), String.t()) :: non_neg_integer()
  def count!(connection, sql) do
    [[count]] = rows!(connection, sql)
    String.to_integer(count)
  end

  @impl Postgrex.SimpleConnection
  def init(_args), do: {:ok, %{from: nil}}

  @impl Postgrex.SimpleConnection
  def handle_call({:query, sql}, from, state), do: {:query, sql, %{state | from: from}}

  @impl Postgrex.SimpleConnection
  def handle_result(results_or_error, state) do
    SimpleConnection.reply(state.from, results_or_error)
    {:noreply, %{state | from: nil}}
  end

  @impl Postgrex.SimpleConnection
  def notify(_channel, _payload, _state), do: :ok
end
