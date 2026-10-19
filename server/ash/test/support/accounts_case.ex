defmodule ChurchAdmin.AccountsCase do
  @moduledoc """
  Account command tests: the database sandbox, actors built from fixture
  users, Firebase principals, an Identity Toolkit stub that reports every
  call to the test process, and the client codes of an action's error.
  """

  use ExUnit.CaseTemplate

  import Ash.Expr

  alias ChurchAdmin.Accounts.{ScopeGrant, User, UserPermission}
  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Google.IdentityToolkit

  using do
    quote do
      import ChurchAdmin.AccountsCase
      alias ChurchAdmin.Accounts
      alias ChurchAdmin.Factory
    end
  end

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    :ok
  end

  @all_data ~w(approved readAllData writeAllData manageAllUsers onboardUsers)

  @doc "An approved user holding `permissions` (default: everything a user manager needs)."
  def user_with!(permissions \\ @all_data, attrs \\ %{}) do
    user = Factory.user!(attrs)
    Factory.permissions!(user, permissions)
    user
  end

  def actor_for(%User{uid: uid}), do: ActorLoader.load(uid)

  def principal_actor(auth_id, email, uid \\ nil) do
    Actor.for_principal(%Principal{
      auth_id: auth_id,
      uid: uid,
      email: email,
      email_verified: true,
      claims: %{}
    })
  end

  def reload!(%User{uid: uid}), do: Ash.get!(User, uid, authorize?: false)

  def permission_names(%User{uid: uid}) do
    UserPermission
    |> Ash.Query.do_filter(expr(uid == ^uid))
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.map(& &1.permission)
    |> Enum.sort()
  end

  def scope_grants(%User{uid: uid}) do
    ScopeGrant
    |> Ash.Query.do_filter(expr(uid == ^uid))
    |> Ash.read!(authorize?: false, page: false)
  end

  @doc """
  Answers Identity Toolkit calls with `respond.(method, body)` (`method` like
  `"accounts:update"`), which returns `{status, json}`, and sends
  `{:identity_toolkit, method, body}` to the test process for each call.
  """
  def stub_identity_toolkit(respond \\ fn _method, _body -> {200, %{}} end) do
    test = self()

    Req.Test.stub(IdentityToolkit, fn conn ->
      method = conn.request_path |> String.split("/") |> List.last()
      send(test, {:identity_toolkit, method, conn.body_params})
      {status, json} = respond.(method, conn.body_params)
      conn |> Plug.Conn.put_status(status) |> Req.Test.json(json)
    end)
  end

  @doc """
  Whether `fun`'s command, run by `actor`, would commit: runs it in a
  savepoint with the actor's database session (Ash starts no transaction of
  its own inside one), fires the deferred constraint triggers a commit would
  fire (the sandbox never commits), then rolls everything back. Returns `:ok`
  or `{:error, error}`.
  """
  def commits?(actor, fun) do
    fire_fixtures_deferred_checks!()

    ChurchAdmin.Repo.transaction(fn ->
      ChurchAdmin.Repo.HasuraSession.set_for_transaction(ChurchAdmin.Repo, actor)

      result =
        with {:ok, _result} <- ok_without_notifications(fun.()),
             {:ok, _fired} <- ChurchAdmin.Repo.query("set constraints all immediate") do
          :ok
        end

      ChurchAdmin.Repo.rollback(result)
    end)
    |> case do
      {:error, :ok} -> :ok
      {:error, {:error, error}} -> {:error, error}
      {:error, rolled_back_by_the_command} -> {:error, rolled_back_by_the_command}
    end
  end

  defp ok_without_notifications({:ok, result, _rolled_back_notifications}), do: {:ok, result}
  defp ok_without_notifications(result), do: result

  defp fire_fixtures_deferred_checks! do
    ChurchAdmin.DataCase.set_system_db_session()
    ChurchAdmin.Repo.query!("set constraints all immediate")
    ChurchAdmin.Repo.query!("set constraints all deferred")
  end

  def google_failure, do: {500, %{"error" => %{"code" => 500, "message" => "INTERNAL"}}}

  @doc "The `extensions.code` values GraphQL clients would read for an action's error."
  def codes({:error, error}), do: codes(error)

  def codes(error) do
    error
    |> Ash.Error.to_error_class()
    |> leaf_errors()
    |> Enum.map(&AshGraphql.Error.to_error(&1).code)
    |> Enum.uniq()
  end

  defp leaf_errors(%{errors: [_ | _] = errors}), do: Enum.flat_map(errors, &leaf_errors/1)
  defp leaf_errors(error), do: [error]
end
