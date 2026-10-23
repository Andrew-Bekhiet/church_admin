defmodule ChurchAdminWeb.PhotoFilesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, FakeStorage, Factory, FirebaseTokens}
  alias ChurchAdminWeb.FileToken

  @bucket "church-admin-test.appspot.com"
  @release_bucket "church-admin-test-releases"
  @photo "../../support/fixtures/photo.jpg" |> Path.expand(__DIR__) |> File.read!()

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp as_user(conn, user) do
    claims = user |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()
    put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
  end

  describe "GET /api/files/:token for an app release" do
    defp app_token(user, opts \\ []) do
      params = %{
        bucket: @release_bucket,
        object: "app-release-v1.10.0.apk",
        version: "1.10.0",
        extension: "apk",
        size: byte_size("apk-bytes"),
        content_type: "application/vnd.android.package-archive"
      }

      {token, _expires_at} = FileToken.issue(:app_download, user.uid, params, opts)
      token
    end

    test "streams the file with its type, length and download name", %{conn: conn, world: world} do
      test = self()

      Req.Test.stub(ChurchAdmin.Files.Storage, fn conn ->
        send(test, {:gcs_download, conn.request_path})
        Plug.Conn.send_resp(conn, 200, "apk-bytes")
      end)

      response = get(conn, ~p"/api/files/#{app_token(world.users.approved_plain)}")

      assert response.status == 200
      assert response.resp_body == "apk-bytes"

      assert get_resp_header(response, "content-type") == [
               "application/vnd.android.package-archive"
             ]

      assert get_resp_header(response, "content-length") == ["9"]

      assert get_resp_header(response, "content-disposition") ==
               [~s(attachment; filename="church-admin-v1.10.0.apk")]

      assert_received {:gcs_download, "/storage/v1/b/" <> rest}
      assert rest == "#{@release_bucket}/o/app-release-v1.10.0.apk"
    end

    test "is refused once the user is no longer approved", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Files.Storage, fn conn -> Plug.Conn.send_resp(conn, 200, "x") end)

      assert get(conn, ~p"/api/files/#{app_token(world.users.unapproved)}").status == 403
    end

    test "lives twenty minutes", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Files.Storage, fn conn ->
        Plug.Conn.send_resp(conn, 200, "apk-bytes")
      end)

      user = world.users.approved_plain

      fresh = app_token(user, signed_at: System.system_time(:second) - 19 * 60)
      stale = app_token(user, signed_at: System.system_time(:second) - 21 * 60)

      assert get(conn, ~p"/api/files/#{fresh}").status == 200
      assert get(conn, ~p"/api/files/#{stale}").status == 401
    end
  end

  describe "the GraphQL surface" do
    defp gql(conn, user, document),
      do: conn |> as_user(user) |> post("/gql", %{"query" => document}) |> json_response(200)

    test "requestPhotoUpload, confirmPhotoUpload, photoDownloadUrl and deletePhoto", %{
      conn: conn,
      world: world
    } do
      store = FakeStorage.start()
      id = world.records.m1.id
      user = world.users.read_write

      assert %{"data" => %{"requestPhotoUpload" => upload}} =
               gql(conn, user, """
               mutation {
                 requestPhotoUpload(subject: PERSONS, id: "#{id}", contentType: "image/jpeg") {
                   url expiresAt headers { name value } confirmationToken
                 }
               }
               """)

      assert %{
               "url" => "http://storage.public.test:9199/upload/" <> _session,
               "headers" => [%{"name" => "content-type", "value" => "image/jpeg"}],
               "confirmationToken" => token
             } = upload

      assert {:ok, _expires_at, _offset} = DateTime.from_iso8601(upload["expiresAt"])
      staging = URI.parse(upload["url"]).query |> URI.decode_query() |> Map.fetch!("name")
      FakeStorage.put(store, @bucket, staging, @photo, "image/jpeg")

      assert %{"data" => %{"confirmPhotoUpload" => true}} =
               gql(conn, user, """
               mutation {
                 confirmPhotoUpload(subject: PERSONS, id: "#{id}", confirmationToken: "#{token}")
               }
               """)

      assert %{"data" => %{"photoDownloadUrl" => %{"url" => download}}} =
               gql(conn, user, """
               query { photoDownloadUrl(subject: PERSONS, id: "#{id}") { url expiresAt } }
               """)

      assert download =~ "/v0/b/#{@bucket}/o/persons%2F#{id}?alt=media&token="

      assert %{"data" => %{"deletePhoto" => true}} =
               gql(conn, user, """
               mutation { deletePhoto(subject: PERSONS, id: "#{id}") }
               """)

      assert FakeStorage.names(store, @bucket) == []
    end

    test "a refused confirmation carries its code", %{conn: conn, world: world} do
      response =
        gql(conn, world.users.read_write, """
        mutation {
          confirmPhotoUpload(subject: PERSONS, id: "#{world.records.m1.id}", confirmationToken: "forged")
        }
        """)

      assert [%{"extensions" => %{"code" => "not_found"}} | _] = response["errors"]
    end

    test "a content type that is not an image carries the invalid code", %{
      conn: conn,
      world: world
    } do
      response =
        gql(conn, world.users.read_write, """
        mutation {
          requestPhotoUpload(subject: AREAS, id: "#{world.records.a1.id}", contentType: "text/html") { url }
        }
        """)

      assert [%{"extensions" => %{"code" => "invalid"}} | _] = response["errors"]
    end

    test "a denial carries the not_found code", %{conn: conn, world: world} do
      response =
        gql(conn, world.users.read_all, """
        mutation {
          requestPhotoUpload(subject: PERSONS, id: "#{world.records.m1.id}", contentType: "image/jpeg") { url }
        }
        """)

      assert [%{"extensions" => %{"code" => "not_found"}} | _] = response["errors"]
    end

    test "appDownloadLink", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Files.Storage, fn conn ->
        Req.Test.json(conn, %{
          "items" => [
            %{"name" => "app-release-v1.0.0.apk", "bucket" => @release_bucket, "size" => "3"}
          ]
        })
      end)

      assert %{"data" => %{"appDownloadLink" => link}} =
               gql(conn, world.users.approved_plain, """
               query { appDownloadLink(platform: ANDROID) { url expiresAt version } }
               """)

      assert %{"version" => "1.0.0", "url" => "http" <> _} = link
    end

    test "appDownloadLink refuses an unapproved user", %{conn: conn, world: world} do
      response =
        gql(conn, world.users.unapproved, """
        query { appDownloadLink(platform: ANDROID) { url } }
        """)

      assert [%{"extensions" => %{"code" => "forbidden"}} | _] = response["errors"]
    end
  end
end
