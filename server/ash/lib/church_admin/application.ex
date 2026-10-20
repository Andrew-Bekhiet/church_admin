defmodule ChurchAdmin.Application do
  # See https://elixir.hexdocs.pm/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl Application
  def start(_type, _args) do
    ChurchAdmin.Auth.TokenVerifier.configured!()

    :church_admin
    |> Application.fetch_env!(:config_env)
    |> ChurchAdmin.Google.Config.ensure_allowed_in!()

    ash_domains = Application.fetch_env!(:church_admin, :ash_domains)
    oban_options = Application.fetch_env!(:church_admin, Oban)

    children =
      [
        ChurchAdminWeb.Telemetry,
        ChurchAdmin.Repo,
        {DNSCluster, query: Application.get_env(:church_admin, :dns_cluster_query) || :ignore},
        {Oban, AshOban.config(ash_domains, oban_options)},
        {Phoenix.PubSub, name: ChurchAdmin.PubSub},
        {ChurchAdmin.Accounts.InvitationAttempts.Counter, clean_period: :timer.minutes(10)},
        ChurchAdmin.Realtime.Supervisor,
        # Start a worker by calling: ChurchAdmin.Worker.start_link(arg)
        # {ChurchAdmin.Worker, arg},
        # Start to serve requests, typically the last entry
        ChurchAdmin.Auth.GoogleSigningKeys,
        ChurchAdminWeb.Endpoint
      ] ++ ChurchAdmin.Google.Credentials.child_specs(ChurchAdmin.Google.Config.credentials())

    # See https://elixir.hexdocs.pm/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChurchAdmin.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl Application
  def config_change(changed, _new, removed) do
    ChurchAdminWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
