defmodule ChurchAdminWeb.Graphql.PlacesDeleteMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Places.{Area, Store, Street}
  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens, PlacesWorld}

  setup do
    ChurchAdmin.Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    world = PlacesWorld.extend!(AuthzWorld.build!())

    deleter = Factory.user!()
    Factory.permissions!(deleter, ~w(approved readAllData writeAllData deleteData))

    unapproved_deleter = Factory.user!()
    Factory.permissions!(unapproved_deleter, ~w(readAllData writeAllData deleteData))

    delete_only = Factory.user!()
    Factory.permissions!(delete_only, ~w(approved deleteData))

    area_deleter = Factory.user!()
    Factory.permissions!(area_deleter, ~w(approved deleteData))
    Factory.grant!(area_deleter, :area, world.records.a1.id, edit?: true)

    {:ok,
     world: world,
     deleter: deleter,
     unapproved_deleter: unapproved_deleter,
     delete_only: delete_only,
     area_deleter: area_deleter}
  end

  defp run(conn, document, id, user) do
    claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => user.uid})

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document, "variables" => %{"id" => id}})
    |> json_response(200)
  end

  defp code(response), do: get_in(response, ["errors", Access.at(0), "extensions", "code"])

  defp deleted?(resource, id) do
    resource |> Ash.get!(id, authorize?: false, load: []) |> Map.fetch!(:deleted_at) != nil
  end

  @delete_area "mutation($id: ID!) { deleteArea(id: $id) { result { id name } } }"
  @delete_street "mutation($id: ID!) { deleteStreet(id: $id) { result { id name } } }"
  @delete_store "mutation($id: ID!) { deleteStore(id: $id) { result { id name } } }"

  describe "deleteArea" do
    test "archives the area for a user holding writeAllData and deleteData", ctx do
      id = ctx.world.records.a2.id

      response = run(ctx.conn, @delete_area, id, ctx.deleter)

      assert %{"data" => %{"deleteArea" => %{"result" => %{"id" => ^id}}}} = response
      assert deleted?(Area, id)
      assert Ash.get!(Area, id, authorize?: false).deleted_by == ctx.deleter.uid
    end

    test "the archived area is no longer read, listed or found", ctx do
      id = ctx.world.records.a2.id
      run(ctx.conn, @delete_area, id, ctx.deleter)

      actor = ChurchAdmin.Authz.ActorLoader.load(ctx.deleter.uid)

      assert Ash.read!(Area, actor: actor, page: false) |> Enum.map(& &1.id) |> Enum.member?(id) ==
               false

      assert run(ctx.conn, @delete_area, id, ctx.deleter) |> code() == "not_found"
    end

    test "needs both permissions", ctx do
      id = ctx.world.records.a2.id

      for user <- [ctx.world.users.read_write, ctx.delete_only, ctx.world.users.approved_plain] do
        assert run(ctx.conn, @delete_area, id, user) |> code() == "forbidden"
      end

      refute deleted?(Area, id)
    end

    test "an unapproved holder of writeAllData and deleteData cannot delete", ctx do
      id = ctx.world.records.a2.id

      assert run(ctx.conn, @delete_area, id, ctx.unapproved_deleter) |> code() == "forbidden"
      refute deleted?(Area, id)
    end

    test "an area editor without writeAllData cannot delete", ctx do
      assert run(ctx.conn, @delete_area, ctx.world.records.a1.id, ctx.area_deleter) |> code() ==
               "forbidden"
    end
  end

  describe "deleteStreet" do
    test "archives the street for a user holding writeAllData and deleteData", ctx do
      id = ctx.world.records.st1.id

      assert %{"data" => %{"deleteStreet" => %{"result" => %{"id" => ^id}}}} =
               run(ctx.conn, @delete_street, id, ctx.deleter)

      assert deleted?(Street, id)
    end

    test "needs both permissions", ctx do
      id = ctx.world.records.st1.id

      for user <- [ctx.world.users.read_write, ctx.delete_only, ctx.world.users.area_edit] do
        assert run(ctx.conn, @delete_street, id, user) |> code() == "forbidden"
      end
    end
  end

  describe "deleteStore" do
    test "archives the store for a user holding deleteData and every edit right", ctx do
      id = ctx.world.records.store1.id

      assert %{"data" => %{"deleteStore" => %{"result" => %{"id" => ^id}}}} =
               run(ctx.conn, @delete_store, id, ctx.deleter)

      assert deleted?(Store, id)
    end

    test "an area editor deletes a store whose admin family they can edit", ctx do
      store =
        Factory.store!(admin_family_id: ctx.world.records.f_area.id)
        |> tap(&Factory.address!(store_id: &1.id, area_id: ctx.world.records.a1.id))

      assert %{"data" => %{"deleteStore" => %{"result" => %{"id" => id}}}} =
               run(ctx.conn, @delete_store, store.id, ctx.area_deleter)

      assert id == store.id
      assert deleted?(Store, store.id)
    end

    test "an area editor cannot delete a store that has no admin family", ctx do
      assert run(ctx.conn, @delete_store, ctx.world.records.store1.id, ctx.area_deleter)
             |> code() == "forbidden"
    end

    test "needs deleteData", ctx do
      id = ctx.world.records.store1.id

      for user <- [ctx.world.users.read_write, ctx.world.users.area_edit] do
        assert run(ctx.conn, @delete_store, id, user) |> code() == "forbidden"
      end
    end
  end

  describe "the hard delete" do
    test "removes the row for the system actor", ctx do
      id = ctx.world.records.st1.id

      id_st = ctx.world.records.st_gone.id
      st = Ash.get!(Street, id_st, authorize?: false)

      assert :ok =
               st
               |> Ash.Changeset.for_destroy(:hard_destroy, %{}, actor: Actor.system())
               |> Ash.destroy()

      assert Ash.get(Street, id_st, authorize?: false) |> elem(0) == :error
      assert Ash.get!(Street, id, authorize?: false)
    end

    test "is closed to users, whatever they hold", ctx do
      area = Ash.get!(Area, ctx.world.records.a2.id, authorize?: false)
      actor = ChurchAdmin.Authz.ActorLoader.load(ctx.deleter.uid)

      assert {:error, %Ash.Error.Forbidden{}} =
               area
               |> Ash.Changeset.for_destroy(:hard_destroy, %{}, actor: actor)
               |> Ash.destroy()
    end

    test "answers in-use while something still references the row", ctx do
      area = Ash.get!(Area, ctx.world.records.a1.id, authorize?: false)

      assert {:error, error} =
               area
               |> Ash.Changeset.for_destroy(:hard_destroy, %{}, actor: Actor.system())
               |> Ash.destroy()

      assert [%{code: code, fields: [:addresses]}] = error.errors
      assert code == Codes.area_in_use()
    end

    test "answers street in-use while an address is on the street", ctx do
      street = ctx.world.records.st1
      Factory.address!(store_id: Factory.store!().id, street_id: street.id)
      street = Ash.get!(Street, street.id, authorize?: false)

      assert {:error, error} =
               street
               |> Ash.Changeset.for_destroy(:hard_destroy, %{}, actor: Actor.system())
               |> Ash.destroy()

      assert [%{code: code, fields: [:addresses]}] = error.errors
      assert code == Codes.street_in_use()
    end
  end
end
