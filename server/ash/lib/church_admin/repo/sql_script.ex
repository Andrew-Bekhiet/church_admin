defmodule ChurchAdmin.Repo.SqlScript do
  @moduledoc """
  Runs a multi-statement SQL script the way Hasura's `run_sql` did: the whole
  script is one simple-protocol query, so Postgres executes it as a single
  implicit transaction, on a fresh connection whose session settings
  (`search_path`, `set_config`) end with the script.

  Ecto's queries use the extended protocol, which accepts one statement per
  query, so scripts cannot go through `Repo.query/2`.
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
    :socket_options,
    :connect_timeout,
    :handshake_timeout
  ]

  @spec execute_file!(Ecto.Repo.t(), Path.t()) :: :ok
  def execute_file!(repo, path) do
    connection_options =
      repo.config()
      |> Keyword.take(@connection_option_keys)
      |> Keyword.put(:sync_connect, true)

    {:ok, connection} = SimpleConnection.start_link(__MODULE__, [], connection_options)

    try do
      case SimpleConnection.call(connection, {:query, File.read!(path)}, :infinity) do
        %Postgrex.Error{} = error ->
          raise RuntimeError, "#{path} failed: #{Exception.message(error)}"

        results when is_list(results) ->
          :ok
      end
    after
      GenServer.stop(connection)
    end
  end

  @impl true
  def init(_args), do: {:ok, %{from: nil}}

  @impl true
  def handle_call({:query, sql}, from, state), do: {:query, sql, %{state | from: from}}

  @impl true
  def handle_result(results_or_error, state) do
    SimpleConnection.reply(state.from, results_or_error)
    {:noreply, %{state | from: nil}}
  end

  @impl true
  def notify(_channel, _payload, _state), do: :ok
end
