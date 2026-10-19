defmodule ChurchAdmin.Realtime.Supervisor do
  @moduledoc """
  Runs the broadcaster and, when `config :church_admin, ChurchAdmin.Realtime,
  start_replication_stream?: true`, the replication stream feeding it. A
  restarted broadcaster has lost its history, so the stream restarts after
  it and resets it from a new slot.
  """

  use Supervisor

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.ReplicationStream

  def start_link(opts), do: Supervisor.start_link(__MODULE__, opts, name: __MODULE__)

  @impl true
  def init(_opts) do
    stream =
      if Application.fetch_env!(:church_admin, ChurchAdmin.Realtime)[:start_replication_stream?],
        do: [ReplicationStream],
        else: []

    Supervisor.init([Broadcaster | stream], strategy: :rest_for_one)
  end
end
