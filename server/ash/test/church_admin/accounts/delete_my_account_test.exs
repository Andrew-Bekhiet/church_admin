defmodule ChurchAdmin.Accounts.DeleteMyAccountTest do
  use ChurchAdmin.AccountsCase, async: false

  import Ash.Expr

  alias ChurchAdmin.People.Person

  defp delete_account(auth_id, user \\ nil),
    do:
      Accounts.delete_my_account(
        actor: principal_actor(auth_id, "me@example.com", user && user.uid)
      )

  defp claimed_user! do
    user =
      user_with!(~w(approved readAllData), %{
        auth_id: "firebase-#{System.unique_integer([:positive])}"
      })

    Factory.grant!(user, :area, Factory.area!().id)
    person = Factory.person!(%{uid: user.uid, family_id: Factory.family!().id})
    {user, person}
  end

  test "releases the user and deletes the Firebase account" do
    {user, person} = claimed_user!()
    stub_identity_toolkit()

    assert {:ok, true} = delete_account(user.auth_id, user)

    assert_received {:identity_toolkit, "accounts:delete", %{"localId" => auth_id}}
    assert auth_id == user.auth_id

    assert reload!(user).auth_id == nil
    assert permission_names(user) == []
    assert scope_grants(user) == []

    assert Person
           |> Ash.Query.do_filter(expr(id == ^person.id and uid == ^user.uid))
           |> Ash.exists?(authorize?: false)
  end

  test "an account without a user only deletes the Firebase account" do
    stub_identity_toolkit()

    assert {:ok, true} = delete_account("firebase-no-user")
    assert_received {:identity_toolkit, "accounts:delete", %{"localId" => "firebase-no-user"}}
  end

  test "an account Firebase no longer knows counts as deleted" do
    {user, _person} = claimed_user!()

    stub_identity_toolkit(fn _method, _body ->
      {400, %{"error" => %{"code" => 400, "message" => "USER_NOT_FOUND"}}}
    end)

    assert {:ok, true} = delete_account(user.auth_id, user)
    assert reload!(user).auth_id == nil
  end

  test "a Firebase failure releases nothing" do
    {user, _person} = claimed_user!()
    stub_identity_toolkit(fn _method, _body -> google_failure() end)

    assert {:error, _} = delete_account(user.auth_id, user)

    assert reload!(user).auth_id == user.auth_id
    assert permission_names(user) == ~w(approved readAllData)
    assert length(scope_grants(user)) == 1
  end
end
