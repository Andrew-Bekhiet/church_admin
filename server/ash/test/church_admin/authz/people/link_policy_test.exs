defmodule ChurchAdmin.Authz.People.LinkPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.People.{GroupMembership, ServiceMembership}
  alias ChurchAdmin.Places.Address

  # A membership needs both sides readable. The view does not filter deleted
  # persons in its service branch, so `ms_deleted` stays visible to s1 readers.
  @service_memberships [
    {:anonymous, []},
    {:approved_plain, []},
    {:read_all, [:ms_m1, :ms_f2, :ms_deleted]},
    {:service_open, [:ms_m1, :ms_f2, :ms_deleted]},
    {:service_year, [:ms_m1]},
    {:area_read, []}
  ]

  @group_memberships [
    {:anonymous, []},
    {:read_all, [:mg_grp, :mg_area_store]},
    {:group_read, [:mg_grp]},
    {:area_read, [:mg_area_store]},
    {:service_open, []}
  ]

  # An address follows its family's or its store's read scope.
  @addresses [
    {:anonymous, []},
    {:approved_plain, [:addr_own]},
    {:read_all, [:addr_own, :addr_area, :addr_store]},
    {:area_read, [:addr_area, :addr_store]},
    {:service_open, []}
  ]

  for {resource, expectations} <- [
        {ServiceMembership, @service_memberships},
        {GroupMembership, @group_memberships},
        {Address, @addresses}
      ],
      {kind, read} <- expectations do
    @resource resource
    @kind kind
    @read MapSet.new(read)

    test "#{inspect(resource)}: #{kind} reads #{inspect(read)}", %{world: world} do
      assert visible(world, @resource, @kind) == @read
    end
  end
end
