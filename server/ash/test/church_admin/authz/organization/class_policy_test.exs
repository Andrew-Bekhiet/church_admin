defmodule ChurchAdmin.Authz.Organization.ClassPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Organization.Class

  setup %{world: world}, do: {:ok, world: ChurchAdmin.OrgWorld.extend(world)}

  @every_live [:c_y1, :c_y12_f, :c_y2_m, :c_s2]
  @of_s1 [:c_y1, :c_y12_f, :c_y2_m]

  # {actor kind, classes read, classes with userCanEdit}, from the view's class
  # branches (authz-and-reads §2.1): a service grant reaches a class when its
  # year falls inside the class's range and genders are compatible; editing
  # needs the grant to cover the class (a female grant covers no class with an
  # unset gender, a year-1 grant only classes spanning year 1 alone).
  # An area reaches classes through the area's persons by year and gender,
  # whatever service the class belongs to.
  @expectations [
    {:anonymous, [], []},
    {:unapproved, [], []},
    {:unapproved_with_grants, [], []},
    {:approved_plain, [], []},
    {:read_all, @every_live, []},
    {:export_all, @every_live, []},
    {:read_write, @every_live, @every_live},
    {:manage_users, @every_live, @every_live},
    {:service_open, @of_s1, []},
    {:service_open_edit, @of_s1, @of_s1},
    {:service_admin_users, @of_s1, @of_s1},
    {:service_write_related, @of_s1, []},
    {:service_year, [:c_y1, :c_y12_f], []},
    {:service_year_edit, [:c_y1, :c_y12_f], [:c_y1]},
    {:service_gender, [:c_y1, :c_y12_f], []},
    {:class_admin, [:c_y1, :c_y12_f], []},
    {:group_read, [], []},
    {:group_edit, [], []},
    {:area_read, [:c_y1, :c_y12_f, :c_s2], []},
    {:area_edit, [:c_y1, :c_y12_f, :c_s2], []},
    {:servant, @of_s1, []}
  ]

  for {kind, read, editable} <- @expectations do
    @kind kind
    @read MapSet.new(read)
    @editable MapSet.new(editable)

    test "#{kind} reads #{inspect(read)} and may edit #{inspect(editable)}", %{world: world} do
      assert visible(world, Class, @kind) == @read
      assert flagged(world, Class, @kind, :user_can_edit) == @editable
    end
  end

  test "an area reads c_y12_f only through the soft-deleted person it holds (Q8)",
       %{world: world} do
    in_area = world.records.a1.id

    live_area_matches =
      Class
      |> Ash.Query.filter(
        exists(
          persons_of_matching_year_and_gender,
          is_nil(deleted_at) and
            (exists(address, area_id == ^in_area) or exists(store_address, area_id == ^in_area))
        )
      )
      |> Ash.read!(authorize?: false, page: false)

    assert names(live_area_matches, world) == MapSet.new([:c_y1, :c_s2, :c_deleted])
    assert :c_y12_f in visible(world, Class, :area_read)
  end

  test "a class with no gender has no admins, one with a gender is matched exactly",
       %{world: world} do
    classes =
      Class
      |> Ash.Query.filter(id in ^[world.records.c_y1.id, world.records.c_y12_f.id])
      |> Ash.Query.load(:admins)
      |> Ash.read!(actor: actor(world, :read_all), page: false)

    admins = Map.new(classes, &{&1.id, user_names(&1.admins, world)})

    assert admins[world.records.c_y1.id] == MapSet.new()
    assert admins[world.records.c_y12_f.id] == MapSet.new([:class_admin])
  end
end
