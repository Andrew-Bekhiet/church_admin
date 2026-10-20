defmodule ChurchAdmin.People.SearchablePhonesTest do
  use ChurchAdmin.PeopleChildrenCase, async: false

  alias ChurchAdmin.People.{Contact, Person, ResolvedContact}

  # A person's searchable phones are their own contacts and the contacts of
  # their family's admins: claimed by a live admin-type member, or unclaimed
  # with an admin type. The contact of the soft-deleted admin `adm_deleted`
  # has no effective family, and `u_svc_plain` is not an admin type.
  @family_phones %{
    f_own: [:c_adm_own, :u_own_admin],
    f_svc: [:c_adm_svc, :u_svc_admin],
    f_grp: [:c_adm_grp, :u_grp_admin],
    f_area: [:c_adm_area, :u_area_admin],
    f_misc: [:c_adm_misc, :u_misc_admin]
  }

  @own_phones %{
    self: [:c_self],
    adm_own: [:c_adm_own],
    m1: [:c_m1],
    adm_svc: [:c_adm_svc],
    f2: [:c_f2],
    grp: [:c_grp],
    adm_grp: [:c_adm_grp],
    area_fam: [:c_area_fam],
    adm_area: [:c_adm_area],
    adm_misc: [:c_adm_misc],
    servant: [:c_servant]
  }

  @families %{
    self: :f_own,
    adm_own: :f_own,
    m1: :f_svc,
    relative: :f_svc,
    adm_svc: :f_svc,
    grp: :f_grp,
    adm_grp: :f_grp,
    area_fam: :f_area,
    adm_area: :f_area,
    unlinked: :f_misc,
    adm_misc: :f_misc
  }

  @persons Enum.uniq(Map.keys(@own_phones) ++ Map.keys(@families))

  defp candidates(person) do
    family_phones = Map.get(@family_phones, Map.get(@families, person), [])
    MapSet.new(Map.get(@own_phones, person, []) ++ family_phones)
  end

  defp phones_by_person(world, kind, query \\ Person) do
    contact_names =
      for {name, %Contact{id: id}} <- world.records, into: %{}, do: {id, name}

    query
    |> Ash.Query.load(:searchable_phones)
    |> Ash.read!(actor: actor(world, kind), page: false)
    |> Enum.map(fn person -> {person, person.searchable_phones} end)
    |> Enum.flat_map(fn {person, contacts} ->
      case [person] |> names(world) |> MapSet.to_list() do
        [name] -> [{name, MapSet.new(contacts, &Map.fetch!(contact_names, &1.id))}]
        [] -> []
      end
    end)
    |> Map.new()
  end

  for kind <- [:read_all, :service_open, :service_year, :group_read, :area_read, :approved_plain] do
    @kind kind

    test "#{kind} sees the phones of the persons it reads and nothing beyond the contact policies",
         %{world: world} do
      readable_contacts = visible_ids(world, ResolvedContact, @kind)
      phones = phones_by_person(world, @kind)

      for {person, found} <- phones, person in @persons do
        assert found == person |> candidates() |> MapSet.intersection(readable_contacts),
               "#{person}: #{inspect(MapSet.to_list(found))}"

        assert MapSet.subset?(found, readable_contacts)
      end

      assert phones |> Map.keys() |> Enum.filter(&(&1 in @persons)) |> Enum.sort() ==
               world |> visible(Person, @kind) |> Enum.filter(&(&1 in @persons)) |> Enum.sort()
    end
  end

  test "read_all finds every family member by the phone of the family's unclaimed admin contact",
       %{world: world} do
    phone = world.records.u_svc_admin.phone

    persons =
      Person
      |> Ash.Query.filter(exists(searchable_phones, phone == ^phone))
      |> Ash.read!(actor: actor(world, :read_all), page: false)
      |> names(world)

    assert persons == MapSet.new([:m1, :relative, :adm_svc])
  end

  test "a reader of one family member finds only the members it reads by a family admin phone",
       %{world: world} do
    phone = world.records.c_adm_svc.phone

    persons =
      Person
      |> Ash.Query.filter(exists(searchable_phones, phone == ^phone))
      |> Ash.read!(actor: actor(world, :service_open), page: false)
      |> names(world)

    assert persons == MapSet.new([:m1])
  end

  test "a plain family member's phone is found on that member alone", %{world: world} do
    phone = world.records.c_m1.phone

    persons =
      Person
      |> Ash.Query.filter(exists(searchable_phones, phone == ^phone))
      |> Ash.read!(actor: actor(world, :read_all), page: false)
      |> names(world)

    assert persons == MapSet.new([:m1])
  end

  test "the phone of a plain unclaimed type or of a deleted admin is nobody's searchable phone",
       %{world: world} do
    for contact <- [:u_svc_plain, :c_adm_deleted] do
      phone = world.records[contact].phone

      persons =
        Person
        |> Ash.Query.filter(exists(searchable_phones, phone == ^phone))
        |> Ash.read!(actor: actor(world, :read_all), page: false)
        |> names(world)

      assert persons == MapSet.new([]), "#{contact} was found"
    end
  end

  test "no actor kind finds a person by a phone it cannot read", %{world: world} do
    all_phones =
      for {_name, %Contact{phone: phone}} <- world.records, do: phone

    for kind <- ChurchAdmin.PeopleChildrenWorld.actor_kinds() do
      actor = actor(world, kind)
      readable = ResolvedContact |> Ash.read!(actor: actor, page: false) |> MapSet.new(& &1.phone)

      for phone <- all_phones, phone not in readable do
        found =
          Person
          |> Ash.Query.filter(exists(searchable_phones, phone == ^phone))
          |> Ash.read!(actor: actor, page: false)

        assert found == [], "#{kind} found someone by #{phone}"
      end
    end
  end
end
