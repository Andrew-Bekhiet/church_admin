defmodule ChurchAdmin.Accounts.RegisterFcmTokenTest do
  use ChurchAdmin.AccountsCase, async: false

  import Ash.Expr

  alias ChurchAdmin.Accounts.DeviceToken

  setup do
    user = user_with!(["approved"])
    {:ok, user: user, actor: actor_for(user)}
  end

  defp rows(token) do
    DeviceToken
    |> Ash.Query.do_filter(expr(token == ^token))
    |> Ash.read!(authorize?: false, page: false)
  end

  test "stores the token under the actor's uid and returns the row", ctx do
    assert {:ok, %DeviceToken{uid: uid, token: "token-a", created_at: %DateTime{}}} =
             Accounts.register_fcm_token("token-a", actor: ctx.actor)

    assert uid == ctx.user.uid
    assert [%{uid: ^uid}] = rows("token-a")
  end

  test "registering again returns the same row and writes no second one", ctx do
    {:ok, first} = Accounts.register_fcm_token("token-a", actor: ctx.actor)
    {:ok, second} = Accounts.register_fcm_token("token-a", actor: ctx.actor)

    assert second.created_at == first.created_at
    assert length(rows("token-a")) == 1
  end

  test "two users on one device each keep their own row", ctx do
    other = user_with!(["approved"])

    {:ok, _} = Accounts.register_fcm_token("shared", actor: ctx.actor)
    {:ok, _} = Accounts.register_fcm_token("shared", actor: actor_for(other))

    assert rows("shared") |> Enum.map(& &1.uid) |> Enum.sort() ==
             Enum.sort([ctx.user.uid, other.uid])
  end

  test "an unapproved user may register", _ctx do
    unapproved = Factory.user!()

    assert {:ok, %{uid: uid}} = Accounts.register_fcm_token("t", actor: actor_for(unapproved))
    assert uid == unapproved.uid
  end

  test "tokens are readable only by their owner", ctx do
    other = user_with!(["approved"])
    {:ok, _} = Accounts.register_fcm_token("token-a", actor: ctx.actor)

    assert [_] = Ash.read!(DeviceToken, actor: ctx.actor, page: false)
    assert [] = Ash.read!(DeviceToken, actor: actor_for(other), page: false)
  end

  test "an anonymous caller is refused", _ctx do
    assert {:error, error} = Accounts.register_fcm_token("token-a", actor: nil)
    assert codes(error) == ["forbidden"]
    assert rows("token-a") == []
  end
end
