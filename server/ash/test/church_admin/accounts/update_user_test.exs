defmodule ChurchAdmin.Accounts.UpdateUserTest do
  use ChurchAdmin.AccountsCase, async: false

  import Ash.Expr

  alias ChurchAdmin.People.Person

  setup do
    manager = user_with!()
    {:ok, manager: manager, actor: actor_for(manager), user: Factory.user!()}
  end

  defp person_of(user) do
    Person |> Ash.Query.do_filter(expr(uid == ^user.uid)) |> Ash.read_one!(authorize?: false)
  end

  defp family_person!(attrs \\ %{}),
    do: %{family_id: Factory.family!().id} |> Map.merge(attrs) |> Factory.person!()

  describe "name and email" do
    test "a user manager sets them, the email canonical", ctx do
      {:ok, _} =
        Accounts.update_user(ctx.user, %{name: " Renamed ", email: " Mixed@Case.org "},
          actor: ctx.actor
        )

      assert %{name: "Renamed", email: "mixed@case.org"} = reload!(ctx.user)
    end

    test "an empty email clears it", ctx do
      user = Factory.user!(%{email: "old@example.com"})

      {:ok, _} = Accounts.update_user(user, %{email: ""}, actor: ctx.actor)

      assert reload!(user).email == nil
    end

    test "users rename themselves", ctx do
      approved = user_with!(["approved"])

      assert {:ok, _} = Accounts.update_user(approved, %{name: "Me"}, actor: actor_for(approved))

      assert codes(
               Accounts.update_user(ctx.user, %{name: "Not mine"}, actor: actor_for(approved))
             ) ==
               ["forbidden"]
    end

    test "a claimed account keeps its email", ctx do
      claimed = Factory.user!(%{email: "claimed@example.com", auth_id: "firebase-claimed"})

      assert {:error, _} =
               Accounts.update_user(claimed, %{email: "new@example.com"}, actor: ctx.actor)

      assert reload!(claimed).email == "claimed@example.com"

      assert {:ok, _} =
               Accounts.update_user(claimed, %{name: "Still renamable"}, actor: ctx.actor)
    end

    test "the locked email is reported as user/email-locked", ctx do
      claimed = Factory.user!(%{email: "locked@example.com", auth_id: "firebase-locked"})

      assert codes(Accounts.update_user(claimed, %{email: "other@example.com"}, actor: ctx.actor)) ==
               ["user/email-locked"]
    end

    test "reports a taken email", ctx do
      Factory.user!(%{email: "taken@example.com"})

      assert codes(
               Accounts.update_user(ctx.user, %{email: "taken@example.com"}, actor: ctx.actor)
             ) ==
               ["user/email-taken"]
    end
  end

  describe "the linked person" do
    test "person_id links that person and unlinks the previous one", ctx do
      previous = family_person!(%{uid: ctx.user.uid})
      next = family_person!()

      {:ok, _} = Accounts.update_user(ctx.user, %{person_id: next.id}, actor: ctx.actor)

      assert person_of(ctx.user).id == next.id
      assert Ash.get!(Person, previous.id, authorize?: false).uid == nil
    end

    test "a nil person_id only unlinks", ctx do
      previous = family_person!(%{uid: ctx.user.uid})

      {:ok, _} = Accounts.update_user(ctx.user, %{person_id: nil}, actor: ctx.actor)

      assert person_of(ctx.user) == nil
      assert Ash.get!(Person, previous.id, authorize?: false).uid == nil
    end

    test "leaving person_id out keeps the link", ctx do
      previous = family_person!(%{uid: ctx.user.uid})

      {:ok, _} = Accounts.update_user(ctx.user, %{name: "Renamed"}, actor: ctx.actor)

      assert person_of(ctx.user).id == previous.id
    end

    test "a person linked elsewhere fails and the previous link stays", ctx do
      previous = family_person!(%{uid: ctx.user.uid})
      taken = family_person!(%{uid: Factory.user!().uid})

      assert codes(Accounts.update_user(ctx.user, %{person_id: taken.id}, actor: ctx.actor)) ==
               ["user/person-already-linked"]

      assert person_of(ctx.user).id == previous.id
    end

    test "a person the actor may not edit counts as unavailable" do
      service = Factory.service!()
      admin = user_with!(~w(approved))
      Factory.grant!(admin, :service, service.id, edit?: true, manage_users?: true)
      managed = Factory.user!()
      Factory.grant!(managed, :service, service.id)
      out_of_scope = family_person!()

      assert codes(
               Accounts.update_user(managed, %{person_id: out_of_scope.id},
                 actor: actor_for(admin)
               )
             ) == ["user/person-already-linked"]

      in_scope = family_person!()
      Factory.in_service!(in_scope, service)

      assert {:ok, _} =
               Accounts.update_user(managed, %{person_id: in_scope.id}, actor: actor_for(admin))

      assert person_of(managed).id == in_scope.id
    end
  end
end
