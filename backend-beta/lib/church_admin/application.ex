defmodule ChurchAdmin.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ChurchAdminWeb.Telemetry,
      ChurchAdmin.Repo,
      {DNSCluster, query: Application.get_env(:church_admin, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ChurchAdmin.PubSub},
      # Start a worker by calling: ChurchAdmin.Worker.start_link(arg)
      # {ChurchAdmin.Worker, arg},
      # Start to serve requests, typically the last entry
      ChurchAdminWeb.Endpoint
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
