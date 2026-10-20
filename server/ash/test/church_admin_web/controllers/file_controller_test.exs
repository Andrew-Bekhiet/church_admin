defmodule ChurchAdminWeb.FileControllerTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens}
  alias ChurchAdmin.XlsxReader
  alias ChurchAdminWeb.FileToken

  @xlsx_content_type "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp as_user(conn, user) do
    claims = user |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()
    put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
  end

  defp export_data(conn, user, arguments) do
    document = """
    mutation { exportData(#{arguments}) { downloadUrl expiresAt } }
    """

    conn |> as_user(user) |> post("/gql", %{"query" => document}) |> json_response(200)
  end

  defp export_token(user, params, opts \\ []) do
    params =
      Map.merge(%{areas_ids: [], services_ids: [], classes_ids: [], groups_ids: []}, params)

    {token, _expires_at} = FileToken.issue(:export, user.uid, params, opts)
    token
  end

  describe "exportData mutation" do
    test "returns a download URL that streams the workbook", %{conn: conn, world: world} do
      s1 = world.records.s1

      %{"data" => %{"exportData" => link}} =
        export_data(conn, world.users.export_all, ~s(servicesIds: ["#{s1.id}"]))

      assert %{"downloadUrl" => url, "expiresAt" => expires_at} = link
      assert {:ok, expires_at, _offset} = DateTime.from_iso8601(expires_at)
      assert DateTime.diff(expires_at, DateTime.utc_now(), :second) in 590..601
      assert %URI{path: "/api/files/" <> _token} = URI.parse(url)

      response = get(build_conn(), URI.parse(url).path)

      assert response.status == 200
      assert [@xlsx_content_type] = get_resp_header(response, "content-type")
      assert [disposition] = get_resp_header(response, "content-disposition")
      assert disposition =~ ~r/\Aattachment; filename="export-.+\.xlsx"\z/

      assert response.resp_body |> XlsxReader.read() |> Enum.map(& &1.name) ==
               ~w(persons families classes groups services)
    end

    test "the URL may end in the file name", %{conn: conn, world: world} do
      s1 = world.records.s1

      %{"data" => %{"exportData" => %{"downloadUrl" => url}}} =
        export_data(conn, world.users.export_all, ~s(servicesIds: ["#{s1.id}"]))

      assert URI.parse(url).path =~ ~r{\A/api/files/[^/]+/export-.+\.xlsx\z}
      assert get(build_conn(), URI.parse(url).path).status == 200
    end

    test "refuses a selection the user may not export with export/forbidden", %{
      conn: conn,
      world: world
    } do
      ids = ~s(["#{world.records.a1.id}", "#{world.records.a2.id}"])

      response = export_data(conn, world.users.area_edit, "areasIds: #{ids}")

      assert [%{"extensions" => %{"code" => "export/forbidden"}} | _] = response["errors"]
    end

    test "refuses an empty selection as invalid", %{conn: conn, world: world} do
      response = export_data(conn, world.users.export_all, "areasIds: []")

      assert [%{"extensions" => %{"code" => "invalid"}} | _] = response["errors"]
    end

    test "refuses an anonymous request", %{conn: conn, world: world} do
      document = ~s|mutation { exportData(areasIds: ["#{world.records.a1.id}"]) { downloadUrl } }|
      response = conn |> post("/gql", %{"query" => document}) |> json_response(200)

      assert [%{"extensions" => %{"code" => "forbidden"}} | _] = response["errors"]
    end
  end

  describe "GET /api/files/:token" do
    test "serves the workbook of the token's selection", %{conn: conn, world: world} do
      token = export_token(world.users.export_all, %{areas_ids: [world.records.a1.id]})

      response = get(conn, ~p"/api/files/#{token}")

      assert response.status == 200
      assert [@xlsx_content_type] = get_resp_header(response, "content-type")

      assert %{rows: [_header, [_name, _color, _id]]} =
               XlsxReader.sheet(response.resp_body, "areas")
    end

    test "accepts the same user's bearer token", %{conn: conn, world: world} do
      user = world.users.export_all
      token = export_token(user, %{areas_ids: [world.records.a1.id]})

      assert conn |> as_user(user) |> get(~p"/api/files/#{token}") |> Map.fetch!(:status) == 200
    end

    test "answers 401 to a forged token", %{conn: conn} do
      assert get(conn, ~p"/api/files/forged-token").status == 401
    end

    test "answers 401 to an expired token", %{conn: conn, world: world} do
      token =
        export_token(world.users.export_all, %{areas_ids: [world.records.a1.id]},
          signed_at: System.system_time(:second) - 11 * 60
        )

      assert get(conn, ~p"/api/files/#{token}").status == 401
    end

    test "answers 401 when another user replays the token", %{conn: conn, world: world} do
      token = export_token(world.users.export_all, %{areas_ids: [world.records.a1.id]})

      response = conn |> as_user(world.users.read_all) |> get(~p"/api/files/#{token}")

      assert response.status == 401
    end

    test "answers 401 to an invalid bearer token", %{conn: conn, world: world} do
      token = export_token(world.users.export_all, %{areas_ids: [world.records.a1.id]})

      response =
        conn |> put_req_header("authorization", "Bearer nonsense") |> get(~p"/api/files/#{token}")

      assert response.status == 401
    end

    test "re-checks the export right when the file is fetched", %{conn: conn, world: world} do
      token = export_token(world.users.service_open, %{services_ids: [world.records.s1.id]})

      response = get(conn, ~p"/api/files/#{token}")

      assert response.status == 403

      assert %{"errors" => [%{"extensions" => %{"code" => "export/forbidden"}}]} =
               json_response(response, 403)
    end
  end
end
