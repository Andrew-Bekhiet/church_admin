defmodule ChurchAdmin.Authz.People.FamilyPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.People.Family

  @every_family [:f_own, :f_svc, :f_grp, :f_area, :f_misc]

  # {actor kind, families read, families with userCanEdit}, from the view's
  # family branches (own, area, service persons, group persons; §2.1).
  # f_misc holds only the soft-deleted s1 member, so service grants miss it.
  @expectations [
    {:anonymous, [], []},
    {:unapproved, [], []},
    {:unapproved_with_grants, [], []},
    {:approved_plain, [:f_own], []},
    {:read_all, @every_family, []},
    {:read_write, @every_family, @every_family},
    {:service_open, [:f_svc], []},
    {:service_open_edit, [:f_svc], []},
    {:service_year, [:f_svc], []},
    {:service_gender, [], []},
    {:service_write_related, [:f_svc], [:f_svc]},
    {:group_read, [:f_grp], []},
    {:group_edit, [:f_grp], []},
    {:area_read, [:f_area], []},
    {:area_edit, [:f_area], [:f_area]},
    {:servant, [:f_svc], []}
  ]

  for {kind, read, editable} <- @expectations do
    @kind kind
    @read MapSet.new(read)
    @editable MapSet.new(editable)

    test "#{kind} reads #{inspect(read)} and may edit #{inspect(editable)}", %{world: world} do
      assert visible(world, Family, @kind) == @read
      assert flagged(world, Family, @kind, :user_can_edit) == @editable
    end
  end
end
