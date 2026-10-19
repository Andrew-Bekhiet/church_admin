defmodule ChurchAdmin.Places.LastActivityAggregatesTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.People.Family
  alias ChurchAdmin.Places.{Area, Store, Street}
  alias ChurchAdmin.{ActivityWorld, Factory}

  require Ash.Query

  setup do
    {:ok, world: ActivityWorld.build!()}
  end

  defp read!(resource, record, load) do
    resource
    |> Ash.Query.filter(id == ^record.id)
    |> Ash.Query.load(load)
    |> Ash.read_one!(actor: Actor.system())
  end

  @visited [{Area, :a1}, {Street, :st1}, {Family, :f_area}]
  @edited @visited ++ [{Store, :store1}, {Service, :s1}, {Class, :c_y1}, {Group, :g1}]

  for {resource, name} <- @edited do
    @resource resource
    @name name

    test "#{inspect(resource)} #{name}: last_edit is the latest edit's time", %{world: world} do
      loaded = read!(@resource, world.records[@name], [:last_edit, latest_edit: []])

      assert loaded.last_edit != nil
      assert loaded.last_edit == loaded.latest_edit.time
    end
  end

  for {resource, name} <- @visited do
    @resource resource
    @name name

    test "#{inspect(resource)} #{name}: last_visit is the latest visit's time", %{world: world} do
      loaded = read!(@resource, world.records[@name], [:last_visit, :visits])

      assert loaded.last_visit == ActivityWorld.at(200)
      assert Enum.any?(loaded.visits, &(&1.time == ActivityWorld.at(200)))
    end
  end

  test "a family's last father visit is its latest father visit", %{world: world} do
    loaded = read!(Family, world.records.f_area, [:last_visit, :last_father_visit, :edits])

    assert loaded.last_father_visit == ActivityWorld.at(300)
    assert loaded.last_visit == ActivityWorld.at(200)
    assert loaded.edits != []
  end

  test "a record nobody visited has no last visit", %{world: world} do
    area = Factory.area!()

    assert read!(Area, area, :last_visit).last_visit == nil
    assert world.records.a1.id != area.id
  end

  test "an area's visits are only those of table areas", %{world: world} do
    Ash.Seed.seed!(ChurchAdmin.Activity.Visit, %{
      table: "streets",
      record_id: world.records.a1.id,
      time: ActivityWorld.at(900),
      recorded_by: world.recorded_by
    })

    assert read!(Area, world.records.a1, :last_visit).last_visit == ActivityWorld.at(200)
  end

  test "services and groups sort by their default meeting's name", %{world: world} do
    %{s1: s1, g1: g1, m_s1: m_s1, m_g1: m_g1} = world.records
    Ash.Seed.update!(s1, %{default_meeting_id: m_s1.id})
    Ash.Seed.update!(g1, %{default_meeting_id: m_g1.id})

    assert read!(Service, s1, :default_meeting_name).default_meeting_name == m_s1.name
    assert read!(Group, g1, :default_meeting_name).default_meeting_name == m_g1.name
  end

  test "stores carry their admin family's name and address line", %{world: world} do
    %{store1: store1, f_own: f_own} = world.records
    Ash.Seed.update!(store1, %{admin_family_id: f_own.id})

    loaded = read!(Store, store1, [:admin_family_name, :address_full_address_text])

    assert loaded.admin_family_name == f_own.name
    assert loaded.address_full_address_text == ""
  end

  test "families carry their church's name and address line", %{world: world} do
    church = Ash.Seed.seed!(ChurchAdmin.Catalog.Church, %{name: "كنيسة مارجرجس"})
    family = Ash.Seed.update!(world.records.f_own, %{church_id: church.id})
    Ash.Seed.update!(world.records.addr_own, %{house_code: "9"})

    loaded = read!(Family, family, [:church_name, :address_full_address_text])

    assert loaded.church_name == church.name
    assert loaded.address_full_address_text == "9"
  end
end
