defmodule ChurchAdmin.Accounts.Actions.BootstrapAdmin do
  @moduledoc """
  Makes the user with `email` an administrator: every permission in
  `auth.permissions` and a servant person, creating the user when none has
  that email. When Firebase already has an account with the email, that
  account is linked and gets the user's claims with its email marked
  verified; otherwise the user waits as a seeded account that
  `tryClaimAccount` claims on sign-up. Running it again changes nothing.

  Refuses while another user holds `manageAllUsers`, unless `force?`.
  """

  use Ash.Resource.Actions.Implementation

  import Ash.Expr

  alias ChurchAdmin.Accounts.{Claims, Permission, User, UserPermission}
  alias ChurchAdmin.Accounts.Changes.CanonicalizeNameAndEmail
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Google.{Error, IdentityToolkit}
  alias ChurchAdmin.Google.IdentityToolkit.Account
  alias ChurchAdmin.People.Person

  @impl true
  def run(input, _opts, _context) do
    email = CanonicalizeNameAndEmail.canonical_email(input.arguments.email)

    with :ok <- no_other_admin(email, input.arguments.force?),
         {:ok, permissions} <- Ash.read(Permission, authorize?: false),
         names = Enum.map(permissions, & &1.name),
         {:ok, user} <- upsert_admin(email, names),
         {:ok, user} <- link_firebase_account(user) do
      {:ok, user}
    end
  end

  defp no_other_admin(_email, true), do: :ok

  defp no_other_admin(email, false) do
    UserPermission
    |> Ash.Query.do_filter(expr(permission == "manageAllUsers" and (is_nil(user.email) or user.email != ^email)))
    |> Ash.exists?(authorize?: false)
    |> if(
      do: {:error, "another user already holds manageAllUsers; pass force? to add one more"},
      else: :ok
    )
  end

  defp upsert_admin(email, permissions) do
    case User |> Ash.Query.do_filter(expr(email == ^email)) |> Ash.read_one(authorize?: false) do
      {:ok, nil} ->
        write(User, :create_user, %{
          name: email,
          email: email,
          permissions: permissions,
          new_person: %{name: email, gender: true}
        })

      {:ok, user} ->
        promote(user, permissions)

      {:error, error} ->
        {:error, error}
    end
  end

  defp promote(user, permissions) do
    user = Ash.load!(user, [:person, :permissions], authorize?: false)
    held = Enum.map(user.permissions, & &1.permission)

    with {:ok, user} <-
           write(user, :update_user_permissions, %{permissions: Enum.uniq(held ++ permissions)}),
         :ok <- ensure_person(user, user.person) do
      {:ok, user}
    end
  end

  defp ensure_person(_user, %Person{}), do: :ok

  defp ensure_person(user, nil) do
    Person
    |> Ash.Changeset.for_create(
      :create_for_user,
      %{name: user.email, gender: true, uid: user.uid}, actor: Actor.system())
    |> Ash.create()
    |> case do
      {:ok, _person} -> :ok
      {:error, error} -> {:error, error}
    end
  end

  defp link_firebase_account(user) do
    case IdentityToolkit.lookup_by_email(user.email) do
      {:ok, %Account{uid: auth_id}} when user.auth_id in [nil, auth_id] ->
        with {:ok, user} <- write(user, :claim_account, %{auth_id: auth_id}),
             :ok <-
               IdentityToolkit.update(auth_id,
                 custom_claims: Claims.default_for(user.uid),
                 email_verified: true
               ) do
          {:ok, user}
        end

      {:ok, %Account{}} ->
        {:error, "#{user.email} is linked to another Firebase account"}

      {:error, %Error{reason: :not_found}} ->
        {:ok, user}

      {:error, error} ->
        {:error, error}
    end
  end

  defp write(User, action, input) do
    User
    |> Ash.Changeset.for_create(action, input, actor: Actor.system())
    |> Ash.create()
  end

  defp write(%User{} = user, action, input) do
    user
    |> Ash.Changeset.for_update(action, input, actor: Actor.system())
    |> Ash.update()
  end
end
