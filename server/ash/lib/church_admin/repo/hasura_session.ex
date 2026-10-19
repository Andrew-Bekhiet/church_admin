defmodule ChurchAdmin.Repo.HasuraSession do
  @moduledoc """
  Transitional: the baseline's triggers, defaults and guards still read the
  `hasura.user` GUC that Hasura used to set. Every connection starts with a
  non-admin default whose all-zero user id matches no user, so a write that
  misses the per-transaction setting fails closed (the grant guards treat a
  missing user id as the system). `ChurchAdmin.Repo.on_transaction_begin/1`
  sets the actor's session for each Ash transaction. Removed once no database
  object reads the GUC.
  """

  alias ChurchAdmin.Authz.Actor

  @fail_closed_default ~s({"x-hasura-role":"user","x-hasura-user-id":"00000000-0000-0000-0000-000000000000"})

  @spec fail_closed_default() :: String.t()
  def fail_closed_default, do: @fail_closed_default

  @spec set_fail_closed_default(Postgrex.conn()) :: Postgrex.Result.t()
  def set_fail_closed_default(conn) do
    Postgrex.query!(conn, "select set_config('hasura.user', $1, false)", [@fail_closed_default])
  end

  @spec set_for_transaction(Ecto.Repo.t(), term()) :: :ok
  def set_for_transaction(repo, actor) do
    case session_for(actor) do
      nil ->
        :ok

      session ->
        repo.query!("select set_config('hasura.user', $1, true)", [session])
        :ok
    end
  end

  @spec session_for(term()) :: String.t() | nil
  def session_for(%Actor{system?: true}), do: Jason.encode!(%{"x-hasura-role" => "admin"})

  def session_for(%Actor{uid: uid}) when is_binary(uid),
    do: Jason.encode!(%{"x-hasura-role" => "user", "x-hasura-user-id" => uid})

  def session_for(%Actor{}), do: @fail_closed_default
  def session_for(nil), do: nil
end
