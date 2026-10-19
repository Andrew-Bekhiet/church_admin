defmodule ChurchAdmin.Accounts.ApplyInvitationCodeTest do
  use ChurchAdmin.AccountsCase, async: false

  alias ChurchAdmin.Accounts.{ClaimedAccount, Invitation}

  setup do
    manager = actor_for(user_with!())
    {:ok, manager: manager}
  end

  defp invite!(manager, user, days \\ 7) do
    {:ok, invitation} =
      Accounts.create_invitation(
        %{user_uid: user.uid, expires_at: DateTime.add(DateTime.utc_now(), days, :day)},
        actor: manager
      )

    invitation
  end

  defp auth_id, do: "firebase-#{System.unique_integer([:positive])}"

  defp apply_code(code, auth_id, email),
    do: Accounts.apply_invitation_code(code, actor: principal_actor(auth_id, email))

  defp expire!(invitation) do
    ChurchAdmin.DataCase.set_system_db_session()

    ChurchAdmin.Repo.query!(
      "update auth.invitations set created_at = now() - interval '10 days', expires_at = now() - interval '1 day' where id = $1",
      [Ecto.UUID.dump!(invitation.id)]
    )
  end

  test "claims the invited user, typed in any case without dashes", %{manager: manager} do
    user = Factory.user!()
    invitation = invite!(manager, user)
    auth_id = auth_id()
    stub_identity_toolkit()

    typed = invitation.code |> String.replace("-", "") |> String.downcase()

    assert {:ok, %ClaimedAccount{uid: uid}} =
             apply_code(" #{typed} ", auth_id, "Invited@Example.com")

    assert uid == user.uid

    assert %{auth_id: ^auth_id, email: "invited@example.com"} = reload!(user)
    assert Ash.get!(Invitation, invitation.id, authorize?: false).claimed_at

    assert_received {:identity_toolkit, "accounts:update", body}
    assert body["localId"] == auth_id
    assert body["emailVerified"] == true
    assert Jason.decode!(body["customAttributes"])["x-hasura-user-id"] == user.uid
  end

  test "keeps an email the user already has", %{manager: manager} do
    user = Factory.user!(%{email: "seeded@example.com"})
    invitation = invite!(manager, user)
    stub_identity_toolkit()

    assert {:ok, _} = apply_code(invitation.code, auth_id(), "seeded@example.com")
    assert reload!(user).email == "seeded@example.com"
  end

  test "the same account applying the code again gets the same user", %{manager: manager} do
    user = Factory.user!()
    invitation = invite!(manager, user)
    auth_id = auth_id()
    stub_identity_toolkit()

    {:ok, first} = apply_code(invitation.code, auth_id, "a@example.com")
    assert {:ok, ^first} = apply_code(invitation.code, auth_id, "a@example.com")
  end

  test "an unknown, malformed, expired, foreign or mismatched code is not claimable",
       %{manager: manager} do
    stub_identity_toolkit()

    claimed = invite!(manager, Factory.user!())
    {:ok, _} = apply_code(claimed.code, auth_id(), "first@example.com")

    expired = invite!(manager, Factory.user!())
    expire!(expired)

    other_email = invite!(manager, Factory.user!(%{email: "someone@example.com"}))
    linked = invite!(manager, Factory.user!(%{auth_id: "firebase-elsewhere"}))

    for code <- [
          "AAAA-BBBB-CCCC",
          "not a code",
          expired.code,
          claimed.code,
          other_email.code,
          linked.code
        ] do
      assert codes(apply_code(code, auth_id(), "me@example.com")) == ["invitation/not-claimable"]
    end
  end

  test "a Firebase failure leaves the invitation unclaimed", %{manager: manager} do
    user = Factory.user!()
    invitation = invite!(manager, user)
    stub_identity_toolkit(fn _method, _body -> google_failure() end)

    assert {:error, _} = apply_code(invitation.code, auth_id(), "a@example.com")

    assert reload!(user).auth_id == nil
    assert Ash.get!(Invitation, invitation.id, authorize?: false).claimed_at == nil
  end

  test "a seventh attempt within five hours is rate limited" do
    auth_id = auth_id()

    for _ <- 1..6 do
      assert codes(apply_code("AAAA-BBBB-CCCC", auth_id, "a@example.com")) == [
               "invitation/not-claimable"
             ]
    end

    assert codes(apply_code("AAAA-BBBB-CCCC", auth_id, "a@example.com")) == ["rate_limited"]

    assert codes(apply_code("AAAA-BBBB-CCCC", auth_id(), "a@example.com")) == [
             "invitation/not-claimable"
           ]
  end

  test "needs a Firebase sign-in" do
    assert codes(Accounts.apply_invitation_code("AAAA-BBBB-CCCC", actor: nil)) == ["forbidden"]
  end
end
