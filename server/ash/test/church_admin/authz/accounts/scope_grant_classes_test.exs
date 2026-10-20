defmodule ChurchAdmin.Authz.Accounts.ScopeGrantClassesTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Accounts.ScopeGrant
  alias ChurchAdmin.Factory

  setup %{world: world} do
    world = ChurchAdmin.OrgWorld.extend(world)
    c_s2_y1_f = Factory.class!(world.records.s2, service_study_year: 1, service_gender: false)
    {:ok, world: put_in(world.records[:c_s2_y1_f], c_s2_y1_f)}
  end

  # {grant holder, classes of its service grant}: the grant's service's live
  # classes the grant covers (ClassCoverage); a class without a gender
  # is covered by a grant of either gender.
  # c_s2 and c_s2_y1_f (year 1 of another service) never belong to an s1 grant.
  @expectations [
    {:service_open_edit, [:c_y1, :c_y12_f, :c_y2_m]},
    {:service_year, [:c_y1, :c_y12_f]},
    {:service_gender, [:c_y1, :c_y12_f]},
    {:class_admin, [:c_y1, :c_y12_f]}
  ]

  for {kind, classes} <- @expectations do
    @kind kind
    @classes MapSet.new(classes)

    test "#{kind}'s grant lists the classes #{inspect(classes)}", %{world: world} do
      uid = Map.fetch!(world.users, @kind).uid

      [grant] =
        ScopeGrant
        |> Ash.Query.filter(uid == ^uid)
        |> Ash.Query.load(:classes)
        |> Ash.read!(actor: actor(world, :read_all), page: false)

      assert names(grant.classes, world) == @classes
    end
  end
end
