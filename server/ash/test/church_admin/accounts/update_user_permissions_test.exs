defmodule ChurchAdmin.Accounts.UpdateUserPermissionsTest do
  use ChurchAdmin.AccountsCase, async: false

  import Ash.Expr

  alias ChurchAdmin.Activity.Edit

  setup do
    manager = user_with!()
    service = Factory.service!()
    {:ok, manager: manager, actor: actor_for(manager), user: Factory.user!(), service: service}
  end

  defp update(user, input, actor, opts \\ []),
    do: Accounts.update_user_permissions(user, input, [actor: actor] ++ opts)

  defp user_edits(user) do
    Edit
    |> Ash.Query.do_filter(expr(table == "users" and record_id == ^user.uid))
    |> Ash.read!(authorize?: false, page: false)
  end

  defp service_admin!(service, flags) do
    admin = user_with!(~w(approved))
    Factory.grant!(admin, :service, service.id, flags)
    admin
  end

  describe "permissions" do
    test "become the requested set", ctx do
      Factory.permissions!(ctx.user, ~w(approved exportData))

      {:ok, _} = update(ctx.user, %{permissions: ~w(approved readAllData)}, ctx.actor)

      assert permission_names(ctx.user) == ~w(approved readAllData)
    end

    test "a nil list leaves them alone, an empty one removes them all", ctx do
      Factory.permissions!(ctx.user, ~w(approved))

      {:ok, _} = update(ctx.user, %{admin_on: []}, ctx.actor)
      assert permission_names(ctx.user) == ~w(approved)

      {:ok, _} = update(ctx.user, %{permissions: []}, ctx.actor)
      assert permission_names(ctx.user) == []
    end

    test "an actor grants only permissions it holds; ones the user had stay", ctx do
      admin = service_admin!(ctx.service, edit?: true, manage_users?: true)
      Factory.grant!(ctx.user, :service, ctx.service.id)
      Factory.permissions!(ctx.user, ~w(exportData))

      assert {:error, _} =
               update(ctx.user, %{permissions: ~w(exportData readAllData)}, actor_for(admin))

      assert permission_names(ctx.user) == ~w(exportData)

      assert {:ok, _} =
               update(ctx.user, %{permissions: ~w(exportData approved)}, actor_for(admin))

      assert permission_names(ctx.user) == ~w(approved exportData)
    end

    test "manageAllUsers needs writeAllData and readAllData granted with it", ctx do
      for permissions <- [~w(manageAllUsers), ~w(writeAllData manageAllUsers), ~w(writeAllData)] do
        user = Factory.user!()

        assert {:error, _} = update(user, %{permissions: permissions}, ctx.actor)
      end

      assert {:ok, _} =
               update(
                 ctx.user,
                 %{permissions: ~w(manageAllUsers writeAllData readAllData)},
                 ctx.actor
               )
    end

    test "only granted levels are checked: dropping readAllData under writeAllData passes", ctx do
      Factory.permissions!(ctx.user, ~w(readAllData writeAllData))

      assert {:ok, _} = update(ctx.user, %{permissions: ~w(writeAllData)}, ctx.actor)
    end
  end

  describe "scopes" do
    test "keep a matching row, add new ones and delete the rest", ctx do
      kept = Factory.grant!(ctx.user, :service, ctx.service.id, edit?: true)
      dropped = Factory.grant!(ctx.user, :area, Factory.area!().id)
      group = Factory.group!(ctx.service)

      {:ok, _} =
        update(
          ctx.user,
          %{
            admin_on: [
              %{
                admin_on_service: ctx.service.id,
                service_allow_edit: true,
                service_allow_export: false
              },
              %{admin_on_group: group.id, group_allow_edit: true}
            ]
          },
          ctx.actor
        )

      grants = scope_grants(ctx.user)
      ids = Enum.map(grants, & &1.permission_id)

      assert kept.permission_id in ids
      refute dropped.permission_id in ids
      assert Enum.any?(grants, &(&1.admin_on_group == group.id and &1.group_allow_edit))
      assert length(grants) == 2
    end

    test "a changed flag replaces the row", ctx do
      old = Factory.grant!(ctx.user, :service, ctx.service.id, edit?: true)

      {:ok, _} =
        update(
          ctx.user,
          %{admin_on: [%{admin_on_service: ctx.service.id, service_allow_export: true}]},
          ctx.actor
        )

      assert [%{service_allow_export: true, permission_id: id}] = scope_grants(ctx.user)
      refute id == old.permission_id
    end

    test "each added scope writes one users edit by the actor", ctx do
      Factory.grant!(ctx.user, :service, ctx.service.id)

      {:ok, _} =
        update(
          ctx.user,
          %{
            admin_on: [%{admin_on_service: ctx.service.id}, %{admin_on_area: Factory.area!().id}]
          },
          ctx.actor
        )

      assert [edit] =
               ctx.user |> user_edits() |> Enum.filter(&(&1.recorded_by == ctx.manager.uid))

      assert edit.user_role == "user"
    end

    test "the same area or group twice is a duplicate", ctx do
      scope = %{admin_on_area: Factory.area!().id}

      assert codes(update(ctx.user, %{admin_on: [scope, scope]}, ctx.actor)) ==
               ["user/duplicate-scope"]
    end

    test "a scope names exactly one container", ctx do
      assert codes(update(ctx.user, %{admin_on: [%{}]}, ctx.actor)) == [
               "invitation/scope-required"
             ]
    end

    test "an actor hands out only scopes it manages", ctx do
      admin = service_admin!(ctx.service, edit?: true, manage_users?: true)
      Factory.grant!(ctx.user, :service, ctx.service.id)

      for scope <- [
            %{admin_on_service: ctx.service.id, service_allow_export: true},
            %{admin_on_area: Factory.area!().id}
          ] do
        assert {:error, _} =
                 update(
                   ctx.user,
                   %{admin_on: [%{admin_on_service: ctx.service.id}, scope]},
                   actor_for(admin)
                 )
      end

      assert length(scope_grants(ctx.user)) == 1

      assert {:ok, _} =
               update(
                 ctx.user,
                 %{admin_on: [%{admin_on_service: ctx.service.id, service_allow_edit: true}]},
                 actor_for(admin)
               )
    end
  end

  describe "the codes of rejected grants" do
    test "name the broken rule", ctx do
      service_admin = service_admin!(ctx.service, edit?: true, manage_users?: true)
      Factory.grant!(ctx.user, :service, ctx.service.id)
      admin_actor = actor_for(service_admin)

      assert codes(update(ctx.user, %{permissions: ~w(readAllData)}, admin_actor)) ==
               ["user/permission-not-grantable"]

      assert codes(
               update(
                 ctx.user,
                 %{admin_on: [%{admin_on_service: ctx.service.id, service_allow_export: true}]},
                 admin_actor
               )
             ) == ["invitation/scope-not-manageable"]

      assert codes(update(Factory.user!(), %{permissions: ~w(writeAllData)}, ctx.actor)) ==
               ["user/permission-levels-inconsistent"]
    end
  end

  describe "who may change them" do
    test "not a user without edit rights on the user, nor the user itself", ctx do
      plain = user_with!(~w(approved readAllData writeAllData))

      for actor <- [actor_for(plain), actor_for(ctx.user)] do
        assert codes(update(ctx.user, %{permissions: ~w(approved)}, actor)) == ["forbidden"]
      end
    end
  end

  describe "approval" do
    test "approveUser grants approved once, unapproveUser revokes it", ctx do
      {:ok, _} = Accounts.approve_user(ctx.user, actor: ctx.actor)
      {:ok, _} = Accounts.approve_user(ctx.user, actor: ctx.actor)
      assert permission_names(ctx.user) == ["approved"]

      {:ok, _} = Accounts.unapprove_user(ctx.user, actor: ctx.actor)
      assert permission_names(ctx.user) == []
    end

    test "needs edit rights on the user", ctx do
      plain = user_with!(~w(approved))

      assert codes(Accounts.approve_user(ctx.user, actor: actor_for(plain))) == ["forbidden"]
    end
  end
end
