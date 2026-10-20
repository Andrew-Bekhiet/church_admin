defmodule ChurchAdmin.PeopleChildrenWorld do
  @moduledoc """
  `ChurchAdmin.AuthzWorld` plus the records the person child tables need:
  contacts, family relations, hobbies and tags. Every name is a key of
  `records`; the base world's names keep their meaning.

  Added on top of the base layout:

    * person types `admin_type` (family admin, held by the `adm_*` persons),
      `unclaimed_admin_type` (family admin, held by no person, so the
      baseline's claim trigger leaves unclaimed contacts of that type alone)
      and `plain_type`
    * family-admin persons `adm_own` (`f_own`), `adm_svc` and `adm_deleted`
      (soft-deleted, `f_svc`), `adm_grp` (`f_grp`), `adm_area` (`f_area`) and
      `adm_misc` (`f_misc`)
    * `c_<person>` claimed contacts and `u_<family>_<kind>` unclaimed ones;
      the claimed contacts of persons without a family-admin type are the
      main phones (`persons_main_contacts` rows)
    * deleted family `f_deleted`, addressed in `a1`, and the relations
      `r1`..`r5` (parent to child) listed in `relations/0`
    * `{:ph, <person>}` / `{:pt, <person>}` hobby and tag rows
    * two more actor kinds: `service_and_group` and `group_and_area`
  """

  alias ChurchAdmin.{AuthzWorld, Factory}
  alias ChurchAdmin.Catalog.{Hobby, PersonType, Tag}
  alias ChurchAdmin.People.{Contact, FamilyRelation, PersonHobby, PersonTag}

  @extra_actor_kinds [:service_and_group, :group_and_area]

  @hobby_owners [:self, :m1, :f2, :grp, :deleted, :area_fam, :servant, :adm_svc]

  def actor_kinds, do: AuthzWorld.actor_kinds() ++ @extra_actor_kinds

  def hobby_owners, do: @hobby_owners

  def build! do
    base = AuthzWorld.build!()
    %{s1: s1, g1: g1, a1: a1} = base.records

    users = Map.merge(base.users, extra_users!(s1, g1, a1))
    types = person_types!()
    persons = family_admin_persons!(base.records, types)
    records_without_deleted_family = base.records |> Map.merge(types) |> Map.merge(persons)

    f_deleted = Factory.family!(deleted_at: Factory.deleted_at())
    Factory.address!(family_id: f_deleted.id, area_id: a1.id)
    records = Map.put(records_without_deleted_family, :f_deleted, f_deleted)

    records
    |> Map.merge(contacts!(records))
    |> then(&Map.merge(&1, relations!(&1)))
    |> then(&Map.merge(&1, hobbies_and_tags!(&1)))
    |> then(&%{records: &1, users: users})
  end

  defp extra_users!(s1, g1, a1) do
    service_and_group = Factory.user!()
    group_and_area = Factory.user!()

    for user <- [service_and_group, group_and_area],
        do: Factory.permissions!(user, ["approved"])

    Factory.grant!(service_and_group, :service, s1.id)
    Factory.grant!(service_and_group, :group, g1.id)
    Factory.grant!(group_and_area, :group, g1.id)
    Factory.grant!(group_and_area, :area, a1.id)

    %{service_and_group: service_and_group, group_and_area: group_and_area}
  end

  defp person_types! do
    %{
      admin_type: seed!(PersonType, %{name: unique("admin type"), is_family_admin: true}),
      unclaimed_admin_type:
        seed!(PersonType, %{name: unique("unclaimed admin type"), is_family_admin: true}),
      plain_type: seed!(PersonType, %{name: unique("plain type")})
    }
  end

  defp family_admin_persons!(records, %{admin_type: admin_type}) do
    admin = fn family, attrs ->
      Factory.person!([family_id: family.id, person_type_id: admin_type.id] ++ attrs)
    end

    %{
      adm_own: admin.(records.f_own, []),
      adm_svc: admin.(records.f_svc, []),
      adm_deleted: admin.(records.f_svc, deleted_at: Factory.deleted_at()),
      adm_grp: admin.(records.f_grp, []),
      adm_area: admin.(records.f_area, []),
      adm_misc: admin.(records.f_misc, [])
    }
  end

  defp contacts!(records) do
    main_phone_contacts = [
      m1: :c_m1,
      self: :c_self,
      f2: :c_f2,
      grp: :c_grp,
      area_fam: :c_area_fam,
      servant: :c_servant,
      deleted: :c_deleted
    ]

    other_contacts = [
      adm_own: :c_adm_own,
      adm_svc: :c_adm_svc,
      adm_deleted: :c_adm_deleted,
      adm_grp: :c_adm_grp,
      adm_area: :c_adm_area,
      adm_misc: :c_adm_misc
    ]

    claimed =
      for {owner, name} <- main_phone_contacts ++ other_contacts, into: %{} do
        contact =
          seed!(Contact, %{
            person_id: Map.fetch!(records, owner).id,
            phone: phone(),
            is_main_phone: Keyword.has_key?(main_phone_contacts, owner)
          })

        {name, contact}
      end

    unclaimed = [
      {:u_svc_admin, :f_svc, :unclaimed_admin_type, true},
      {:u_svc_plain, :f_svc, :plain_type, false},
      {:u_own_admin, :f_own, :unclaimed_admin_type, false},
      {:u_grp_admin, :f_grp, :unclaimed_admin_type, false},
      {:u_area_admin, :f_area, :unclaimed_admin_type, false},
      {:u_misc_admin, :f_misc, :unclaimed_admin_type, false}
    ]

    Enum.reduce(unclaimed, claimed, fn {name, family, type, main?}, acc ->
      contact =
        seed!(Contact, %{
          family_id: Map.fetch!(records, family).id,
          person_type_id: Map.fetch!(records, type).id,
          phone: phone(),
          is_main_phone: main?
        })

      Map.put(acc, name, contact)
    end)
  end

  @doc "`r1`..`r5` as `{name, parent family, child family}`."
  def relations do
    [
      {:r1, :f_svc, :f_grp},
      {:r2, :f_area, :f_own},
      {:r3, :f_svc, :f_misc},
      {:r4, :f_grp, :f_area},
      {:r5, :f_area, :f_deleted}
    ]
  end

  defp relations!(records) do
    Map.new(relations(), fn {name, parent, child} ->
      relation =
        seed!(FamilyRelation, %{
          parent_family_id: Map.fetch!(records, parent).id,
          child_family_id: Map.fetch!(records, child).id
        })

      {name, relation}
    end)
  end

  defp hobbies_and_tags!(records) do
    hobbies =
      for name <- [:h1, :h2], into: %{}, do: {name, seed!(Hobby, %{name: unique("hobby")})}

    tags = for name <- [:t1, :t2], into: %{}, do: {name, seed!(Tag, %{name: unique("tag")})}

    links =
      for {owner, index} <- Enum.with_index(@hobby_owners), reduce: %{} do
        acc ->
          hobby = if rem(index, 2) == 0, do: hobbies.h1, else: hobbies.h2
          tag = if rem(index, 2) == 0, do: tags.t1, else: tags.t2
          person_id = Map.fetch!(records, owner).id

          acc
          |> Map.put(
            {:ph, owner},
            seed!(PersonHobby, %{person_id: person_id, hobby_id: hobby.id})
          )
          |> Map.put({:pt, owner}, seed!(PersonTag, %{person_id: person_id, tag_id: tag.id}))
      end

    links |> Map.merge(hobbies) |> Map.merge(tags)
  end

  defp seed!(resource, attrs) do
    Ash.Seed.seed!(resource, attrs)
  end

  defp unique(prefix), do: "#{prefix} #{System.unique_integer([:positive])}"

  defp phone, do: "+2010#{String.pad_leading("#{System.unique_integer([:positive])}", 8, "0")}"
end
