defmodule ChurchAdmin.Accounts.CreateUserTest do
  use ChurchAdmin.AccountsCase, async: false

  import Ash.Expr

  alias ChurchAdmin.Accounts.{DefaultPreferences, Invitation, Preferences, User}
  alias ChurchAdmin.Activity.Edit
  alias ChurchAdmin.People.Person

  setup do
    manager = user_with!()
    service = Factory.service!()
    {:ok, manager: manager, actor: actor_for(manager), service: service}
  end

  defp create(actor, input) do
    name = Map.get(input, :name, "servant #{System.unique_integer([:positive])}")

    Accounts.create_user(
      Map.merge(%{name: name, new_person: %{name: String.trim(name), gender: false}}, input),
      actor: actor
    )
  end

  defp service_manager!(service, flags \\ [edit?: true, manage_users?: true]) do
    user = user_with!(~w(approved onboardUsers))
    Factory.grant!(user, :service, service.id, flags)
    actor_for(user)
  end

  defp person_of(%User{uid: uid}) do
    Person |> Ash.Query.do_filter(expr(uid == ^uid)) |> Ash.read_one!(authorize?: false)
  end

  describe "a user manager" do
    test "creates the user with its permissions, scopes and a new servant person", ctx do
      assert {:ok, user} =
               create(ctx.actor, %{
                 name: "  New servant ",
                 email: " New@Example.com ",
                 permissions: ["approved", "readAllData"],
                 admin_on: [%{admin_on_service: ctx.service.id, service_allow_edit: true}]
               })

      assert %User{name: "New servant", email: "new@example.com", auth_id: nil} = reload!(user)
      assert permission_names(user) == ["approved", "readAllData"]

      assert [%{admin_on_service: service_id, service_allow_edit: true}] = scope_grants(user)
      assert service_id == ctx.service.id

      assert %Person{name: "New servant", gender: false, is_servant: true} = person_of(user)
    end

    test "starts the user with the default preferences", ctx do
      {:ok, user} = create(ctx.actor, %{})

      preferences = Ash.get!(Preferences, user.uid, authorize?: false)
      assert preferences.order_by_preferences == DefaultPreferences.order_by()
      assert preferences.great_feast_theme
    end

    test "links an existing person nobody has linked", ctx do
      person = Factory.person!(%{family_id: Factory.family!().id})

      {:ok, user} = create(ctx.actor, %{new_person: nil, person_id: person.id})

      assert person_of(user).id == person.id
      assert person_of(user).is_servant
    end

    test "rejects a person linked to another user and keeps no user row", ctx do
      other = Factory.user!()
      person = Factory.person!(%{uid: other.uid})

      result = create(ctx.actor, %{name: "Rejected", new_person: nil, person_id: person.id})

      assert codes(result) == ["user/person-already-linked"]

      refute User
             |> Ash.Query.do_filter(expr(name == "Rejected"))
             |> Ash.exists?(authorize?: false)
    end

    test "needs exactly one of person_id and new_person", ctx do
      assert {:error, _} = create(ctx.actor, %{new_person: nil})

      assert {:error, _} =
               create(ctx.actor, %{person_id: Factory.person!(%{uid: nil}).id})
    end

    test "invites the user when given an expiry", ctx do
      expires_at = DateTime.add(DateTime.utc_now(), 3, :day)

      {:ok, user} = create(ctx.actor, %{invitation_expires_at: expires_at})

      invitation =
        Invitation
        |> Ash.Query.do_filter(expr(user_uid == ^user.uid))
        |> Ash.read_one!(authorize?: false)

      assert invitation.code =~ ~r/^[A-Z0-9]{4}(-[A-Z0-9]{4}){2}$/
      assert invitation.created_by == ctx.manager.uid

      assert DateTime.compare(invitation.expires_at, DateTime.truncate(expires_at, :second)) !=
               :lt
    end

    test "writes one users edit per scope", ctx do
      {:ok, user} =
        create(ctx.actor, %{
          admin_on: [
            %{admin_on_service: ctx.service.id},
            %{admin_on_area: Factory.area!().id}
          ]
        })

      edits =
        Edit
        |> Ash.Query.do_filter(expr(table == "users" and record_id == ^user.uid))
        |> Ash.read!(authorize?: false, page: false)

      assert length(edits) == 2
    end

    test "reports a taken email and a taken name", ctx do
      taken = Factory.user!(%{email: "taken@example.com"})

      assert codes(create(ctx.actor, %{email: "taken@example.com"})) == ["user/email-taken"]
      assert codes(create(ctx.actor, %{name: taken.name})) == ["user/name-taken"]
    end

    test "names the user after its new person, so a person named like another user is a taken name",
         ctx do
      taken = Factory.user!()

      assert codes(create(ctx.actor, %{new_person: %{name: taken.name, gender: true}})) ==
               ["user/name-taken"]
    end
  end

  describe "who may create users" do
    test "an approved onboarder or user manager", ctx do
      onboarder = user_with!(~w(approved onboardUsers))
      area = Factory.area!()
      Factory.grant!(onboarder, :area, area.id, edit?: true, manage_users?: true)

      assert {:ok, _} = create(actor_for(onboarder), %{admin_on: [%{admin_on_area: area.id}]})
      assert {:ok, _} = create(ctx.actor, %{name: "Second"})
    end

    test "not an unapproved user or one without onboardUsers" do
      for permissions <- [~w(onboardUsers manageAllUsers), ~w(approved readAllData writeAllData)] do
        actor = actor_for(user_with!(permissions))
        assert codes(create(actor, %{})) == ["forbidden"]
      end
    end
  end

  # caller_manages_scopes.ts and create_user.ts, case by case.
  describe "grants the actor may hand out" do
    test "a permission the actor lacks is not grantable", ctx do
      actor = service_manager!(ctx.service)

      assert codes(
               create(actor, %{
                 permissions: ["readAllData"],
                 admin_on: [%{admin_on_service: ctx.service.id}]
               })
             ) == ["user/permission-not-grantable"]
    end

    test "a scoped actor must hand out a scope", ctx do
      assert codes(create(service_manager!(ctx.service), %{})) == ["invitation/scope-required"]
    end

    test "a scope names exactly one container", ctx do
      for scope <- [%{}, %{admin_on_service: ctx.service.id, admin_on_area: Factory.area!().id}] do
        assert codes(create(ctx.actor, %{admin_on: [scope]})) == ["invitation/scope-required"]
      end
    end

    test "a scoped actor hands out only scopes it manages", ctx do
      actor = service_manager!(ctx.service)

      for scope <- [
            %{admin_on_service: Factory.service!().id},
            %{admin_on_service: ctx.service.id, service_allow_export: true}
          ] do
        assert codes(create(actor, %{admin_on: [scope]})) == ["invitation/scope-not-manageable"]
      end

      assert {:ok, _} =
               create(actor, %{
                 admin_on: [%{admin_on_service: ctx.service.id, service_allow_edit: true}]
               })
    end

    test "a scoped actor's new user and person commit", ctx do
      actor = service_manager!(ctx.service)

      assert :ok =
               commits?(actor, fn ->
                 create(actor, %{admin_on: [%{admin_on_service: ctx.service.id}]})
               end)
    end

    test "a manageAllUsers actor needs no scope", ctx do
      assert {:ok, user} = create(ctx.actor, %{permissions: ["approved"]})
      assert scope_grants(user) == []
    end
  end
end
