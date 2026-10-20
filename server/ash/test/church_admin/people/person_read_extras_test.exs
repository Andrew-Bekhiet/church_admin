defmodule ChurchAdmin.People.PersonReadExtrasTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Activity.Visit
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Catalog.{Church, PersonType, ShammasLevel}
  alias ChurchAdmin.People.{Contact, Person}
  alias ChurchAdmin.Places.{Area, District, Street}
  alias ChurchAdmin.{ActivityWorld, AttendanceWorld, Factory}

  require Ash.Query

  defp read_person!(person, load) do
    Person
    |> Ash.Query.filter(id == ^person.id)
    |> Ash.Query.load(load)
    |> Ash.read_one!(actor: Actor.system())
  end

  describe "history aggregates and relationships" do
    setup do
      {:ok, world: ActivityWorld.build!()}
    end

    test "the last confession, kodas and visit are the latest of the person's own rows", %{
      world: world
    } do
      %{m1: m1, f2: f2} = world.records

      loaded_m1 =
        read_person!(m1, [:last_confession_day, :last_kodas_day, :last_visit_at])

      assert loaded_m1.last_confession_day == ActivityWorld.day_2()
      assert loaded_m1.last_kodas_day == ActivityWorld.day_2()
      assert loaded_m1.last_visit_at == ActivityWorld.at(200)

      loaded_f2 = read_person!(f2, [:last_confession_day, :last_visit_at, :last_call])

      assert loaded_f2.last_confession_day == ActivityWorld.day_1()
      assert loaded_f2.last_visit_at == ActivityWorld.at(200)
      assert loaded_f2.last_call == ActivityWorld.at(2)
    end

    test "a person without history has no last dates", %{world: world} do
      person = Factory.person!(family_id: world.records.f_misc.id)

      loaded =
        read_person!(person, [
          :last_confession_day,
          :last_kodas_day,
          :last_attended_at,
          :last_visit_at,
          :last_call
        ])

      assert [
               loaded.last_confession_day,
               loaded.last_kodas_day,
               loaded.last_attended_at,
               loaded.last_visit_at,
               loaded.last_call
             ] == List.duplicate(nil, 5)
    end

    test "visits of other tables sharing the person's id do not count", %{world: world} do
      Ash.Seed.seed!(Visit, %{
        table: "families",
        record_id: world.records.m1.id,
        time: ActivityWorld.at(900),
        recorded_by: world.recorded_by
      })

      assert read_person!(world.records.m1, :last_visit_at).last_visit_at ==
               ActivityWorld.at(200)
    end

    test "the person's histories and latest rows load by their domain names", %{world: world} do
      loaded =
        read_person!(world.records.m1, [
          :latest_confession,
          :latest_kodas,
          :latest_call,
          :latest_visit,
          :latest_edit,
          :last_edit,
          :confessions,
          :kodases,
          :calls,
          :visits,
          :edits
        ])

      assert loaded.latest_confession.time == ActivityWorld.day_2()
      assert loaded.latest_kodas.time == ActivityWorld.day_2()
      assert loaded.latest_call.time == ActivityWorld.at(100)
      assert loaded.latest_visit.time == ActivityWorld.at(200)
      assert DateTime.compare(loaded.latest_edit.time, ActivityWorld.at(250)) == :gt
      assert loaded.last_edit == loaded.latest_edit.time
      assert length(loaded.confessions) == 2
      assert length(loaded.kodases) == 2
      assert length(loaded.calls) == 2
      assert length(loaded.visits) == 2
      assert length(loaded.edits) >= 2
    end

    test "persons are filterable by their last dates", %{world: world} do
      cutoff = ~D[2026-03-05]

      older =
        Person
        |> Ash.Query.filter(last_confession_day <= ^cutoff)
        |> Ash.read!(actor: Actor.system(), page: false)

      assert world.records.f2.id in Enum.map(older, & &1.id)
      refute world.records.m1.id in Enum.map(older, & &1.id)
    end
  end

  describe "last attendance" do
    setup do
      {:ok, world: AttendanceWorld.build!()}
    end

    test "is the latest attendance record's time", %{world: world} do
      assert read_person!(world.records.m1, :last_attended_at).last_attended_at ==
               world.records.a_m1_later.datetime

      assert read_person!(world.records.f2, :last_attended_at).last_attended_at ==
               world.records.a_f2.datetime

      assert read_person!(world.records.self, :last_attended_at).last_attended_at == nil
    end
  end

  describe "main phone" do
    setup do
      family = Factory.family!()

      phones = [
        {"+201000000003", true},
        {"+201000000001", true},
        {"+201000000002", true}
      ]

      with_main =
        for {phone, main?} <- phones do
          person = Factory.person!(family_id: family.id)
          Ash.Seed.seed!(Contact, %{person_id: person.id, phone: phone, is_main_phone: main?})
          person
        end

      other = Factory.person!(family_id: family.id)

      Ash.Seed.seed!(Contact, %{
        person_id: other.id,
        phone: "+201000000009",
        is_main_phone: false
      })

      Ash.Seed.seed!(Contact, %{
        person_id: other.id,
        phone: "+201000000008",
        is_main_phone: true
      })

      without_phone = Factory.person!(family_id: family.id)

      {:ok, with_main: with_main, other: other, without_phone: without_phone}
    end

    test "is the number of the contact flagged as main", %{other: other, with_main: [first | _]} do
      assert read_person!(other, :main_phone).main_phone == "+201000000008"
      assert read_person!(first, :main_phone).main_phone == "+201000000003"
    end

    test "is nil without a contact", %{without_phone: person} do
      assert read_person!(person, :main_phone).main_phone == nil
    end

    test "sorts persons by it, those without a phone last", ctx do
      %{with_main: with_main, other: other, without_phone: without_phone} = ctx
      ids = Enum.map(with_main ++ [other, without_phone], & &1.id)

      sorted =
        Person
        |> Ash.Query.filter(id in ^ids)
        |> Ash.Query.sort(main_phone: :asc_nils_last)
        |> Ash.read!(actor: Actor.system(), page: false)

      [a, b, c] = with_main

      assert Enum.map(sorted, & &1.id) == [b.id, c.id, a.id, other.id, without_phone.id]
    end
  end

  describe "sort aggregates over related names and orders" do
    test "carry the related row's name or order" do
      church = Ash.Seed.seed!(Church, %{name: "كنيسة الأنبا"})
      level = Ash.Seed.seed!(ShammasLevel, %{name: "إبصالتس", order: 7})
      type = Ash.Seed.seed!(PersonType, %{name: "ابن"})
      study_year = Factory.study_year!(9)
      area = Ash.Seed.seed!(Area, %{name: "منطقة الأبحاث"})
      street = Ash.Seed.seed!(Street, %{name: "شارع الجيش"})
      district = Ash.Seed.seed!(District, %{name: "حي السلام"})
      family = Factory.family!(name: "عائلة الصبور")

      Factory.address!(
        family_id: family.id,
        area_id: area.id,
        street_id: street.id,
        district_id: district.id,
        house_code: "5"
      )

      person =
        Factory.person!(
          family_id: family.id,
          church_id: church.id,
          is_servant: true,
          serving_church_id: church.id,
          is_shammas: true,
          shammas_level_id: level.id,
          person_type_id: type.id,
          study_year_id: study_year.order
        )

      loaded =
        read_person!(person, [
          :family_name,
          :church_name,
          :serving_church_name,
          :shammas_level_order,
          :person_type_order,
          :study_year_order,
          :address_area_name,
          :address_street_name,
          :address_district_name,
          :address_full_address_text
        ])

      assert loaded.family_name == family.name
      assert loaded.church_name == church.name
      assert loaded.serving_church_name == church.name
      assert loaded.shammas_level_order == 7
      assert loaded.person_type_order == type.order
      assert loaded.study_year_order == 9
      assert loaded.address_area_name == area.name
      assert loaded.address_street_name == street.name
      assert loaded.address_district_name == district.name
      assert loaded.address_full_address_text == "5 ش الجيش حي السلام"
    end
  end
end
