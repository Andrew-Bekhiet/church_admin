defmodule ChurchAdmin.People.ContactDbLogicTest do
  @moduledoc """
  Pins what writing contacts through a person does besides storing rows: a
  family's contact goes to the sole member of its person type, one main
  phone per owner, a phone the owner already has merges into that row, a
  person who becomes the sole member of a type takes over the family's
  contacts of that type, and `updated_at` moves on update. The scenarios
  drive `ChurchAdmin.PersonWrites` and read the database.
  """

  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.{Factory, PersonWrites}

  setup do
    Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    manager = Factory.user!()
    Factory.permissions!(manager, ~w(approved readAllData writeAllData deleteData))
    family = Factory.family!()
    child = Factory.person_type!()
    parent = Factory.person_type!(is_family_admin: true)

    %{
      actor: ActorLoader.load(manager.uid),
      family: family,
      child: child,
      parent: parent,
      sole_child: Factory.person!(family_id: family.id, person_type_id: child.id),
      father: Factory.person!(family_id: family.id, person_type_id: parent.id)
    }
  end

  defp contacts_of_person(id) do
    "select phone::text, label, is_main_phone from contacts where person_id = $1::text::uuid"
    |> Repo.query!([id])
    |> Map.fetch!(:rows)
    |> Enum.sort()
  end

  defp unclaimed(family) do
    "select phone::text, person_type_id::text, is_main_phone from contacts where family_id = $1::text::uuid and person_id is null"
    |> Repo.query!([family.id])
    |> Map.fetch!(:rows)
    |> Enum.sort()
  end

  defp family_contacts!(ctx, contacts) do
    {:ok, _id} =
      PersonWrites.update_person(ctx.actor, ctx.father.id, %{family_contacts: contacts})
  end

  describe "a family's contact" do
    test "goes to the sole live member of its person type, and is not main when that member has one",
         ctx do
      Factory.contact!(person_id: ctx.sole_child.id, phone: "+201000000001", is_main_phone: true)

      family_contacts!(ctx, [
        %{phone: "+201000000002", person_type_id: ctx.child.id, is_main_phone: true}
      ])

      assert contacts_of_person(ctx.sole_child.id) == [
               ["+201000000001", nil, true],
               ["+201000000002", nil, false]
             ]

      assert unclaimed(ctx.family) == []
    end

    test "stays with the family while the type has two live members", ctx do
      Factory.person!(family_id: ctx.family.id, person_type_id: ctx.child.id)

      family_contacts!(ctx, [%{phone: "+201000000002", person_type_id: ctx.child.id}])

      assert unclaimed(ctx.family) == [["+201000000002", ctx.child.id, false]]
    end

    test "with a phone the member already has merges into that row: the label stays, main is or-ed",
         ctx do
      Factory.contact!(person_id: ctx.sole_child.id, phone: "+201000000001", label: "own")

      family_contacts!(ctx, [
        %{phone: "+201000000001", person_type_id: ctx.child.id, is_main_phone: true}
      ])

      assert contacts_of_person(ctx.sole_child.id) == [["+201000000001", "own", true]]
    end
  end

  describe "main phone" do
    test "a new main phone takes the flag from the owner's other contacts", ctx do
      {:ok, _id} =
        PersonWrites.update_person(ctx.actor, ctx.father.id, %{
          contacts: [%{phone: "+201000000001", is_main_phone: true}]
        })

      {:ok, _id} =
        PersonWrites.update_person(ctx.actor, ctx.father.id, %{
          contacts: [
            %{phone: "+201000000001", is_main_phone: true},
            %{phone: "+201000000002", is_main_phone: true}
          ]
        })

      assert contacts_of_person(ctx.father.id) == [
               ["+201000000001", nil, false],
               ["+201000000002", nil, true]
             ]
    end

    test "an unclaimed main phone takes the flag from the family's others of that type", ctx do
      Factory.person!(family_id: ctx.family.id, person_type_id: ctx.child.id)

      family_contacts!(ctx, [
        %{phone: "+201000000001", person_type_id: ctx.child.id, is_main_phone: true}
      ])

      family_contacts!(ctx, [
        %{phone: "+201000000001", person_type_id: ctx.child.id, is_main_phone: true},
        %{phone: "+201000000002", person_type_id: ctx.child.id, is_main_phone: true}
      ])

      assert unclaimed(ctx.family) == [
               ["+201000000001", ctx.child.id, false],
               ["+201000000002", ctx.child.id, true]
             ]
    end
  end

  describe "a person who becomes the sole member of a type" do
    setup ctx do
      other = Factory.family!()

      Factory.contact!(
        family_id: other.id,
        person_type_id: ctx.child.id,
        phone: "+201000000001",
        is_main_phone: true
      )

      Factory.contact!(family_id: other.id, person_type_id: ctx.child.id, phone: "+201000000002")
      Factory.contact!(family_id: other.id, person_type_id: ctx.parent.id, phone: "+201000000003")
      %{other: other}
    end

    test "on creation takes the family's contacts of that type, dropping phones it already has",
         ctx do
      {:ok, id} =
        PersonWrites.create_person(ctx.actor, %{
          name: "new",
          family_id: ctx.other.id,
          person_type_id: ctx.child.id,
          contacts: [%{phone: "+201000000002", label: "mine", is_main_phone: true}]
        })

      assert contacts_of_person(id) == [
               ["+201000000001", nil, false],
               ["+201000000002", "mine", true]
             ]

      assert unclaimed(ctx.other) == [["+201000000003", ctx.parent.id, false]]
    end

    test "by moving to the family takes them too", ctx do
      {:ok, _id} =
        PersonWrites.update_person(ctx.actor, ctx.sole_child.id, %{family_id: ctx.other.id})

      assert contacts_of_person(ctx.sole_child.id) == [
               ["+201000000001", nil, true],
               ["+201000000002", nil, false]
             ]
    end

    test "because a sibling was archived takes nothing", ctx do
      family = Factory.family!()
      first = Factory.person!(family_id: family.id, person_type_id: ctx.child.id)
      second = Factory.person!(family_id: family.id, person_type_id: ctx.child.id)
      Factory.contact!(family_id: family.id, person_type_id: ctx.child.id, phone: "+201000000001")

      {:ok, _id} = PersonWrites.delete_person(ctx.actor, second.id)

      assert unclaimed(family) == [["+201000000001", ctx.child.id, false]]
      assert contacts_of_person(first.id) == []
    end
  end

  test "updating a contact moves its updated_at", ctx do
    contact =
      Factory.contact!(
        person_id: ctx.father.id,
        phone: "+201000000001",
        updated_at: ~U[2020-01-01 00:00:00.000000Z]
      )

    {:ok, _id} =
      PersonWrites.update_person(ctx.actor, ctx.father.id, %{
        contacts: [%{id: contact.id, phone: "+201000000001", label: "work"}]
      })

    [[updated_at]] =
      Repo.query!("select updated_at from contacts where id = $1::text::uuid", [contact.id]).rows

    assert DateTime.compare(updated_at, ~U[2020-01-01 00:00:00.000000Z]) == :gt
  end
end
