defmodule ChurchAdmin.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  alias ChurchAdminWeb.{Plugs, Endpoint, Telemetry}

  @impl true
  def start(_type, _args) do
    children = [
      Telemetry,
      ChurchAdmin.Repo,
      {DNSCluster, query: Application.get_env(:church_admin, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ChurchAdmin.PubSub},
      {Plugs.Auth.FirebaseJWTStrategy, time_interval: 2_000},
      # Start a worker by calling: ChurchAdmin.Worker.start_link(arg)
      # {ChurchAdmin.Worker, arg},
      # Start to serve requests, typically the last entry
      Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChurchAdmin.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ChurchAdminWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
