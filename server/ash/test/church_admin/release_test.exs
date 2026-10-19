defmodule ChurchAdmin.ReleaseTest do
  use ChurchAdmin.AccountsCase, async: false

  import Ash.Expr

  alias ChurchAdmin.Accounts.{Permission, User}
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Release

  defp all_permissions,
    do: Permission |> Ash.read!(authorize?: false) |> Enum.map(& &1.name) |> Enum.sort()

  defp user_by_email(email),
    do: User |> Ash.Query.do_filter(expr(email == ^email)) |> Ash.read_one!(authorize?: false)

  defp person_of(user),
    do: Person |> Ash.Query.do_filter(expr(uid == ^user.uid)) |> Ash.read_one!(authorize?: false)

  defp no_firebase_account do
    stub_identity_toolkit(fn _method, _body ->
      {200, %{"kind" => "identitytoolkit#GetAccountInfoResponse"}}
    end)
  end

  defp firebase_account(auth_id) do
    stub_identity_toolkit(fn
      "accounts:lookup", %{"email" => [email]} ->
        {200, %{"users" => [%{"localId" => auth_id, "email" => email}]}}

      _method, _body ->
        {200, %{}}
    end)
  end

  test "seeds an administrator with every permission and a servant person" do
    no_firebase_account()

    assert {:ok, %User{}} = Release.bootstrap_admin(" Admin@Example.com ")

    user = user_by_email("admin@example.com")
    assert user.name == "admin@example.com"
    assert user.auth_id == nil
    assert permission_names(user) == all_permissions()
    assert %Person{name: "admin@example.com", is_servant: true} = person_of(user)
  end

  test "links the Firebase account that already exists and gives it the claims" do
    firebase_account("firebase-admin")

    {:ok, user} = Release.bootstrap_admin("admin@example.com")

    assert reload!(user).auth_id == "firebase-admin"
    assert_received {:identity_toolkit, "accounts:update", body}
    assert body["emailVerified"] == true
    assert Jason.decode!(body["customAttributes"])["x-hasura-user-id"] == user.uid
  end

  test "running it again changes nothing" do
    firebase_account("firebase-admin")

    {:ok, user} = Release.bootstrap_admin("admin@example.com")
    {:ok, again} = Release.bootstrap_admin("admin@example.com")

    assert again.uid == user.uid
    assert permission_names(user) == all_permissions()
    assert person_of(user)
  end

  test "promotes a user that already has the email" do
    no_firebase_account()
    existing = Factory.user!(%{email: "admin@example.com"})

    {:ok, user} = Release.bootstrap_admin("admin@example.com")

    assert user.uid == existing.uid
    assert permission_names(existing) == all_permissions()
    assert person_of(existing)
  end

  test "refuses while another user manages all users, unless forced" do
    no_firebase_account()
    user_with!()

    assert {:error, _} = Release.bootstrap_admin("admin@example.com")
    assert user_by_email("admin@example.com") == nil

    assert {:ok, _} = Release.bootstrap_admin("admin@example.com", force?: true)
  end
end
