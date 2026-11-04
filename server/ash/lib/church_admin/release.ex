defmodule ChurchAdmin.Release do
  @moduledoc """
  Operator tasks for a release, run with
  `bin/church_admin eval 'ChurchAdmin.Release.bootstrap_admin("admin@example.com")'`
  or, from a checkout, `mix church_admin.bootstrap_admin --email admin@example.com`.
  The production image runs `bin/church_admin eval 'ChurchAdmin.Release.migrate()'` before
  it starts the server.
  """

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Repo.BaselineMigration
  alias ChurchAdmin.Seeds

  @doc """
  Brings the database up to date and is safe to run on every start.

  An empty database gets the frozen baseline, then the reference seed (the
  permission, study year and other enum rows the baseline schema needs), then
  every later migration. Once any migration after the baseline is recorded the
  seed is never loaded again, so rows a later migration changed stay changed.
  A database that applied some migrations only gets the missing ones. The
  baseline replays only into a database whose `ash_schema_migrations` does not
  list it; a Hasura-era database must have its versions copied there first.
  """
  @spec migrate() :: :ok
  def migrate do
    :ok = load_app()

    {:ok, _result, _apps} =
      Ecto.Migrator.with_repo(ChurchAdmin.Repo, &migrate_loading_reference_seed_once/1)

    :ok
  end

  @doc """
  Whether the reference seed still has to be loaded, given the applied migration
  versions: no migration after the last baseline version is among them. The seed
  is `ON CONFLICT DO NOTHING`, so repeating it after an interrupted start is harmless.
  """
  @spec reference_seed_due?([pos_integer()]) :: boolean()
  def reference_seed_due?(applied_versions),
    do: Enum.all?(applied_versions, &(&1 <= BaselineMigration.last_version()))

  @doc """
  Makes `email` the first administrator; see
  `ChurchAdmin.Accounts.Actions.BootstrapAdmin`. Pass `force?: true` to add an
  administrator while another one exists.
  """
  @spec bootstrap_admin(String.t(), keyword()) ::
          {:ok, ChurchAdmin.Accounts.User.t()} | {:error, term()}
  def bootstrap_admin(email, opts \\ []) do
    {:ok, _apps} = Application.ensure_all_started(:church_admin)

    ChurchAdmin.Accounts.bootstrap_admin(email, %{force?: Keyword.get(opts, :force?, false)},
      actor: Actor.system()
    )
  end

  defp load_app do
    case Application.load(:church_admin) do
      :ok -> :ok
      {:error, {:already_loaded, :church_admin}} -> :ok
    end
  end

  defp migrate_loading_reference_seed_once(repo) do
    if reference_seed_due?(Ecto.Migrator.migrated_versions(repo)) do
      Ecto.Migrator.run(repo, :up, to: BaselineMigration.last_version())
      Seeds.load_reference!()
    end

    Ecto.Migrator.run(repo, :up, all: true)
  end
end
