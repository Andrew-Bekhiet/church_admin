defmodule ChurchAdmin.Authz.Organization.ClassMembershipPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.People.ClassMembership

  setup %{world: world}, do: {:ok, world: ChurchAdmin.OrgWorld.extend(world)}

  @every_row [
    :cm_y1_m1,
    :cm_y1_deleted_y1,
    :cm_y12_f_f2,
    :cm_deleted_m1,
    :cm_deleted_deleted_y1
  ]

  @live_person_rows [:cm_y1_m1, :cm_y12_f_f2, :cm_deleted_m1]

  # {actor kind, class memberships read}. A row needs the class and the person
  # both in the actor's read scope (classes_persons.yaml#select). The view and
  # that rule ignore deletion, so rows of the soft-deleted class c_deleted are
  # readable; rows of the soft-deleted person deleted_y1 are read by nobody.
  @expectations [
    {:anonymous, []},
    {:unapproved, []},
    {:unapproved_with_grants, []},
    {:approved_plain, []},
    {:read_all, @live_person_rows},
    {:read_write, @live_person_rows},
    {:service_open, @live_person_rows},
    {:service_write_related, @live_person_rows},
    {:service_year, [:cm_y1_m1, :cm_deleted_m1]},
    {:service_gender, [:cm_y12_f_f2]},
    {:class_admin, []},
    {:group_read, []},
    {:area_read, []}
  ]

  for {kind, read} <- @expectations do
    @kind kind
    @read MapSet.new(read)

    test "#{kind} reads #{inspect(read)}", %{world: world} do
      assert visible(world, ClassMembership, @kind) == @read
    end
  end

  test "only the system actor reads the rows of an archived person", %{world: world} do
    system_read =
      ClassMembership
      |> Ash.read!(actor: ChurchAdmin.Authz.Actor.system(), page: false)
      |> names(world)

    assert system_read == MapSet.new(@every_row)
  end
end
