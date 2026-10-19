defmodule ChurchAdmin.Exports.WorkbookGoldenTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Activity.Edit
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Catalog.{Church, PersonType, Tag}
  alias ChurchAdmin.Exports.{Selection, Workbook}
  alias ChurchAdmin.Factory
  alias ChurchAdmin.People.{Contact, PersonTag}
  alias ChurchAdmin.Places.District
  alias ChurchAdmin.XlsxReader

  @all_sheets ~w(persons families stores streets areas classes groups services)
  @id_header ~r/(^|\.)u?id$/

  setup do
    {:ok, world: build_world!()}
  end

  defp build_world! do
    Factory.study_year!(1)
    Factory.study_year!(2)

    editor = Factory.user!(name: "خادم التعديل")
    exporter = Factory.user!()
    Factory.permissions!(exporter, ["approved", "readAllData", "exportAllData"])

    service =
      Factory.service!(
        name: "خدمة الشباب",
        color: 0xFF336699,
        study_year_from_id: 1,
        study_year_to_id: 2
      )

    group = Factory.group!(service, name: "مجموعة الأحد", validity: "[2026-01-01,2026-12-31)")

    class =
      Factory.class!(service,
        name: "فصل أولى",
        service_study_year: 1,
        service_study_year_to: 2,
        service_gender: true
      )

    area = Factory.area!(name: "منطقة 1", color: 0xFF00FF00)
    street = Factory.street!(area, name: "شارع النيل")
    district = seed!(District, %{name: "حي المعادي"})

    family =
      Factory.family!(
        name: "عائلة مينا",
        marriage_date: ~D[2015-06-01],
        notes: "ملاحظة"
      )

    store = Factory.store!(name: "متجر الخير", admin_family_id: family.id)

    address_attrs = %{
      area_id: area.id,
      street_id: street.id,
      district_id: district.id,
      house_code: "12",
      storey_number: 3,
      apartment_number: 7,
      geolocation: %{"type" => "Point", "coordinates" => [31.25, 30.0]}
    }

    Factory.address!(Map.put(address_attrs, :family_id, family.id))
    Factory.address!(Map.put(address_attrs, :store_id, store.id))

    father_type = seed!(PersonType, %{name: "الأب", is_family_admin: true})
    child_type = seed!(PersonType, %{name: "ابن"})
    church = seed!(Church, %{name: "كنيسة مار جرجس"})
    tag = seed!(Tag, %{name: "مميز"})

    child =
      Factory.person!(
        name: "مينا",
        family_id: family.id,
        person_type_id: child_type.id,
        church_id: church.id,
        birthdate: ~D[2000-05-17],
        color: 0xFF336699,
        study_year_id: 1
      )

    father =
      Factory.person!(
        name: "جورج",
        family_id: family.id,
        person_type_id: father_type.id
      )

    for person <- [child, father] do
      Factory.in_service!(person, service)
    end

    Factory.in_group!(child, group)
    seed!(PersonTag, %{person_id: child.id, tag_id: tag.id})

    seed!(Contact, %{
      person_id: child.id,
      phone: "+201001234567",
      is_main_phone: true,
      created_at: ~U[2026-01-01 00:00:01Z]
    })

    seed!(Contact, %{
      person_id: child.id,
      phone: "+201007654321",
      label: "عمل",
      created_at: ~U[2026-01-01 00:00:02Z]
    })

    seed!(Contact, %{
      person_id: father.id,
      phone: "+201111111111",
      is_main_phone: true,
      created_at: ~U[2026-01-01 00:00:03Z]
    })

    seed!(Edit, %{
      table: "persons",
      record_id: child.id,
      recorded_by: editor.uid,
      user_role: "user",
      time: ~U[2100-03-04 05:06:07.500000Z]
    })

    selection = %Selection{
      areas_ids: [area.id],
      services_ids: [service.id],
      classes_ids: [class.id],
      groups_ids: [group.id]
    }

    %{
      actor: ActorLoader.load(exporter.uid),
      selection: selection,
      records: %{
        service: service,
        group: group,
        class: class,
        area: area,
        street: street,
        family: family,
        store: store,
        child: child,
        father: father,
        editor: editor
      }
    }
  end

  defp build!(world) do
    assert {:ok, xlsx} = Workbook.build(world.actor, world.selection)
    xlsx
  end

  defp seed!(resource, attrs) do
    Ash.Seed.seed!(resource, attrs)
  end

  defp record(xlsx, sheet_name, name) do
    xlsx
    |> XlsxReader.sheet(sheet_name)
    |> XlsxReader.records()
    |> Enum.find(&(&1["الاسم"] == name))
  end

  defp column_name(count) when count <= 26, do: <<?A + count - 1>>

  defp column_name(count),
    do: column_name(div(count - 1, 26)) <> column_name(rem(count - 1, 26) + 1)

  test "one sheet per non-empty table, in the order of the export query", %{world: world} do
    assert world |> build!() |> XlsxReader.read() |> Enum.map(& &1.name) == @all_sheets
  end

  test "every sheet is right-to-left", %{world: world} do
    sheets = world |> build!() |> XlsxReader.read()

    assert Enum.all?(sheets, & &1.right_to_left?)
  end

  test "every sheet filters its whole header row and data range", %{world: world} do
    for sheet <- world |> build!() |> XlsxReader.read() do
      [header | rows] = sheet.rows

      assert sheet.autofilter == "A1:#{column_name(length(header))}#{length(rows) + 1}",
             "autofilter of #{sheet.name}"
    end
  end

  test "id columns come last in every sheet", %{world: world} do
    for sheet <- world |> build!() |> XlsxReader.read() do
      [header | _rows] = sheet.rows
      {ids, fields} = Enum.split_with(header, &Regex.match?(@id_header, &1))

      assert header == fields ++ ids, "id columns of #{sheet.name}"
      assert "id" in ids
    end
  end

  test "persons start with the viewable and phone columns and merge the phone columns of all rows",
       %{world: world} do
    [header | _rows] = world |> build!() |> XlsxReader.sheet("persons") |> Map.fetch!(:rows)

    assert Enum.take(header, 5) ==
             [
               "الاسم",
               "اللون",
               "رقم الهاتف",
               "أرقام الهواتف الأخرى: عمل",
               "رقم الهاتف (الأب)"
             ]

    assert "العنوان: الموقع" in header
    assert List.last(header) == "user.id"
  end

  test "a person row carries the mapped values", %{world: world} do
    xlsx = build!(world)
    %{child: child, family: family} = world.records

    assert %{
             "الاسم" => "مينا",
             "اللون" => "#336699",
             "رقم الهاتف" => "01001234567",
             "أرقام الهواتف الأخرى: عمل" => "01007654321",
             "رقم الهاتف (الأب)" => "01111111111",
             "العنوان: المنطقة" => "منطقة 1",
             "العنوان: الشارع" => "شارع النيل",
             "العنوان: الحي" => "حي المعادي",
             "العنوان: رقم العمارة" => "12",
             "العنوان: رقم الدور" => 3,
             "العنوان: رقم الشقة" => 7,
             "العنوان: الموقع" => "30,31.25",
             "تاريخ الميلاد" => "2000-05-17",
             "يوم وشهر الميلاد" => "05-17",
             "النوع" => "M",
             "الخدمات" => "خدمة الشباب",
             "المجموعات" => "مجموعة الأحد",
             "الشارات" => "مميز",
             "الكنيسة" => "كنيسة مار جرجس",
             "نوع الفرد في العائلة" => "ابن",
             "العائلة" => "عائلة مينا",
             "خادم؟" => false,
             "أخر تحديث البيانات" => "خادم التعديل",
             "أخر تحديث البيانات: الوقت" => "2100-03-04T05:06:07.5+00:00",
             "id" => child_id,
             "family.id" => family_id
           } = record(xlsx, "persons", "مينا")

    assert {child_id, family_id} == {child.id, family.id}
  end

  test "the father's row has no phone column of its own role", %{world: world} do
    father = record(build!(world), "persons", "جورج")

    assert father["رقم الهاتف"] == "01111111111"
    refute Map.has_key?(father, "رقم الهاتف (الأب)")
  end

  test "a family row", %{world: world} do
    assert %{
             "الحالة الروحية" => "married",
             "تاريخ الزواج" => "2015-06-01",
             "ملاحظات" => "ملاحظة",
             "المتاجر" => "متجر الخير",
             "العنوان: المنطقة" => "منطقة 1",
             "id" => id
           } = record(build!(world), "families", "عائلة مينا")

    assert id == world.records.family.id
  end

  test "a store row", %{world: world} do
    assert %{
             "العائلة المسؤولة" => "عائلة مينا",
             "العنوان: رقم الشقة" => 7,
             "id" => id
           } = record(build!(world), "stores", "متجر الخير")

    assert id == world.records.store.id
  end

  test "a street row lists its areas", %{world: world} do
    assert %{"المناطق" => "منطقة 1", "id" => id} =
             record(build!(world), "streets", "شارع النيل")

    assert id == world.records.street.id
  end

  test "an area row has only its name, color and id", %{world: world} do
    sheet = world |> build!() |> XlsxReader.sheet("areas")

    assert sheet.rows == [
             ["الاسم", "اللون", "id"],
             ["منطقة 1", "#00ff00", world.records.area.id]
           ]
  end

  test "a class row", %{world: world} do
    assert %{
             "السنة الدراسية: من" => from,
             "السنة الدراسية: إلى" => to,
             "النوع" => "M",
             "الخدمة" => "خدمة الشباب",
             "id" => id
           } = record(build!(world), "classes", "فصل أولى")

    assert id == world.records.class.id
    assert from =~ "year 1"
    assert to =~ "year 2"
  end

  test "a group row", %{world: world} do
    assert %{
             "validity" => "[2026-01-01,2026-12-31)",
             "الخدمة" => "خدمة الشباب",
             "id" => id
           } = record(build!(world), "groups", "مجموعة الأحد")

    assert id == world.records.group.id
  end

  test "a service row", %{world: world} do
    assert %{
             "اللون" => "#336699",
             "السنة الدراسية: من" => from,
             "السنة الدراسية: إلى" => to,
             "id" => id
           } = record(build!(world), "services", "خدمة الشباب")

    assert id == world.records.service.id
    assert from =~ "year 1"
    assert to =~ "year 2"
  end

  test "selecting only groups leaves out the families and stores", %{world: world} do
    selection = %Selection{groups_ids: [world.records.group.id]}
    assert {:ok, xlsx} = Workbook.build(world.actor, selection)

    sheets = xlsx |> XlsxReader.read() |> Enum.map(& &1.name)
    assert sheets == ~w(persons streets areas classes groups services)
  end

  test "a workbook with no rows still opens, with one empty persons sheet", %{world: world} do
    selection = %Selection{groups_ids: [Ash.UUID.generate()]}

    assert {:ok, xlsx} = Workbook.build(world.actor, selection)
    assert [%{name: "persons", right_to_left?: true, rows: [[]]}] = XlsxReader.read(xlsx)
  end
end
