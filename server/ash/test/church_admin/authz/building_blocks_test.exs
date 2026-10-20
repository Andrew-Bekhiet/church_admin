defmodule ChurchAdmin.Authz.BuildingBlocksTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Authz.Checks.{ApprovedWithPermission, CreatedInCommand}
  alias ChurchAdmin.TestDomain.{AuthzProbe, LookupProbe, PersonChildProbe}

  setup do
    AuthzProbe.create_tables!()
    :ok
  end

  describe "a create's filter policy" do
    test "runs after the insert and sees a link the action's after_action wrote" do
      assert {:ok, _probe} =
               AuthzProbe
               |> Ash.Changeset.for_create(:create_with_link, %{
                 name: "linked",
                 link_label: "approved link"
               })
               |> Ash.create(actor: Actor.system())
    end

    test "rolls the insert back when the written link does not satisfy it" do
      assert {:error, %Ash.Error.Forbidden{}} =
               AuthzProbe
               |> Ash.Changeset.for_create(:create_with_link, %{name: "x", link_label: "other"})
               |> Ash.create(actor: Actor.system())

      assert Ash.read!(AuthzProbe, authorize?: false) == []
    end
  end

  describe "RecheckAfterUpdate" do
    setup do
      {:ok, probe: Ash.Seed.seed!(AuthzProbe, %{name: "active"})}
    end

    test "lets an update through when the row still matches afterwards", %{probe: probe} do
      assert {:ok, %{name: "renamed"}} =
               probe |> Ash.Changeset.for_update(:rename, %{name: "renamed"}) |> Ash.update()
    end

    test "forbids and rolls back an update that moves the row out of the check",
         %{probe: probe} do
      assert {:error, %Ash.Error.Forbidden{}} =
               probe |> Ash.Changeset.for_update(:rename, %{name: "retired"}) |> Ash.update()

      assert [%{name: "active"}] = Ash.read!(AuthzProbe, authorize?: false)
    end
  end

  describe "RecordActor" do
    test "stamps the actor's uid" do
      uid = Ash.UUID.generate()

      assert {:ok, %{recorded_by: ^uid}} =
               AuthzProbe
               |> Ash.Changeset.for_create(:create_recorded, %{name: "x"},
                 actor: %Actor{uid: uid}
               )
               |> Ash.create()
    end

    test "leaves the attribute alone for the system actor" do
      assert {:ok, %{recorded_by: nil}} =
               AuthzProbe
               |> Ash.Changeset.for_create(:create_recorded, %{name: "x"}, actor: Actor.system())
               |> Ash.create()
    end
  end

  describe "InScope" do
    test "names meetings and history rows by their Scope function", %{world: world} do
      actor = actor(world, :service_year)

      check = fn resource, opts ->
        ChurchAdmin.Authz.Checks.InScope.filter(actor, %{resource: resource}, opts)
      end

      assert matching(
               world,
               ChurchAdmin.Attendance.Meeting,
               check.(nil, entity: :meeting, access: :admin)
             ) ==
               MapSet.new([:m_s1])

      assert matching(
               world,
               ChurchAdmin.Activity.Edit,
               check.(nil, entity: :history_record, access: :read)
             ) ==
               MapSet.new([:e_m1, :e_c_y1])
    end
  end

  describe "ApprovedWithPermission" do
    test "matches an approved user holding the permission, never an unapproved holder" do
      holds = MapSet.new(["approved", "writeAllData"])
      approved = %Actor{uid: Ash.UUID.generate(), approved?: true, permissions: holds}
      unapproved = %Actor{uid: Ash.UUID.generate(), permissions: MapSet.new(["writeAllData"])}

      assert ApprovedWithPermission.match?(approved, %{}, name: "writeAllData")
      refute ApprovedWithPermission.match?(approved, %{}, name: "deleteData")
      refute ApprovedWithPermission.match?(unapproved, %{}, name: "writeAllData")
      refute ApprovedWithPermission.match?(nil, %{}, name: "writeAllData")
    end
  end

  describe "CreatedInCommand" do
    test "matches an id the command remembered as created, for that kind only" do
      person_id = Ash.UUID.generate()
      context = CreatedInCommand.remember_created(%{}, :person, person_id)

      changeset =
        ChurchAdmin.People.ServiceMembership
        |> Ash.Changeset.new()
        |> Ash.Changeset.set_context(context)
        |> Ash.Changeset.force_change_attribute(:person_id, person_id)

      assert CreatedInCommand.match?(nil, %{subject: changeset},
               attribute: :person_id,
               kind: :person
             )

      refute CreatedInCommand.match?(nil, %{subject: changeset},
               attribute: :person_id,
               kind: :family
             )

      other = Ash.Changeset.force_change_attribute(changeset, :person_id, Ash.UUID.generate())
      refute CreatedInCommand.match?(nil, %{subject: other}, attribute: :person_id, kind: :person)
    end
  end

  describe "the Lookup fragment" do
    test "lets any onboarded actor read and only a holder of approved write" do
      probe = Ash.Seed.seed!(LookupProbe, %{name: "x"})

      approved = %Actor{
        uid: Ash.UUID.generate(),
        approved?: true,
        permissions: MapSet.new(["approved"])
      }

      assert [_probe] = Ash.read!(LookupProbe, actor: %Actor{uid: Ash.UUID.generate()})
      assert [] = Ash.read!(LookupProbe, actor: %Actor{})
      assert [] = Ash.read!(LookupProbe, actor: nil)

      assert {:ok, _} =
               probe
               |> Ash.Changeset.for_update(:update, %{name: "y"})
               |> Ash.update(actor: approved)

      assert {:error, %Ash.Error.Forbidden{}} =
               probe
               |> Ash.Changeset.for_update(:update, %{name: "z"})
               |> Ash.update(actor: %Actor{})
    end
  end

  describe "the PersonChild fragment" do
    test "shows rows of persons the actor reads", %{world: world} do
      hobby = Ash.Seed.seed!(ChurchAdmin.Catalog.Hobby, %{name: "chess"})

      for person <- [world.records.m1, world.records.grp] do
        Ash.Seed.seed!(PersonChildProbe, %{person_id: person.id, hobby_id: hobby.id})
      end

      person_ids =
        PersonChildProbe
        |> Ash.read!(actor: actor(world, :service_open))
        |> Enum.map(& &1.person_id)

      assert person_ids == [world.records.m1.id]
      assert Ash.read!(PersonChildProbe, actor: nil) == []
    end
  end
end
