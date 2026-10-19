defmodule ChurchAdmin.Repo do
  use AshPostgres.Repo,
    otp_app: :church_admin

  alias ChurchAdmin.Repo.HasuraSession

  @impl true
  def init(type, config) do
    {:ok, config} = super(type, config)
    {:ok, Keyword.put(config, :after_connect, {HasuraSession, :set_fail_closed_default, []})}
  end

  @impl true
  def installed_extensions do
    # Add extensions here, and the migration generator will install them.
    ["ash-functions"]
  end

  # Every write must run in a transaction so on_transaction_begin/1 can set
  # the actor's hasura.user before the baseline's triggers read it.
  @impl true
  def prefer_transaction?, do: true

  @impl true
  def prefer_transaction_for_atomic_updates?, do: true

  @impl true
  def on_transaction_begin(reason) do
    HasuraSession.set_for_transaction(__MODULE__, reason[:metadata][:actor])
  end

  @impl true
  def min_pg_version do
    %Version{major: 16, minor: 0, patch: 0}
  end
end
