defmodule ChurchAdminWeb.PhotoFilesTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ExUnit.CaptureLog, only: [with_log: 1]

  alias ChurchAdmin.{AuthzWorld, FirebaseTokens}
  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.People.Person
  alias ChurchAdminWeb.FileToken

  @bucket "church-admin-test.appspot.com"
  @release_bucket "church-admin-test-releases"
  @photo File.read!(Path.expand("../../support/fixtures/photo.jpg", __DIR__))
  @updated "2026-10-19T08:30:15.123Z"
  @blurhash_length 54
  @svg ~S|<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"><script>alert(1)</script></svg>|

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp as_user(conn, user) do
    claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => user.uid})
    put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
  end

  defp upload_token(user, subject, record, opts \\ []) do
    params = %{subject: subject, id: record.id}

    {token, _expires_at} = FileToken.issue(:photo_upload, user.uid, params, opts)
    token
  end

  defp download_token(user, subject, record, opts \\ []) do
    params = %{subject: subject, id: record.id}

    {token, _expires_at} = FileToken.issue(:photo_download, user.uid, params, opts)
    token
  end

  defp stub_upload do
    test = self()

    Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
      send(
        test,
        {:gcs_upload, conn.method, conn.request_path, conn.query_params,
         Plug.Conn.get_req_header(conn, "content-type"), Req.Test.raw_body(conn)}
      )

      Req.Test.json(conn, %{
        "name" => conn.query_params["name"],
        "bucket" => @bucket,
        "updated" => @updated,
        "contentType" => "image/jpeg"
      })
    end)
  end

  defp put_photo(conn, token, body \\ @photo, content_type \\ "image/jpeg") do
    conn |> put_req_header("content-type", content_type) |> put(~p"/api/files/#{token}", body)
  end

  defp reload_person(%Person{id: id}), do: Ash.get!(Person, id, authorize?: false)

  describe "PUT /api/files/:token" do
    test "streams the bytes to storage and records the photo on the subject", %{
      conn: conn,
      world: world
    } do
      stub_upload()
      person = world.records.m1

      response = put_photo(conn, upload_token(world.users.read_write, :persons, person))

      assert response.status == 204

      assert_received {:gcs_upload, "POST", "/upload/storage/v1/b/" <> bucket_path, query,
                       ["image/jpeg"], body}

      assert bucket_path == "#{@bucket}/o"
      assert query == %{"uploadType" => "media", "name" => "persons/#{person.id}"}
      assert body == @photo

      reloaded = reload_person(person)
      assert DateTime.compare(reloaded.photo_updated_at, ~U[2026-10-19 08:30:15.123Z]) == :eq
      assert is_binary(reloaded.blurhash)
      assert String.length(reloaded.blurhash) == @blurhash_length
    end

    test "records the photo on the other subjects too", %{conn: conn, world: world} do
      stub_upload()

      for {subject, name, resource} <- [
            {:areas, :a1, ChurchAdmin.Places.Area},
            {:streets, :st1, ChurchAdmin.Places.Street},
            {:services, :s1, ChurchAdmin.Organization.Service},
            {:classes, :c_y1, ChurchAdmin.Organization.Class},
            {:groups, :g1, ChurchAdmin.Organization.Group},
            {:stores, :store1, ChurchAdmin.Places.Store},
            {:families, :f_svc, ChurchAdmin.People.Family}
          ] do
        record = world.records[name]
        response = put_photo(conn, upload_token(world.users.read_write, subject, record))

        assert response.status == 204, "#{subject}"
        reloaded = Ash.get!(resource, record.id, authorize?: false)
        assert %DateTime{} = reloaded.photo_updated_at, "#{subject}"
        assert String.length(reloaded.blurhash) == @blurhash_length, "#{subject}"
      end
    end

    test "a person's linked user shows the photo too", %{conn: conn, world: world} do
      stub_upload()
      self = world.records.self

      response = put_photo(conn, upload_token(world.users.approved_plain, :persons, self))

      assert response.status == 204

      user = Ash.get!(User, world.users.approved_plain.uid, authorize?: false)
      assert DateTime.compare(user.photo_updated_at, ~U[2026-10-19 08:30:15.123Z]) == :eq
      assert user.blurhash == reload_person(self).blurhash
    end

    test "a user's photo is their linked person's object", %{conn: conn, world: world} do
      stub_upload()
      self = world.records.self
      user = world.users.approved_plain

      params = %{subject: :users, id: user.uid, content_type: "image/jpeg"}

      {token, _expires_at} = FileToken.issue(:photo_upload, user.uid, params)

      assert put_photo(conn, token).status == 204

      assert_received {:gcs_upload, _method, _path, %{"name" => name}, _type, _body}
      assert name == "persons/#{self.id}"
      assert String.length(reload_person(self).blurhash) == @blurhash_length
    end

    test "refuses bytes that are not an image and stores nothing", %{conn: conn, world: world} do
      stub_upload()
      person = world.records.m1
      token = upload_token(world.users.read_write, :persons, person)

      for {bytes, claimed_type} <- [
            {"this is not an image", "image/jpeg"},
            {"<html><script>alert(1)</script></html>", "text/html"},
            {@svg, "image/svg+xml"},
            {@svg, "image/jpeg"}
          ] do
        response = put_photo(conn, token, bytes, claimed_type)

        assert response.status == 415, claimed_type

        assert %{"errors" => [%{"extensions" => %{"code" => "invalid"}}]} =
                 json_response(response, 415)
      end

      refute_received {:gcs_upload, _method, _path, _query, _type, _body}
      assert reload_person(person).photo_updated_at == nil
    end

    test "stores the format the bytes have, whatever type the request claims", %{
      conn: conn,
      world: world
    } do
      stub_upload()
      token = upload_token(world.users.read_write, :areas, world.records.a1)

      assert put_photo(conn, token, @photo, "application/octet-stream").status == 204
      assert_received {:gcs_upload, _method, _path, _query, ["image/jpeg"], _body}

      assert put_photo(conn, token, @photo, "text/html").status == 204
      assert_received {:gcs_upload, _method, _path, _query, ["image/jpeg"], _body}

      {:ok, image} = Image.from_binary(@photo)

      for {suffix, stored_type} <- [{".png", "image/png"}, {".webp", "image/webp"}] do
        bytes = Image.write!(image, :memory, suffix: suffix)

        assert put_photo(conn, token, bytes, "image/jpeg").status == 204, suffix
        assert_received {:gcs_upload, _method, _path, _query, [^stored_type], _body}
      end
    end

    test "answers 502 and records nothing when storage fails", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
        conn |> Plug.Conn.put_status(500) |> Req.Test.json(%{"error" => %{"code" => 500}})
      end)

      person = world.records.m1
      token = upload_token(world.users.read_write, :persons, person)

      {response, log} = with_log(fn -> put_photo(conn, token) end)

      assert response.status == 502
      assert log =~ "storage failed"
      assert reload_person(person).photo_updated_at == nil
    end

    test "answers 400 to an empty body", %{conn: conn, world: world} do
      stub_upload()
      token = upload_token(world.users.read_write, :areas, world.records.a1)

      assert put_photo(conn, token, "").status == 400
      refute_received {:gcs_upload, _method, _path, _query, _type, _body}
    end

    test "re-checks the edit right when the file arrives", %{conn: conn, world: world} do
      stub_upload()
      token = upload_token(world.users.read_all, :persons, world.records.m1)

      response = put_photo(conn, token)

      assert response.status == 404

      assert %{"errors" => [%{"extensions" => %{"code" => "not_found"}}]} =
               json_response(response, 404)

      refute_received {:gcs_upload, _method, _path, _query, _type, _body}
    end

    test "re-checks that a person's photo is the uploader's own", %{conn: conn, world: world} do
      stub_upload()
      token = upload_token(world.users.read_write, :persons, world.records.servant)

      response = put_photo(conn, token)

      assert response.status == 403

      assert %{"errors" => [%{"extensions" => %{"code" => "photo/own-photo-only"}}]} =
               json_response(response, 403)
    end

    test "answers 401 to a forged token", %{conn: conn} do
      assert put_photo(conn, "forged-token").status == 401
    end

    test "answers 401 to an expired token", %{conn: conn, world: world} do
      stub_upload()

      token =
        upload_token(world.users.read_write, :areas, world.records.a1,
          signed_at: System.system_time(:second) - 6 * 60
        )

      assert put_photo(conn, token).status == 401
      refute_received {:gcs_upload, _method, _path, _query, _type, _body}
    end

    test "answers 401 when another user replays the token", %{conn: conn, world: world} do
      stub_upload()
      token = upload_token(world.users.read_write, :areas, world.records.a1)

      response = conn |> as_user(world.users.manage_users) |> put_photo(token)

      assert response.status == 401
    end

    test "a download token cannot upload", %{conn: conn, world: world} do
      stub_upload()
      token = download_token(world.users.read_write, :areas, world.records.a1)

      assert put_photo(conn, token).status == 405
      refute_received {:gcs_upload, _method, _path, _query, _type, _body}
    end
  end

  describe "GET /api/files/:token for a photo" do
    defp stub_stored_photo(stored_type) do
      test = self()

      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
        send(test, {:gcs_download, conn.request_path, conn.query_params})

        case conn.query_params do
          %{"alt" => "media"} ->
            Plug.Conn.send_resp(conn, 200, @photo)

          _metadata ->
            Req.Test.json(conn, %{
              "name" => "persons/photo",
              "bucket" => @bucket,
              "contentType" => stored_type
            })
        end
      end)
    end

    test "streams the object with a private five minute cache", %{conn: conn, world: world} do
      stub_stored_photo("image/jpeg")
      person = world.records.m1
      token = download_token(world.users.read_all, :persons, person)

      response = get(conn, ~p"/api/files/#{token}")

      assert response.status == 200
      assert response.resp_body == @photo
      assert get_resp_header(response, "cache-control") == ["private, max-age=300"]

      assert_received {:gcs_download, path, %{"alt" => "media"}}
      assert path == "/storage/v1/b/#{@bucket}/o/persons%2F#{person.id}"
    end

    test "serves the stored image type inline and forbids sniffing", %{conn: conn, world: world} do
      token = download_token(world.users.read_all, :persons, world.records.m1)

      for stored_type <- ~w(image/jpeg image/png image/webp image/gif image/heic) do
        stub_stored_photo(stored_type)
        response = get(conn, ~p"/api/files/#{token}")

        assert response.status == 200, stored_type
        assert get_resp_header(response, "content-type") == [stored_type]
        assert get_resp_header(response, "x-content-type-options") == ["nosniff"]
        assert get_resp_header(response, "content-disposition") == [~s(inline; filename="photo")]
      end
    end

    test "serves anything but an allowed image type as opaque bytes", %{conn: conn, world: world} do
      token = download_token(world.users.read_all, :persons, world.records.m1)

      for stored_type <- [
            "text/html",
            "image/svg+xml",
            "application/xhtml+xml",
            "text/html; charset=utf-8",
            nil
          ] do
        stub_stored_photo(stored_type)
        response = get(conn, ~p"/api/files/#{token}")

        assert response.status == 200, inspect(stored_type)
        assert get_resp_header(response, "content-type") == ["application/octet-stream"]
        assert get_resp_header(response, "x-content-type-options") == ["nosniff"]
      end
    end

    test "ignores the content type the client asked for", %{conn: conn, world: world} do
      stub_stored_photo("image/jpeg")
      user = world.users.read_all
      id = world.records.m1.id

      %{"data" => %{"photoDownloadUrl" => %{"url" => url}}} =
        gql(conn, user, """
        query { photoDownloadUrl(subject: PERSONS, id: "#{id}", contentType: "text/html") { url } }
        """)

      response = get(conn, URI.parse(url).path)

      assert response.status == 200
      assert get_resp_header(response, "content-type") == ["image/jpeg"]
    end

    test "every file response forbids sniffing, errors included", %{conn: conn} do
      response = get(conn, ~p"/api/files/forged-token")

      assert response.status == 401
      assert get_resp_header(response, "x-content-type-options") == ["nosniff"]
    end

    test "answers 404 for a missing object", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
        conn
        |> Plug.Conn.put_status(404)
        |> Req.Test.json(%{"error" => %{"code" => 404, "errors" => [%{"reason" => "notFound"}]}})
      end)

      token = download_token(world.users.read_all, :persons, world.records.m1)

      assert get(conn, ~p"/api/files/#{token}").status == 404
    end

    test "re-checks the read right when the file is fetched", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn -> Plug.Conn.send_resp(conn, 200, "x") end)

      token = download_token(world.users.service_open, :persons, world.records.grp)

      assert get(conn, ~p"/api/files/#{token}").status == 404
    end

    test "answers 401 to an expired token", %{conn: conn, world: world} do
      token =
        download_token(world.users.read_all, :persons, world.records.m1,
          signed_at: System.system_time(:second) - 6 * 60
        )

      assert get(conn, ~p"/api/files/#{token}").status == 401
    end

    test "an upload token cannot download", %{conn: conn, world: world} do
      token = upload_token(world.users.read_write, :areas, world.records.a1)

      assert get(conn, ~p"/api/files/#{token}").status == 405
    end
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

      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
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
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn -> Plug.Conn.send_resp(conn, 200, "x") end)

      assert get(conn, ~p"/api/files/#{app_token(world.users.unapproved)}").status == 403
    end

    test "lives twenty minutes", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
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

    test "requestPhotoUpload, photoDownloadUrl and deletePhoto", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn -> Plug.Conn.send_resp(conn, 204, "") end)
      id = world.records.m1.id
      user = world.users.read_write

      assert %{"data" => %{"requestPhotoUpload" => %{"url" => url, "expiresAt" => expires_at}}} =
               gql(conn, user, """
               mutation { requestPhotoUpload(subject: PERSONS, id: "#{id}", contentType: "image/jpeg") { url expiresAt } }
               """)

      assert url =~ "/api/files/"
      assert {:ok, _expires_at, _offset} = DateTime.from_iso8601(expires_at)

      assert %{"data" => %{"photoDownloadUrl" => %{"url" => download}}} =
               gql(conn, user, """
               query { photoDownloadUrl(subject: PERSONS, id: "#{id}") { url expiresAt } }
               """)

      assert download =~ "/api/files/"

      assert %{"data" => %{"deletePhoto" => true}} =
               gql(conn, user, """
               mutation { deletePhoto(subject: PERSONS, id: "#{id}") }
               """)
    end

    test "a denial carries the not_found code", %{conn: conn, world: world} do
      response =
        gql(conn, world.users.read_all, """
        mutation { requestPhotoUpload(subject: PERSONS, id: "#{world.records.m1.id}") { url } }
        """)

      assert [%{"extensions" => %{"code" => "not_found"}} | _] = response["errors"]
    end

    test "appDownloadLink", %{conn: conn, world: world} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
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
