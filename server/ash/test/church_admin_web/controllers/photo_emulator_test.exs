defmodule ChurchAdminWeb.PhotoEmulatorTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, Files}
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Google.Storage
  alias ChurchAdmin.People.Person

  @moduletag :emulator

  @photo File.read!(Path.expand("../../support/fixtures/photo.jpg", __DIR__))

  setup do
    emulators = Application.fetch_env!(:church_admin, :firebase_emulators)
    google_settings = Application.fetch_env!(:church_admin, ChurchAdmin.Google.Config)
    files_settings = Application.fetch_env!(:church_admin, ChurchAdmin.Files)

    Application.put_env(
      :church_admin,
      ChurchAdmin.Google.Config,
      Keyword.put(google_settings, :storage,
        adapter: Storage.Http,
        base_url: "http://#{emulators[:storage_host]}"
      )
    )

    Application.put_env(
      :church_admin,
      ChurchAdmin.Files,
      buckets: [
        photos: "#{emulators[:project_id]}.appspot.com",
        app_releases: "#{emulators[:project_id]}.appspot.com"
      ]
    )

    on_exit(fn ->
      Application.put_env(:church_admin, ChurchAdmin.Google.Config, google_settings)
      Application.put_env(:church_admin, ChurchAdmin.Files, files_settings)
    end)

    {:ok, world: AuthzWorld.build!()}
  end

  defp path(%{url: url}), do: URI.parse(url).path

  test "uploads, serves and deletes a photo against the Storage emulator", %{
    conn: conn,
    world: world
  } do
    actor = ActorLoader.load(world.users.read_write.uid)
    person = world.records.m1

    {:ok, upload} = Files.request_photo_upload(:persons, person.id, "image/jpeg", actor: actor)

    response =
      conn |> put_req_header("content-type", "image/jpeg") |> put(path(upload), @photo)

    assert response.status == 204

    recorded = Ash.get!(Person, person.id, authorize?: false)
    assert %DateTime{} = recorded.photo_updated_at
    assert String.length(recorded.blurhash) == 54

    {:ok, download} = Files.photo_download_url(:persons, person.id, nil, actor: actor)
    response = get(build_conn(), path(download))

    assert response.status == 200
    assert response.resp_body == @photo
    assert get_resp_header(response, "cache-control") == ["private, max-age=300"]

    assert {:ok, true} = Files.delete_photo(:persons, person.id, actor: actor)

    cleared = Ash.get!(Person, person.id, authorize?: false)
    assert cleared.photo_updated_at == nil
    assert cleared.blurhash == nil
    assert get(build_conn(), path(download)).status == 404
  end

  describe "over a real HTTP server" do
    setup do
      server =
        start_supervised!(
          {Bandit, plug: ChurchAdminWeb.Endpoint, scheme: :http, port: 0, ip: :loopback}
        )

      {:ok, {_address, port}} = ThousandIsland.listener_info(server)

      %{base_url: "http://127.0.0.1:#{port}"}
    end

    test "takes a streamed photo upload and gives it back", %{base_url: base_url, world: world} do
      actor = ActorLoader.load(world.users.read_write.uid)
      person = world.records.m1

      {:ok, upload} = Files.request_photo_upload(:persons, person.id, "image/jpeg", actor: actor)

      response =
        Req.put!(base_url <> path(upload),
          body: Stream.map([@photo], & &1),
          headers: [content_type: "image/jpeg", content_length: byte_size(@photo)]
        )

      assert response.status == 204
      assert String.length(Ash.get!(Person, person.id, authorize?: false).blurhash) == 54

      {:ok, download} = Files.photo_download_url(:persons, person.id, nil, actor: actor)

      assert Req.get!(base_url <> path(download)).body == @photo
    end

    test "streams an app release with its length and download name", %{
      base_url: base_url,
      world: world
    } do
      bucket =
        "#{Application.fetch_env!(:church_admin, :firebase_emulators)[:project_id]}.appspot.com"

      apk = :binary.copy("apk", 50_000)

      {:ok, _object} =
        Storage.upload(bucket, "app-release-v3.4.5.apk", apk,
          content_type: "application/vnd.android.package-archive"
        )

      actor = ActorLoader.load(world.users.approved_plain.uid)
      {:ok, link} = ChurchAdmin.Releases.app_download_link(:android, actor: actor)
      assert link.version == "3.4.5"

      response = Req.get!(base_url <> path(link), decode_body: false)

      assert response.body == apk
      assert Req.Response.get_header(response, "content-length") == ["#{byte_size(apk)}"]

      assert Req.Response.get_header(response, "content-disposition") ==
               [~s(attachment; filename="church-admin-v3.4.5.apk")]

      Storage.delete(bucket, "app-release-v3.4.5.apk")
    end
  end
end
