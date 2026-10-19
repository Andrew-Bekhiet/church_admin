defmodule ChurchAdmin.Repo do
  use AshPostgres.Repo,
    otp_app: :church_admin

  @impl true
  def installed_extensions do
    # Add extensions here, and the migration generator will install them.
    ["ash-functions"]
  end

  # RecordEdit's history rows and the other after_action writes must commit or
  # roll back with the write itself, atomic updates included. AshPostgres 4.0
  # flips the first default to false.
  @impl true
  def prefer_transaction?, do: true

  @impl true
  def prefer_transaction_for_atomic_updates?, do: true

  @impl true
  def min_pg_version do
    %Version{major: 16, minor: 0, patch: 0}
  end
end
