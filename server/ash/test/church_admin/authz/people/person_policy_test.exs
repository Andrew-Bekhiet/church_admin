defmodule ChurchAdmin.Authz.People.PersonPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.People.Person

  @everyone_live [:self, :m1, :f2, :relative, :grp, :area_fam, :area_store, :unlinked, :servant]

  # {actor kind, persons read, persons with userCanEdit}, from the view's
  # person branches (authz-and-reads §2.1) and auth.user_can_edit_person.
  @expectations [
    {:anonymous, [], []},
    {:unapproved, [], []},
    {:unapproved_with_grants, [], []},
    {:approved_plain, [:self], [:self]},
    {:read_all, @everyone_live, []},
    {:export_all, @everyone_live, []},
    {:read_write, @everyone_live, @everyone_live},
    {:manage_users, @everyone_live, @everyone_live},
    {:service_open, [:m1, :f2], []},
    {:service_open_edit, [:m1, :f2], [:m1, :f2]},
    {:service_year, [:m1], []},
    {:service_gender, [:f2], []},
    {:service_write_related, [:m1, :f2, :relative], [:m1, :relative]},
    {:group_read, [:grp], []},
    {:group_edit, [:grp], [:grp]},
    {:area_read, [:area_fam, :area_store], []},
    {:area_edit, [:area_fam, :area_store], [:area_fam, :area_store]},
    {:service_year_edit, [:m1], [:m1]},
    {:service_admin_users, [:m1, :f2], [:m1, :f2]},
    {:service_record_servants, [:m1, :f2, :servant], []},
    {:servant, [:servant, :m1, :f2], [:servant]}
  ]

  for {kind, read, editable} <- @expectations do
    @kind kind
    @read MapSet.new(read)
    @editable MapSet.new(editable)

    test "#{kind} reads #{inspect(read)} and may edit #{inspect(editable)}", %{world: world} do
      assert visible(world, Person, @kind) == @read
      assert flagged(world, Person, @kind, :user_can_edit) == @editable
    end
  end

  test "userCanEdit is false, never nil, for an unlinked person outside the edit scope",
       %{world: world} do
    [person] =
      Person
      |> Ash.Query.filter(id == ^world.records.m1.id)
      |> Ash.Query.load(:user_can_edit)
      |> Ash.read!(actor: actor(world, :service_open), page: false)

    assert person.user_can_edit == false
  end

  test "the system actor reads every person, soft-deleted ones too, and may edit each",
       %{world: world} do
    persons =
      Person
      |> Ash.Query.load(:user_can_edit)
      |> Ash.read!(actor: ChurchAdmin.Authz.Actor.system(), page: false)

    assert names(persons, world) == MapSet.new([:deleted, :area_deleted | @everyone_live])
    assert Enum.all?(persons, & &1.user_can_edit)
  end

  test "a person's family members load without soft-deleted ones", %{world: world} do
    family =
      ChurchAdmin.People.Family
      |> Ash.Query.filter(id == ^world.records.f_misc.id)
      |> Ash.Query.load(:persons)
      |> Ash.read_one!(actor: actor(world, :read_all))

    assert names(family.persons, world) == MapSet.new([:unlinked])
  end

  test "filtering and sorting by userCanEdit sees the actor", %{world: world} do
    persons =
      Person
      |> Ash.Query.filter(user_can_edit == true)
      |> Ash.Query.sort(user_can_edit: :desc)
      |> Ash.read!(actor: actor(world, :service_write_related), page: false)

    assert names(persons, world) == MapSet.new([:m1, :relative])
  end
end
