defmodule ChurchAdmin.Realtime.Supervisor do
  @moduledoc """
  Runs the broadcaster and, when `config :church_admin, ChurchAdmin.Realtime,
  start_replication_stream?: true`, the replication stream feeding it. A
  restarted broadcaster has lost its history, so the stream restarts after
  it and resets it from a new slot. The live-query helpers (statement
  capture, dependency and document caches, probe connection) and the
  registry with its run supervisor start last, so a crash in them leaves the
  broadcaster and the stream alone.
  """

  use Supervisor

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live
  alias ChurchAdmin.Realtime.Live.StatementCapture
  alias ChurchAdmin.Realtime.Live.StatementDependencies
  alias ChurchAdmin.Realtime.ReplicationStream

  def start_link(opts), do: Supervisor.start_link(__MODULE__, opts, name: __MODULE__)

  @impl Supervisor
  def init(_opts) do
    stream =
      if Application.fetch_env!(:church_admin, ChurchAdmin.Realtime)[:start_replication_stream?],
        do: [ReplicationStream],
        else: []

    live = [
      StatementCapture.Collectors,
      StatementDependencies.Cache,
      StatementDependencies.Probe,
      Live.Document.Cache,
      {Task.Supervisor, name: Live.Runs},
      Live.Registry
    ]

    Supervisor.init([Broadcaster | stream] ++ live, strategy: :rest_for_one)
  end
end
