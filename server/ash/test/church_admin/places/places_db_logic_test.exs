defmodule ChurchAdmin.Places.PlacesDbLogicTest do
  @moduledoc """
  Pins what writing areas, streets and stores does besides storing the row:
  soft delete, edit history, the geography sync of `areas_streets` and the
  invariants that held at commit. The scenarios drive `ChurchAdmin.PlacesWrites`
  and read the database, so they hold for whoever implements those rules.
  """

  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.{Factory, PlacesWorld, PlacesWrites}

  @cell_0 PlacesWorld.cell_polygon(0)
  @cell_1 PlacesWorld.cell_polygon(1)
  @cell_2 PlacesWorld.cell_polygon(2)
  @line_in_0 PlacesWorld.line([{31.203, 30.005}, {31.217, 30.005}])
  @line_in_1 PlacesWorld.line([{31.223, 30.005}, {31.237, 30.005}])
  @line_across_0_and_1 PlacesWorld.line([{31.212, 30.010}, {31.228, 30.010}])
  @line_in_2 PlacesWorld.line([{31.243, 30.005}, {31.257, 30.005}])
  @line_nowhere PlacesWorld.line([{40.0, 40.0}, {40.1, 40.0}])

  setup do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved readAllData writeAllData deleteData))

    %{
      user: user,
      actor: ActorLoader.load(user.uid),
      system: Actor.system(),
      family: Factory.family!()
    }
  end

  defp rows(sql, params \\ []), do: Repo.query!(sql, params).rows

  defp row(table, id) do
    [row] =
      rows(
        "select deleted_at is not null, deleted_by::text from #{table} where id = $1::text::uuid",
        [id]
      )

    row
  end

  defp exists?(table, id),
    do: rows("select 1 from #{table} where id = $1::text::uuid", [id]) != []

  defp edits(id) do
    "select \"table\", recorded_by::text, user_role from history.edit_history where record_id = $1::text::uuid"
    |> rows([id])
    |> Enum.sort()
  end

  defp streets_of(area_id) do
    "select street_id::text from areas_streets where area_id = $1::text::uuid"
    |> rows([area_id])
    |> List.flatten()
    |> Enum.sort()
  end

  defp areas_of(street_id) do
    "select area_id::text from areas_streets where street_id = $1::text::uuid"
    |> rows([street_id])
    |> List.flatten()
    |> Enum.sort()
  end

  defp area!(actor, bounds \\ nil) do
    {:ok, id} = PlacesWrites.create_area(actor, %{name: "area", bounds: bounds})
    id
  end

  defp street!(actor, line, areas \\ []) do
    {:ok, id} = PlacesWrites.create_street(actor, %{name: "street", line: line, areas: areas})
    id
  end

  defp store!(actor, family) do
    {:ok, id} = PlacesWrites.create_store(actor, %{name: "store", admin_family_id: family.id})
    id
  end

  defp address(area_id, street_id),
    do: %{area_id: area_id, street_id: street_id, country_iso_code: "EG"}

  describe "soft delete" do
    test "a user's delete keeps the area and stamps who deleted it", %{actor: actor, user: user} do
      id = area!(actor)

      assert {:ok, ^id} = PlacesWrites.delete_area(actor, id)
      assert row("areas", id) == [true, user.uid]
    end

    test "a user's delete keeps the street and stamps who deleted it", %{actor: actor, user: user} do
      id = street!(actor, @line_in_0, [area!(actor)])

      assert {:ok, ^id} = PlacesWrites.delete_street(actor, id)
      assert row("streets", id) == [true, user.uid]
    end

    test "a user's delete keeps the store and stamps who deleted it", %{
      actor: actor,
      user: user,
      family: family
    } do
      id = store!(actor, family)

      assert {:ok, ^id} = PlacesWrites.delete_store(actor, id)
      assert row("stores", id) == [true, user.uid]
    end

    test "the system actor's delete removes the area with its street links", %{
      actor: actor,
      system: system
    } do
      area_id = area!(actor, @cell_0)
      street_id = street!(actor, @line_in_0)
      assert streets_of(area_id) == [street_id]

      assert {:ok, ^area_id} = PlacesWrites.hard_delete_area(system, area_id)
      refute exists?("areas", area_id)
      assert areas_of(street_id) == []
    end

    test "the system actor's delete removes the street", %{actor: actor, system: system} do
      id = street!(actor, @line_in_0, [area!(actor)])

      assert {:ok, ^id} = PlacesWrites.hard_delete_street(system, id)
      refute exists?("streets", id)
    end

    test "the system actor's delete removes the store", %{
      actor: actor,
      system: system,
      family: family
    } do
      id = store!(actor, family)

      assert {:ok, ^id} = PlacesWrites.hard_delete_store(system, id)
      refute exists?("stores", id)
    end
  end

  describe "edit history" do
    test "an area records its creation, each update and its deletion by the acting user", %{
      actor: actor,
      user: user
    } do
      id = area!(actor)
      edit = ["areas", user.uid, "user"]
      assert edits(id) == [edit]

      PlacesWrites.update_area(actor, id, %{name: "renamed"})
      assert edits(id) == [edit, edit]

      PlacesWrites.delete_area(actor, id)
      assert edits(id) == [edit, edit, edit]
    end

    test "an update that changes nothing is still recorded", %{actor: actor, user: user} do
      id = area!(actor)

      PlacesWrites.update_area(actor, id, %{})

      assert edits(id) == [["areas", user.uid, "user"], ["areas", user.uid, "user"]]
    end

    test "a street records its creation, each update and its deletion", %{
      actor: actor,
      user: user
    } do
      id = street!(actor, @line_in_0, [area!(actor)])
      edit = ["streets", user.uid, "user"]
      assert edits(id) == [edit]

      PlacesWrites.update_street(actor, id, %{name: "renamed"})
      PlacesWrites.delete_street(actor, id)

      assert edits(id) == [edit, edit, edit]
    end

    test "a store records its creation, each update and its deletion, and its address nothing",
         %{actor: actor, user: user} do
      area_id = area!(actor, @cell_0)
      street_id = street!(actor, @line_in_0)

      {:ok, id} =
        PlacesWrites.create_store(actor, %{
          name: "store",
          address: address(area_id, street_id)
        })

      edit = ["stores", user.uid, "user"]
      assert edits(id) == [edit]

      PlacesWrites.update_store(actor, id, %{name: "renamed", address: %{special_landmark: "x"}})
      PlacesWrites.delete_store(actor, id)

      assert edits(id) == [edit, edit, edit]
      assert rows("select 1 from history.edit_history where \"table\" = 'addresses'") == []
    end

    test "the system actor's writes record no user and the admin role", %{system: system} do
      id = area!(system)

      assert edits(id) == [["areas", nil, "admin"]]
    end

    test "a hard delete records nothing", %{actor: actor, system: system} do
      id = area!(actor)
      PlacesWrites.hard_delete_area(system, id)

      assert edits(id) == [["areas", actor.uid, "user"]]
    end
  end

  describe "geography sync" do
    test "a new area takes in the streets that touch it, deleted ones included", %{
      actor: actor
    } do
      far_area = area!(actor)
      inside = street!(actor, @line_in_0, [far_area])
      crossing = street!(actor, @line_across_0_and_1, [far_area])
      outside = street!(actor, @line_in_2, [far_area])
      deleted = street!(actor, @line_in_0, [far_area])
      {:ok, ^deleted} = PlacesWrites.delete_street(actor, deleted)

      area_id = area!(actor, @cell_0)

      assert streets_of(area_id) == Enum.sort([inside, crossing, deleted])
      refute outside in streets_of(area_id)
    end

    test "a new street joins the areas it touches, deleted ones included", %{actor: actor} do
      area_0 = area!(actor, @cell_0)
      area_1 = area!(actor, @cell_1)
      area_2 = area!(actor, @cell_2)
      deleted_area = area!(actor, @cell_0)
      {:ok, ^deleted_area} = PlacesWrites.delete_area(actor, deleted_area)

      across = street!(actor, @line_across_0_and_1)

      assert areas_of(across) == Enum.sort([area_0, area_1, deleted_area])
      refute area_2 in areas_of(across)
    end

    test "a street without a line joins no area on its own", %{actor: actor} do
      area_id = area!(actor, @cell_0)
      street_id = street!(actor, nil, [area_id])

      assert areas_of(street_id) == [area_id]
      assert PlacesWrites.update_area(actor, area_id, %{bounds: @cell_1}) == {:ok, area_id}
      assert areas_of(street_id) == [area_id]
    end

    test "moving an area's bounds drops the streets that left and adds the ones that arrived",
         %{actor: actor} do
      area_id = area!(actor, @cell_0)
      in_0 = street!(actor, @line_in_0)
      in_1 = street!(actor, @line_in_1, [area!(actor, @cell_1)])
      assert streets_of(area_id) == [in_0]

      {:ok, ^area_id} = PlacesWrites.update_area(actor, area_id, %{bounds: @cell_1})

      assert streets_of(area_id) == [in_1]
      assert areas_of(in_0) == []
    end

    test "emptying an area's bounds drops its links to streets that have a line", %{
      actor: actor
    } do
      area_id = area!(actor, @cell_0)
      with_line = street!(actor, @line_in_0)
      without_line = street!(actor, nil, [area_id])
      assert streets_of(area_id) == Enum.sort([with_line, without_line])

      {:ok, ^area_id} = PlacesWrites.update_area(actor, area_id, %{bounds: nil})

      assert streets_of(area_id) == [without_line]
    end

    test "an update that leaves the bounds alone keeps even a link the geography would not make",
         %{actor: actor} do
      area_id = area!(actor, @cell_0)
      elsewhere = street!(actor, @line_in_2, [area_id])

      {:ok, ^area_id} = PlacesWrites.update_area(actor, area_id, %{name: "renamed"})

      assert streets_of(area_id) == [elsewhere]
    end

    test "moving a street's line drops the areas it left and adds the ones it reached", %{
      actor: actor
    } do
      area_0 = area!(actor, @cell_0)
      area_1 = area!(actor, @cell_1)
      street_id = street!(actor, @line_in_0)
      assert areas_of(street_id) == [area_0]

      {:ok, ^street_id} = PlacesWrites.update_street(actor, street_id, %{line: @line_in_1})

      assert areas_of(street_id) == [area_1]
    end

    test "an update that leaves the line alone keeps even a link the geography would not make",
         %{actor: actor} do
      area_2 = area!(actor, @cell_2)
      street_id = street!(actor, @line_in_0, [area_2, area!(actor, @cell_0)])

      {:ok, ^street_id} = PlacesWrites.update_street(actor, street_id, %{name: "renamed"})

      assert area_2 in areas_of(street_id)
    end

    test "explicit areas are added to and removed from the links the geography made", %{
      actor: actor
    } do
      area_0 = area!(actor, @cell_0)
      area_2 = area!(actor, @cell_2)
      street_id = street!(actor, @line_in_0, [area_2])
      assert areas_of(street_id) == Enum.sort([area_0, area_2])

      {:ok, ^street_id} = PlacesWrites.update_street(actor, street_id, %{areas: [area_0]})
      assert areas_of(street_id) == [area_0]

      {:ok, ^street_id} = PlacesWrites.update_street(actor, street_id, %{areas: [area_2]})
      assert areas_of(street_id) == [area_2]
    end

    test "only the difference from the stored areas is applied, after the geography, when the line moves",
         %{actor: actor} do
      area_0 = area!(actor, @cell_0)
      area_1 = area!(actor, @cell_1)
      area_2 = area!(actor, @cell_2)
      street_id = street!(actor, @line_in_0)

      {:ok, ^street_id} =
        PlacesWrites.update_street(actor, street_id, %{
          line: @line_in_1,
          areas: [area_0, area_2]
        })

      assert areas_of(street_id) == Enum.sort([area_1, area_2])
    end
  end

  describe "street area invariant" do
    test "a street whose line touches an area is accepted", %{actor: actor} do
      area!(actor, @cell_0)

      assert {:ok, _id} = PlacesWrites.create_street(actor, %{name: "s", line: @line_in_0})
    end

    test "a street that touches no area and names none is rejected and nothing is written", %{
      actor: actor
    } do
      area!(actor, @cell_0)

      assert PlacesWrites.create_street(actor, %{name: "s", line: @line_nowhere}) ==
               {:error, Codes.street_area_required()}

      assert rows("select 1 from streets") == []
    end

    test "a street without a line is accepted when it names an area", %{actor: actor} do
      area_id = area!(actor)

      assert {:ok, _id} = PlacesWrites.create_street(actor, %{name: "s", areas: [area_id]})

      assert PlacesWrites.create_street(actor, %{name: "s"}) ==
               {:error, Codes.street_area_required()}
    end

    test "moving a street's line away from every area is rejected", %{actor: actor} do
      street_id = street!(actor, @line_in_0, [area!(actor, @cell_0)])

      assert PlacesWrites.update_street(actor, street_id, %{line: @line_nowhere}) ==
               {:error, Codes.street_area_required()}
    end

    test "an update that leaves the line alone is not checked", %{actor: actor} do
      area_2 = area!(actor, @cell_2)
      street_id = street!(actor, @line_in_0, [area_2])
      {:ok, ^street_id} = PlacesWrites.update_street(actor, street_id, %{areas: [area_2]})

      assert {:ok, ^street_id} = PlacesWrites.update_street(actor, street_id, %{name: "renamed"})
    end
  end

  describe "address invariant" do
    setup %{actor: actor} do
      area_id = area!(actor, @cell_0)
      street_id = street!(actor, @line_in_0)
      other_area_id = area!(actor, @cell_2)
      %{area_id: area_id, street_id: street_id, other_area_id: other_area_id}
    end

    test "a store address on a street of its area is accepted", ctx do
      assert {:ok, _id} =
               PlacesWrites.create_store(ctx.actor, %{
                 name: "s",
                 address: address(ctx.area_id, ctx.street_id)
               })
    end

    test "an address on a street outside its area is rejected", ctx do
      assert PlacesWrites.create_store(ctx.actor, %{
               name: "s",
               address: address(ctx.other_area_id, ctx.street_id)
             }) == {:error, Codes.address_street_outside_area()}
    end

    test "an address without an area or without a street is rejected", ctx do
      for incomplete <- [
            %{street_id: ctx.street_id, country_iso_code: "EG"},
            %{area_id: ctx.area_id, country_iso_code: "EG"}
          ] do
        assert PlacesWrites.create_store(ctx.actor, %{name: "s", address: incomplete}) ==
                 {:error, Codes.address_street_outside_area()}
      end
    end

    test "moving an address to a street outside its area is rejected", ctx do
      {:ok, store_id} =
        PlacesWrites.create_store(ctx.actor, %{
          name: "s",
          address: address(ctx.area_id, ctx.street_id)
        })

      assert PlacesWrites.update_store(ctx.actor, store_id, %{
               address: %{area_id: ctx.other_area_id}
             }) == {:error, Codes.address_street_outside_area()}
    end
  end

  describe "store anchor invariant" do
    setup %{actor: actor} do
      area_id = area!(actor, @cell_0)
      %{area_id: area_id, street_id: street!(actor, @line_in_0)}
    end

    test "a store with an admin family or with an address is accepted", ctx do
      assert {:ok, _id} =
               PlacesWrites.create_store(ctx.actor, %{name: "s", admin_family_id: ctx.family.id})

      assert {:ok, _id} =
               PlacesWrites.create_store(ctx.actor, %{
                 name: "s",
                 address: address(ctx.area_id, ctx.street_id)
               })
    end

    test "a store with neither is rejected and nothing is written", ctx do
      assert PlacesWrites.create_store(ctx.actor, %{name: "s"}) ==
               {:error, Codes.store_admin_family_or_address_required()}

      assert rows("select 1 from stores") == []
    end

    test "removing the admin family from a store without an address is rejected", ctx do
      store_id = store!(ctx.actor, ctx.family)

      assert PlacesWrites.update_store(ctx.actor, store_id, %{admin_family_id: nil}) ==
               {:error, Codes.store_admin_family_or_address_required()}
    end

    test "removing the admin family from a store with an address is accepted", ctx do
      {:ok, store_id} =
        PlacesWrites.create_store(ctx.actor, %{
          name: "s",
          admin_family_id: ctx.family.id,
          address: address(ctx.area_id, ctx.street_id)
        })

      assert {:ok, ^store_id} =
               PlacesWrites.update_store(ctx.actor, store_id, %{admin_family_id: nil})
    end
  end
end
