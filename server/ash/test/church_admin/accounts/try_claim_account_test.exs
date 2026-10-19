defmodule ChurchAdmin.Accounts.TryClaimAccountTest do
  use ChurchAdmin.AccountsCase, async: false

  alias ChurchAdmin.Accounts.ClaimedAccount

  defp auth_id, do: "firebase-#{System.unique_integer([:positive])}"

  defp firebase_account(email, verified? \\ true) do
    stub_identity_toolkit(fn
      "accounts:lookup", %{"localId" => [auth_id]} ->
        {200,
         %{"users" => [%{"localId" => auth_id, "email" => email, "emailVerified" => verified?}]}}

      _method, _body ->
        {200, %{}}
    end)
  end

  defp try_claim(auth_id, uid \\ nil),
    do: Accounts.try_claim_account(actor: principal_actor(auth_id, "token@example.com", uid))

  setup do
    previous = Application.get_env(:church_admin, :account_claiming_by_email?)
    on_exit(fn -> Application.put_env(:church_admin, :account_claiming_by_email?, previous) end)
    :ok
  end

  test "claims the user seeded with the account's verified email" do
    user = Factory.user!(%{email: "seeded@example.com"})
    auth_id = auth_id()
    firebase_account(" Seeded@Example.com ")

    assert {:ok, %ClaimedAccount{uid: uid}} = try_claim(auth_id)
    assert uid == user.uid
    assert reload!(user).auth_id == auth_id

    assert_received {:identity_toolkit, "accounts:update", body}
    assert body["localId"] == auth_id
    assert Jason.decode!(body["customAttributes"])["x-hasura-user-id"] == user.uid
  end

  test "nothing to claim when the flag is off" do
    Factory.user!(%{email: "seeded@example.com"})
    firebase_account("seeded@example.com")
    Application.put_env(:church_admin, :account_claiming_by_email?, false)

    assert codes(try_claim(auth_id())) == ["account/not-claimable"]
  end

  test "an unverified email is unauthenticated" do
    Factory.user!(%{email: "seeded@example.com"})
    firebase_account("seeded@example.com", false)

    assert codes(try_claim(auth_id())) == ["unauthenticated"]
  end

  test "an account that already has a user cannot claim another" do
    firebase_account("seeded@example.com")
    Factory.user!(%{email: "seeded@example.com"})
    linked = Factory.user!(%{auth_id: "firebase-linked"})

    assert codes(try_claim("firebase-linked")) == ["account/already-claimed"]
    assert codes(try_claim(auth_id(), linked.uid)) == ["account/already-claimed"]
  end

  test "no seeded user, or one claimed by another account, is not claimable" do
    firebase_account("nobody@example.com")
    assert codes(try_claim(auth_id())) == ["account/not-claimable"]

    Factory.user!(%{email: "taken@example.com", auth_id: "firebase-other"})
    firebase_account("taken@example.com")
    assert codes(try_claim(auth_id())) == ["account/not-claimable"]
  end

  test "a Firebase failure leaves the user unclaimed" do
    user = Factory.user!(%{email: "seeded@example.com"})

    stub_identity_toolkit(fn
      "accounts:lookup", %{"localId" => [auth_id]} ->
        {200,
         %{
           "users" => [
             %{"localId" => auth_id, "email" => "seeded@example.com", "emailVerified" => true}
           ]
         }}

      "accounts:update", _body ->
        google_failure()
    end)

    assert {:error, _} = try_claim(auth_id())
    assert reload!(user).auth_id == nil
  end
end
