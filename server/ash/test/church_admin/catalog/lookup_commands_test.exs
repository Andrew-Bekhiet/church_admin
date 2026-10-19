defmodule ChurchAdmin.Catalog.LookupCommandsTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Catalog
  alias ChurchAdmin.Catalog.{Church, Father, PersonType}
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Places.District

  @creates [
    {Church, :create_church},
    {Catalog.College, :create_college},
    {District, :create_district},
    {Father, :create_father},
    {Catalog.Hobby, :create_hobby},
    {Catalog.Job, :create_job},
    {PersonType, :create_person_type},
    {Catalog.Qualification, :create_qualification},
    {Catalog.School, :create_school},
    {Catalog.Tag, :create_tag}
  ]

  defp create(resource, action, attrs, actor) do
    resource |> Ash.Changeset.for_create(action, attrs, actor: actor) |> Ash.create()
  end

  defp seed_with_system_session(resource, attrs) do
    ChurchAdmin.DataCase.set_system_db_session()
    Ash.Seed.seed!(resource, attrs)
  end

  for {resource, action} <- @creates do
    @resource resource
    @action action

    test "#{action} returns the row that already carries the name", %{world: world} do
      existing = seed_with_system_session(@resource, %{name: "existing"})

      assert {:ok, created} =
               create(@resource, @action, %{name: "existing"}, actor(world, :approved_plain))

      assert created.id == existing.id

      assert @resource |> Ash.read!(authorize?: false) |> Enum.count(&(&1.name == "existing")) ==
               1
    end

    test "#{action} inserts a new name", %{world: world} do
      assert {:ok, created} =
               create(@resource, @action, %{name: "fresh"}, actor(world, :approved_plain))

      assert created.name == "fresh"
      assert Ash.get!(@resource, created.id, authorize?: false).name == "fresh"
    end

    test "#{action} is refused to a user who is not approved and to anonymous", %{world: world} do
      for kind <- [:unapproved, :anonymous] do
        assert {:error, %Ash.Error.Forbidden{}} =
                 create(@resource, @action, %{name: "denied"}, actor(world, kind))
      end

      refute @resource |> Ash.read!(authorize?: false) |> Enum.any?(&(&1.name == "denied"))
    end

    test "#{action} is open to the system actor" do
      assert {:ok, %{name: "by system"}} =
               create(@resource, @action, %{name: "by system"}, Actor.system())
    end
  end

  test "a created church and father are hidden and cannot be un-hidden by the command",
       %{world: world} do
    approved = actor(world, :approved_plain)

    assert {:ok, %{is_hidden: true} = church} =
             create(Church, :create_church, %{name: "c"}, approved)

    assert {:ok, %{is_hidden: true, church_id: church_id}} =
             create(Father, :create_father, %{name: "f", church_id: church.id}, approved)

    assert church_id == church.id

    assert {:error, %Ash.Error.Invalid{}} =
             create(Church, :create_church, %{name: "shown", is_hidden: false}, approved)
  end

  test "a created person type is hidden and not a family admin", %{world: world} do
    assert {:ok, %{is_hidden: true, is_family_admin: false, order: order}} =
             create(
               PersonType,
               :create_person_type,
               %{name: "role"},
               actor(world, :approved_plain)
             )

    assert is_integer(order)

    assert {:error, %Ash.Error.Invalid{}} =
             create(
               PersonType,
               :create_person_type,
               %{name: "admin role", is_family_admin: true},
               actor(world, :approved_plain)
             )
  end

  test "re-creating an existing hidden church leaves its flag alone", %{world: world} do
    existing = seed_with_system_session(Church, %{name: "open", is_hidden: false})

    assert {:ok, again} =
             create(Church, :create_church, %{name: "open"}, actor(world, :approved_plain))

    assert again.id == existing.id
    refute again.is_hidden
  end

  test "a college and a tag keep the extra columns the client sends", %{world: world} do
    approved = actor(world, :approved_plain)
    university = seed_with_system_session(Catalog.University, %{name: "uni"})

    assert {:ok, %{university_id: university_id}} =
             create(
               Catalog.College,
               :create_college,
               %{name: "col", university_id: university.id},
               approved
             )

    assert university_id == university.id
    assert {:ok, %{color: 7}} = create(Catalog.Tag, :create_tag, %{name: "t", color: 7}, approved)

    assert {:ok, %{color: 8}} =
             create(Catalog.Hobby, :create_hobby, %{name: "h", color: 8}, approved)
  end

  test "a person type whose next order is already used is reported as person-type/order-taken",
       %{world: world} do
    ChurchAdmin.DataCase.set_system_db_session()

    %{rows: [[taken]]} =
      ChurchAdmin.Repo.query!("select nextval('person_types_order_seq')")

    ChurchAdmin.Repo.query!(
      "insert into person_types (name, \"order\") values ('squatter', $1)",
      [taken]
    )

    ChurchAdmin.Repo.query!("select setval('person_types_order_seq', $1, false)", [taken])

    assert {:error, %Ash.Error.Invalid{errors: errors}} =
             create(
               PersonType,
               :create_person_type,
               %{name: "late"},
               actor(world, :approved_plain)
             )

    assert [%ChurchAdmin.Errors.DomainError{code: code, fields: [:order]}] = errors
    assert code == Codes.person_type_order_taken()
  end
end
