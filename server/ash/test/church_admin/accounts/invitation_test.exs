defmodule ChurchAdmin.Accounts.InvitationTest do
  use ChurchAdmin.AccountsCase, async: false

  setup do
    manager = user_with!()
    {:ok, manager: manager, actor: actor_for(manager), user: Factory.user!()}
  end

  defp in_days(days), do: DateTime.add(DateTime.utc_now(), days, :day)

  test "createInvitation stamps the actor and generates a code", ctx do
    {:ok, invitation} =
      Accounts.create_invitation(%{user_uid: ctx.user.uid, expires_at: in_days(7)},
        actor: ctx.actor
      )

    assert invitation.code =~ ~r/^[A-Z0-9]{4}(-[A-Z0-9]{4}){2}$/
    assert invitation.created_by == ctx.manager.uid
    assert invitation.claimed_at == nil
  end

  test "codes differ between invitations", ctx do
    codes =
      for _ <- 1..5 do
        {:ok, invitation} =
          Accounts.create_invitation(%{user_uid: Factory.user!().uid, expires_at: in_days(7)},
            actor: ctx.actor
          )

        invitation.code
      end

    assert length(Enum.uniq(codes)) == 5
  end

  test "updateInvitationExpiry moves the expiry within 30 days of creation", ctx do
    {:ok, invitation} =
      Accounts.create_invitation(%{user_uid: ctx.user.uid, expires_at: in_days(7)},
        actor: ctx.actor
      )

    assert {:ok, %{expires_at: expires_at}} =
             Accounts.update_invitation_expiry(invitation, %{expires_at: in_days(20)},
               actor: ctx.actor
             )

    assert DateTime.diff(expires_at, invitation.created_at, :day) in 19..20

    assert codes(
             Accounts.update_invitation_expiry(invitation, %{expires_at: in_days(31)},
               actor: ctx.actor
             )
           ) ==
             ["invitation/invalid-expiry"]
  end

  test "an expiry in the past or beyond 30 days is invalid", ctx do
    for days <- [-1, 31] do
      assert codes(
               Accounts.create_invitation(%{user_uid: ctx.user.uid, expires_at: in_days(days)},
                 actor: ctx.actor
               )
             ) == ["invitation/invalid-expiry"]
    end
  end

  test "only someone who may edit the user invites them", ctx do
    plain = user_with!(~w(approved))

    assert codes(
             Accounts.create_invitation(%{user_uid: ctx.user.uid, expires_at: in_days(7)},
               actor: actor_for(plain)
             )
           ) == ["forbidden"]
  end
end
