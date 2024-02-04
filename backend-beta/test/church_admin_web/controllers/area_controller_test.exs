defmodule ChurchAdminWeb.AreaControllerTest do
  use ChurchAdminWeb.ConnCase

  alias ChurchAdmin.Repo
  alias ChurchAdmin.Schemas.Area

  @create_attrs %{
    "name" => "Test Area",
    "bounds" => %{
      "type" => "Polygon",
      "crs" => %{"type" => "name", "properties" => %{"name" => "EPSG:4326"}},
      "coordinates" => [
        [
          [32, 32],
          [32, 33],
          [33, 33],
          [33, 32],
          [32, 32]
        ]
      ]
    },
    "color" => 0xFF323232,
    "photo_updated_at" => "2018-08-22T00:00:00Z"
  }
  @update_attrs %{
    name: "Test Area Updated",
    color: 0xFF003344,
    photo_updated_at: "2024-08-22T00:00:00Z"
  }
  @invalid_attrs %{
    name: nil,
    ddd: "invalid"
  }

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists minimal areas", %{conn: conn} do
      conn = get(conn, ~p"/api/areas")
      assert json_response(conn, 200)["data"] == []

      %{"data" => %{"id" => id}} =
        conn
        |> post(~p"/api/areas", area: @create_attrs)
        |> json_response(201)

      conn = get(conn, ~p"/api/areas")

      assert %{
               "data" => [
                 %{
                   "id" => ^id,
                   "name" => "Test Area"
                 }
               ]
             } =
               json_response(conn, 200)
    end

    test "lists full areas", %{conn: conn} do
      conn = get(conn, ~p"/api/areas")
      assert json_response(conn, 200)["data"] == []

      %{"data" => %{"id" => id}} =
        conn
        |> post(~p"/api/areas", area: @create_attrs)
        |> json_response(201)

      conn = get(conn, ~p"/api/areas", %{"full" => "true"})

      assert %{
               "data" => [
                 @create_attrs
                 |> Enum.into(%{"id" => id})
                 |> Map.drop(["blurhash"])
               ]
             } ==
               json_response(conn, 200)
    end

    test "lists areas with subtitle", %{conn: conn} do
      conn = get(conn, ~p"/api/areas")
      assert json_response(conn, 200)["data"] == []

      %{"data" => %{"id" => id}} =
        conn
        |> post(~p"/api/areas", area: @create_attrs)
        |> json_response(201)

      conn = get(conn, ~p"/api/areas", %{"subtitle" => "bounds"})

      assert %{
               "data" => [
                 @create_attrs
                 |> Enum.into(%{"id" => id})
                 |> Map.take(["id", "name", "bounds"])
               ]
             } ==
               json_response(conn, 200)
    end
  end

  describe "create area" do
    test "renders area when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/areas", area: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/areas/#{id}")

      assert %{"data" => @create_attrs |> Enum.into(%{"id" => id})} == json_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/api/areas", area: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update area" do
    setup [:create_area]

    test "renders area when data is valid", %{conn: conn, area: %Area{id: id} = area} do
      conn = put(conn, ~p"/api/areas/#{area}", area: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, area: area} do
      conn = put(conn, ~p"/api/areas/#{area}", area: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete area" do
    setup [:create_area]

    test "deletes chosen area", %{conn: conn, area: area} do
      conn = delete(conn, ~p"/api/areas/#{area}")
      assert response(conn, 204)

      assert get(conn, ~p"/api/areas/#{area}") |> response(404)
    end
  end

  defp create_area(_) do
    {:ok, area} =
      %Area{}
      |> Area.changeset(@create_attrs)
      |> Repo.insert()

    %{area: area}
  end
end
