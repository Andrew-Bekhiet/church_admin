defmodule ChurchAdmin.Exports.RowMappers.FragmentsTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Activity.LatestEdit
  alias ChurchAdmin.Catalog.PersonType
  alias ChurchAdmin.Exports.RowMappers.Fragments
  alias ChurchAdmin.People.{Contact, ResolvedContact}
  alias ChurchAdmin.Places.{Address, Area, District, Street}

  defp contact(phone, created_at, attrs \\ []) do
    struct!(
      Contact,
      Keyword.merge(
        [phone: phone, created_at: created_at, is_main_phone: false, label: nil],
        attrs
      )
    )
  end

  defp at(second), do: DateTime.new!(~D[2026-01-01], Time.new!(0, 0, second))

  describe "viewable/1" do
    test "drops the alpha channel of the color and prefixes #" do
      assert Fragments.viewable(%{id: "i", name: "n", color: 0xFF336699}) ==
               [{"id", "i"}, {"name", "n"}, {"color", "#336699"}]
    end

    test "has no color for none, zero or opaque black" do
      for color <- [nil, 0, 0xFF000000] do
        assert {"color", nil} =
                 Fragments.viewable(%{id: "i", name: "n", color: color}) |> List.last()
      end
    end

    test "pads small colors to eight digits before dropping alpha" do
      assert {"color", "#0000ff"} =
               Fragments.viewable(%{id: "i", name: "n", color: 0xFF}) |> List.last()
    end
  end

  describe "contacts/1" do
    test "the main phone gets its own column in national format" do
      contacts = [contact("+201001234567", at(1), is_main_phone: true)]

      assert Fragments.contacts(contacts) == [{"mainPhone", "01001234567"}]
    end

    test "has an empty main phone column when no phone is main" do
      assert Fragments.contacts([contact("+201001234567", at(1))]) ==
               [{"mainPhone", nil}, {"otherPhones.رقم الهاتف 1", "01001234567"}]
    end

    test "other phones are labelled, unlabelled ones are numbered in creation order" do
      contacts = [
        contact("+201000000003", at(3)),
        contact("+201000000001", at(1), is_main_phone: true),
        contact("+201000000002", at(2), label: "work"),
        contact("+201000000004", at(4))
      ]

      assert Fragments.contacts(contacts) == [
               {"mainPhone", "01000000001"},
               {"otherPhones.work", "01000000002"},
               {"otherPhones.رقم الهاتف 1", "01000000003"},
               {"otherPhones.رقم الهاتف 2", "01000000004"}
             ]
    end

    test "phones sharing a label share a column, joined with a dash" do
      contacts = [
        contact("+201000000001", at(1), label: "home"),
        contact("+19175550100", at(2), label: "home")
      ]

      assert Fragments.contacts(contacts) ==
               [{"mainPhone", nil}, {"otherPhones.home", "01000000001 - +19175550100"}]
    end
  end

  describe "family_admin_contacts/2" do
    defp family_contact(phone, person_type, created_at, attrs) do
      struct!(
        ResolvedContact,
        Keyword.merge(
          [
            phone: phone,
            person_type: person_type,
            created_at: created_at,
            is_main_phone: false,
            person_id: nil
          ],
          attrs
        )
      )
    end

    test "labels each phone with the family role, ordered by role then main phone" do
      father = struct!(PersonType, name: "الأب", order: 1)
      mother = struct!(PersonType, name: "الأم", order: 2)

      contacts = [
        family_contact("+201000000003", mother, at(1), is_main_phone: true),
        family_contact("+201000000002", father, at(2), []),
        family_contact("+201000000001", father, at(3), is_main_phone: true),
        family_contact("+201000000009", father, at(4), person_id: "me")
      ]

      assert Fragments.family_admin_contacts(contacts, "me") == [
               {"رقم الهاتف (الأب)", "01000000001 - 01000000002"},
               {"رقم الهاتف (الأم)", "01000000003"}
             ]
    end
  end

  describe "address/1" do
    test "flattens the address with names and ids and a lat,lng location" do
      address =
        struct!(Address,
          area: struct!(Area, id: "a1", name: "منطقة"),
          street: struct!(Street, id: "s1", name: "شارع"),
          district: struct!(District, id: "d1", name: "حي"),
          house_code: "12",
          storey_number: 3,
          apartment_number: 7,
          geolocation: %{"type" => "Point", "coordinates" => [31.25, 30.0]}
        )

      assert Fragments.address(address) == [
               {"address.area.name", "منطقة"},
               {"address.area.id", "a1"},
               {"address.houseCode", "12"},
               {"address.street.name", "شارع"},
               {"address.street.id", "s1"},
               {"address.substreetName", nil},
               {"address.district.name", "حي"},
               {"address.district.id", "d1"},
               {"address.specialLandmark", ""},
               {"address.storeyNumber", 3},
               {"address.apartmentNumber", 7},
               {"address.geolocation", "30,31.25"}
             ]
    end

    test "has the same columns, empty, when there is no address" do
      assert [{"address.area.name", ""}, {"address.area.id", ""}, {"address.houseCode", nil} | _] =
               Fragments.address(nil)
    end
  end

  describe "audit_log/2" do
    test "names the user and the time of the latest change" do
      latest =
        struct!(LatestEdit,
          time: ~U[2026-03-04 05:06:07.120000Z],
          user: %{uid: "u1", name: "خادم"}
        )

      assert Fragments.audit_log("lastEdit", latest) == [
               {"lastEdit.name", "خادم"},
               {"lastEdit.time", "2026-03-04T05:06:07.12+00:00"},
               {"lastEdit.uid", "u1"}
             ]
    end

    test "is empty when nothing was recorded" do
      assert Fragments.audit_log("lastEdit", nil) ==
               [{"lastEdit.name", nil}, {"lastEdit.time", nil}, {"lastEdit.uid", nil}]
    end
  end

  describe "small fragments" do
    test "gender is M, F or U" do
      assert Fragments.gender(true) == [{"gender", "M"}]
      assert Fragments.gender(false) == [{"gender", "F"}]
      assert Fragments.gender(nil) == [{"gender", "U"}]
    end

    test "an object reference is a name and an id column" do
      assert Fragments.object_ref("church", %{id: "c", name: "n"}) ==
               [{"church.name", "n"}, {"church.id", "c"}]

      assert Fragments.object_ref("church", nil) == [{"church.name", nil}, {"church.id", nil}]
    end

    test "a list of references joins names and ids with commas" do
      assert Fragments.list_names_and_ids("tags", [%{id: "1", name: "a"}, %{id: "2", name: "b"}]) ==
               [{"tags", "a,b"}, {"tags.id", "1,2"}]
    end

    test "a study year adds its order" do
      assert Fragments.study_year("studyYear", %{id: "9", name: "n", order: 4}) ==
               [{"studyYear.name", "n"}, {"studyYear.id", "9"}, {"studyYear.order", 4}]
    end
  end
end
