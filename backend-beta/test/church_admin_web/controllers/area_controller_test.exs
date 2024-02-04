defmodule ChurchAdminWeb.AreaControllerTest do
  use ChurchAdminWeb.ConnCase

  alias ChurchAdmin.Repo
  alias ChurchAdmin.Schemas.Area

  @create_attrs %{
    name: "Test Area",
    bounds: %{
      "type" => "Polygon",
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
    color: 0xFF323232,
    photo_updated_at: "2018-08-22T00:00:00Z",
    blurhash: nil
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
    test "lists all areas", %{conn: conn} do
      conn = get(conn, ~p"/api/areas")
      assert json_response(conn, 200)["data"] == []

      post(conn, ~p"/api/areas", area: @create_attrs)

      conn = get(conn, ~p"/api/areas")
      assert length(json_response(conn, 200)["data"]) == 1
    end
  end

  describe "create area" do
    test "renders area when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/areas", area: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/areas/#{id}")

      expected =
        @create_attrs
        |> Map.drop([:bounds])
        |> Enum.map(fn {k, v} -> {Atom.to_string(k), v} end)
        |> Enum.into(%{"id" => id})

      actual =
        json_response(conn, 200)["data"]
        |> Map.drop(["bounds"])

      assert expected == actual
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

      assert_error_sent 404, fn ->
        get(conn, ~p"/api/areas/#{area}")
      end
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
