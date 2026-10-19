defmodule ChurchAdmin.Accounts.GrantAuthorityTest do
  @moduledoc """
  The caller-scope rules of the old `createUser` function
  (`caller_manages_scopes.ts`) and the grant-level triggers, as a table.
  """

  use ExUnit.Case, async: true

  alias ChurchAdmin.Accounts.GrantAuthority
  alias ChurchAdmin.Authz.{Actor, Grant}

  @service "00000000-0000-0000-0000-00000000000a"
  @other_service "00000000-0000-0000-0000-00000000000b"
  @group "00000000-0000-0000-0000-00000000000c"
  @area "00000000-0000-0000-0000-00000000000d"

  defp actor(grants, permissions \\ ["approved", "onboardUsers"]) do
    %Actor{
      uid: Ash.UUID.generate(),
      approved?: true,
      permissions: MapSet.new(permissions),
      service_grants: grants |> Keyword.get(:service, []) |> Enum.map(&grant/1),
      group_grants: grants |> Keyword.get(:group, []) |> Enum.map(&grant/1),
      area_grants: grants |> Keyword.get(:area, []) |> Enum.map(&grant/1)
    }
  end

  defp grant({scope_id, flags}),
    do: struct!(Grant, [id: Ash.UUID.generate(), scope_id: scope_id] ++ flags)

  @service_manager [service: [{@service, [manage_users?: true, edit?: true]}]]

  describe "permission_grantable?/2" do
    test "the actor grants only permissions it holds" do
      actor = actor([], ["approved", "onboardUsers", "readAllData"])

      assert GrantAuthority.permission_grantable?(actor, "readAllData")
      refute GrantAuthority.permission_grantable?(actor, "writeAllData")
    end

    test "the system grants anything" do
      assert GrantAuthority.permission_grantable?(Actor.system(), "manageAllUsers")
    end
  end

  describe "container/1" do
    test "names the one container a scope is on" do
      assert GrantAuthority.container(%{admin_on_area: @area}) == {:ok, :area, @area}
      assert GrantAuthority.container(%{admin_on_service: @service}) == {:ok, :service, @service}
      assert GrantAuthority.container(%{admin_on_group: @group}) == {:ok, :group, @group}
    end

    test "rejects a scope on no container or on several" do
      assert GrantAuthority.container(%{}) == :error
      assert GrantAuthority.container(%{admin_on_area: @area, admin_on_group: @group}) == :error
    end
  end

  @cases [
    {"same service, manages its users", @service_manager, %{admin_on_service: @service}, true},
    {"another service", @service_manager, %{admin_on_service: @other_service}, false},
    {"another kind of container", @service_manager, %{admin_on_group: @service}, false},
    {"a grant without *_admin_on_users", [service: [{@service, [edit?: true]}]],
     %{admin_on_service: @service}, false},
    {"a flag the actor holds", @service_manager,
     %{admin_on_service: @service, service_allow_edit: true}, true},
    {"a flag the actor lacks", @service_manager,
     %{admin_on_service: @service, service_allow_export: true}, false},
    {"every service flag the actor holds",
     [
       service: [
         {@service,
          [
            manage_users?: true,
            edit?: true,
            export?: true,
            record_persons?: true,
            record_servants?: true,
            write_related_families?: true
          ]}
       ]
     ],
     %{
       admin_on_service: @service,
       service_allow_edit: true,
       service_allow_export: true,
       service_allow_record_attendance: true,
       service_allow_record_servants_attendance: true,
       service_write_related_families: true,
       service_admin_on_users: true
     }, true},
    {"record attendance without the actor's", @service_manager,
     %{admin_on_service: @service, service_allow_record_attendance: true}, false},
    {"record servants without the actor's", @service_manager,
     %{admin_on_service: @service, service_allow_record_servants_attendance: true}, false},
    {"write related families without the actor's", @service_manager,
     %{admin_on_service: @service, service_write_related_families: true}, false},
    {"study year inside the actor's",
     [service: [{@service, [manage_users?: true, study_year: 3]}]],
     %{admin_on_service: @service, service_study_year: 3}, true},
    {"another study year", [service: [{@service, [manage_users?: true, study_year: 3]}]],
     %{admin_on_service: @service, service_study_year: 4}, false},
    {"every study year from a year-restricted actor",
     [service: [{@service, [manage_users?: true, study_year: 3]}]], %{admin_on_service: @service},
     false},
    {"gender inside the actor's", [service: [{@service, [manage_users?: true, gender: true]}]],
     %{admin_on_service: @service, service_gender: true}, true},
    {"the other gender", [service: [{@service, [manage_users?: true, gender: true]}]],
     %{admin_on_service: @service, service_gender: false}, false},
    {"any year and gender from an unrestricted actor", @service_manager,
     %{admin_on_service: @service, service_study_year: 2, service_gender: false}, true},
    {"one of several grants covers it",
     [service: [{@service, [edit?: true]}, {@service, [manage_users?: true, export?: true]}]],
     %{admin_on_service: @service, service_allow_export: true}, true},
    {"same group", [group: [{@group, [manage_users?: true, edit?: true]}]],
     %{admin_on_group: @group, group_allow_edit: true, group_admin_on_users: true}, true},
    {"group flag the actor lacks", [group: [{@group, [manage_users?: true]}]],
     %{admin_on_group: @group, group_allow_record_attendance: true}, false},
    {"same area", [area: [{@area, [manage_users?: true, export?: true]}]],
     %{admin_on_area: @area, area_allow_export: true}, true},
    {"area flag the actor lacks", [area: [{@area, [manage_users?: true]}]],
     %{admin_on_area: @area, area_allow_edit: true}, false}
  ]

  describe "scope_manageable?/2" do
    for {name, grants, scope, expected} <- @cases do
      @grants grants
      @scope scope
      @expected expected

      test name do
        assert GrantAuthority.scope_manageable?(actor(@grants), @scope) == @expected
      end
    end

    test "manageAllUsers manages every scope" do
      actor = actor([], ["approved", "manageAllUsers"])

      assert GrantAuthority.scope_manageable?(actor, %{
               admin_on_group: @group,
               group_allow_edit: true
             })
    end

    test "the system manages every scope" do
      assert GrantAuthority.scope_manageable?(Actor.system(), %{admin_on_area: @area})
    end
  end
end
