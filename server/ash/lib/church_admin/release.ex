defmodule ChurchAdmin.Release do
  @moduledoc """
  Operator tasks for a release, run with
  `bin/church_admin eval 'ChurchAdmin.Release.bootstrap_admin("admin@example.com")'`
  or, from a checkout, `mix church_admin.bootstrap_admin --email admin@example.com`.
  """

  alias ChurchAdmin.Authz.Actor

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
end
