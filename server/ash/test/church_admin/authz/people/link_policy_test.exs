defmodule ChurchAdmin.Authz.People.LinkPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.People.{GroupMembership, ServiceMembership}
  alias ChurchAdmin.Places.Address

  # A membership needs both sides readable and a live person: the rows of the
  # soft-deleted person (`ms_deleted`, `mg_deleted`) are read by nobody.
  @service_memberships [
    {:anonymous, []},
    {:approved_plain, []},
    {:read_all, [:ms_m1, :ms_f2]},
    {:service_open, [:ms_m1, :ms_f2]},
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

  @archived_person_rows [
    {ServiceMembership, :ms_deleted},
    {GroupMembership, :mg_deleted}
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

  for {resource, row} <- @archived_person_rows do
    @resource resource
    @row row

    test "#{inspect(resource)}: only the system actor reads #{row}, the row of an archived person",
         %{world: world} do
      system_read =
        @resource
        |> Ash.read!(actor: ChurchAdmin.Authz.Actor.system(), page: false)
        |> names(world)

      assert @row in system_read

      for kind <- [:read_all, :service_open, :group_read, :area_read] do
        refute @row in visible(world, @resource, kind)
      end
    end
  end
end
