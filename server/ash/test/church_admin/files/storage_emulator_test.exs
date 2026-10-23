defmodule ChurchAdmin.Files.StorageEmulatorTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.{AuthzWorld, Files}
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Files.Storage
  alias ChurchAdmin.People.Person

  @moduletag :emulator

  @photo "../../support/fixtures/photo.jpg" |> Path.expand(__DIR__) |> File.read!()

  setup do
    emulators = Application.fetch_env!(:church_admin, :firebase_emulators)
    google_settings = Application.fetch_env!(:church_admin, ChurchAdmin.Google.Config)
    files_settings = Application.fetch_env!(:church_admin, ChurchAdmin.Files)

    Application.put_env(
      :church_admin,
      ChurchAdmin.Google.Config,
      Keyword.put(google_settings, :storage, base_url: "http://#{emulators[:storage_host]}")
    )

    Application.put_env(
      :church_admin,
      ChurchAdmin.Files,
      buckets: [
        photos: "#{emulators[:project_id]}.appspot.com",
        app_releases: "#{emulators[:project_id]}.appspot.com"
      ]
    )

    storage_settings = Application.fetch_env!(:church_admin, Storage)

    Application.put_env(:church_admin, Storage,
      adapter: Storage.FirebaseEmulator,
      public_url: "http://#{emulators[:storage_host]}"
    )

    on_exit(fn ->
      Application.put_env(:church_admin, ChurchAdmin.Google.Config, google_settings)
      Application.put_env(:church_admin, ChurchAdmin.Files, files_settings)
      Application.put_env(:church_admin, Storage, storage_settings)
    end)

    {:ok, world: AuthzWorld.build!()}
  end

  test "uploads, confirms, serves and deletes a photo against the Storage emulator", %{
    world: world
  } do
    actor = ActorLoader.load(world.users.read_write.uid)
    person = world.records.m1

    {:ok, upload} = Files.request_photo_upload(:persons, person.id, "image/jpeg", actor: actor)
    headers = Enum.map(upload.headers, &{&1.name, &1.value})

    assert Req.put!(upload.url, body: @photo, headers: headers, retry: false).status == 200

    assert {:ok, true} =
             Files.confirm_photo_upload(:persons, person.id, upload.confirmation_token,
               actor: actor
             )

    recorded = Ash.get!(Person, person.id, authorize?: false)
    assert %DateTime{} = recorded.photo_updated_at
    assert String.length(recorded.blurhash) == 54

    {:ok, download} = Files.photo_download_url(:persons, person.id, nil, actor: actor)
    download_response = Req.get!(download.url, decode_body: false, retry: false)

    assert download_response.body == @photo
    assert Req.Response.get_header(download_response, "content-type") == ["image/jpeg"]

    assert {:ok, true} = Files.delete_photo(:persons, person.id, actor: actor)

    cleared = Ash.get!(Person, person.id, authorize?: false)
    assert cleared.photo_updated_at == nil
    assert Req.get!(download.url, retry: false).status in [403, 404]
  end

  test "links an app release straight to its bytes in the emulator", %{world: world} do
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

    assert Req.get!(link.url, decode_body: false, retry: false).body == apk

    Storage.delete(bucket, "app-release-v3.4.5.apk")
  end
end
