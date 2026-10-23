defmodule ChurchAdmin.Files.PhotoUploadTest do
  use ChurchAdmin.AuthzCase, async: false

  import ExUnit.CaptureLog, only: [with_log: 1]

  alias ChurchAdmin.{AccountsCase, FakeStorage, Files}
  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Files.Photos.UploadConfirmation
  alias ChurchAdmin.People.Person

  @bucket "church-admin-test.appspot.com"
  @public_origin "http://storage.public.test:9199"
  @photo "../../support/fixtures/photo.jpg" |> Path.expand(__DIR__) |> File.read!()
  @blurhash_length 54
  @max_bytes 25 * 1024 * 1024
  @svg ~S|<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"><script>alert(1)</script></svg>|

  setup do
    {:ok, store: FakeStorage.start()}
  end

  defp request_upload(world, kind, subject, id, content_type \\ "image/jpeg"),
    do: Files.request_photo_upload(subject, id, content_type, actor: actor(world, kind))

  defp confirm(world, kind, subject, id, token),
    do: Files.confirm_photo_upload(subject, id, token, actor: actor(world, kind))

  defp staging_name(%{url: url}),
    do: URI.parse(url).query |> URI.decode_query() |> Map.fetch!("name")

  defp upload!(store, world, kind, subject, record, bytes \\ @photo) do
    {:ok, link} = request_upload(world, kind, subject, record_id(record))
    FakeStorage.put(store, @bucket, staging_name(link), bytes, "image/jpeg")
    link
  end

  defp record_id(%{id: id}), do: id
  defp record_id(uid) when is_binary(uid), do: uid

  defp reload_person(%Person{id: id}), do: Ash.get!(Person, id, authorize?: false)

  describe "request_photo_upload" do
    test "answers a five minute PUT link to a staging object, with the headers to send", %{
      world: world
    } do
      person = world.records.m1

      assert {:ok, link} = request_upload(world, :read_write, :persons, person.id, "image/png")

      assert link.url =~ ~r"\A#{@public_origin}/upload/"
      assert staging_name(link) =~ ~r"\Auploads/persons/#{person.id}/[0-9a-f-]{36}\z"
      assert link.headers == [%{name: "content-type", value: "image/png"}]
      assert is_binary(link.confirmation_token)
      assert DateTime.diff(link.expires_at, DateTime.utc_now(), :second) in 295..300
    end

    test "every link stages to its own object", %{world: world} do
      area = world.records.a1

      {:ok, first} = request_upload(world, :read_write, :areas, area.id)
      {:ok, second} = request_upload(world, :read_write, :areas, area.id)

      refute staging_name(first) == staging_name(second)
    end

    test "a user's photo stages under the linked person", %{world: world} do
      own = world.users.approved_plain.uid

      assert {:ok, link} = request_upload(world, :approved_plain, :users, own)
      assert staging_name(link) =~ ~r"\Auploads/persons/#{world.records.self.id}/"
    end

    test "refuses a content type that is not an image before opening an upload", %{
      world: world,
      store: store
    } do
      for content_type <- [nil, "text/html", "application/octet-stream"] do
        assert world
               |> request_upload(:read_write, :areas, world.records.a1.id, content_type)
               |> AccountsCase.codes() == ["invalid"],
               inspect(content_type)
      end

      assert FakeStorage.calls(store) == []
    end
  end

  describe "confirm_photo_upload" do
    test "stores the staged photo as the subject's and deletes the staging object", %{
      world: world,
      store: store
    } do
      person = world.records.m1
      link = upload!(store, world, :read_write, :persons, person)

      assert {:ok, true} =
               confirm(world, :read_write, :persons, person.id, link.confirmation_token)

      assert FakeStorage.get(store, @bucket, "persons/#{person.id}") == {@photo, "image/jpeg"}
      assert FakeStorage.names(store, @bucket) == ["persons/#{person.id}"]

      reloaded = reload_person(person)
      assert DateTime.compare(reloaded.photo_updated_at, ~U[2026-10-19 08:30:15.123Z]) == :eq
      assert String.length(reloaded.blurhash) == @blurhash_length
    end

    test "a person's linked user shows the photo too", %{world: world, store: store} do
      self = world.records.self
      link = upload!(store, world, :approved_plain, :persons, self)

      assert {:ok, true} =
               confirm(world, :approved_plain, :persons, self.id, link.confirmation_token)

      user = Ash.get!(User, world.users.approved_plain.uid, authorize?: false)
      assert user.blurhash == reload_person(self).blurhash
      assert String.length(user.blurhash) == @blurhash_length
    end

    test "a user's photo is their linked person's object", %{world: world, store: store} do
      uid = world.users.approved_plain.uid
      link = upload!(store, world, :approved_plain, :users, uid)

      assert {:ok, true} = confirm(world, :approved_plain, :users, uid, link.confirmation_token)

      assert FakeStorage.names(store, @bucket) == ["persons/#{world.records.self.id}"]
    end

    test "stores the format the bytes have, whatever type the upload claimed", %{
      world: world,
      store: store
    } do
      area = world.records.a1
      png = @photo |> Image.from_binary!() |> Image.write!(:memory, suffix: ".png")
      link = upload!(store, world, :read_write, :areas, area, png)

      assert {:ok, true} = confirm(world, :read_write, :areas, area.id, link.confirmation_token)

      assert {^png, "image/png"} = FakeStorage.get(store, @bucket, "areas/#{area.id}")
    end

    test "refuses bytes that are not an image and keeps the current photo", %{
      world: world,
      store: store
    } do
      person = world.records.m1

      for bytes <- ["this is not an image", "<html><script>alert(1)</script></html>", @svg] do
        link = upload!(store, world, :read_write, :persons, person, bytes)

        assert world
               |> confirm(:read_write, :persons, person.id, link.confirmation_token)
               |> AccountsCase.codes() == ["invalid"]
      end

      assert FakeStorage.names(store, @bucket) == []
      assert reload_person(person).photo_updated_at == nil
    end

    test "refuses a staged photo over 25 MB and deletes it", %{world: world, store: store} do
      area = world.records.a1
      link = upload!(store, world, :read_write, :areas, area, :binary.copy(<<0>>, @max_bytes + 1))

      assert world
             |> confirm(:read_write, :areas, area.id, link.confirmation_token)
             |> AccountsCase.codes() == ["invalid"]

      assert FakeStorage.names(store, @bucket) == []
    end

    test "a link nothing was uploaded to is not found", %{world: world} do
      area = world.records.a1
      {:ok, link} = request_upload(world, :read_write, :areas, area.id)

      assert world
             |> confirm(:read_write, :areas, area.id, link.confirmation_token)
             |> AccountsCase.codes() == ["not_found"]
    end

    test "a token is good only for its own user, subject and id, and only for 15 minutes", %{
      world: world,
      store: store
    } do
      area = world.records.a1
      link = upload!(store, world, :read_write, :areas, area)
      uid = world.users.read_write.uid
      staging = staging_name(link)

      stale =
        UploadConfirmation.issue(uid, :areas, area.id, staging,
          signed_at: System.system_time(:second) - 16 * 60
        )

      for {kind, subject, id, token} <- [
            {:area_edit, :areas, area.id, link.confirmation_token},
            {:read_write, :areas, world.records.a2.id, link.confirmation_token},
            {:read_write, :streets, area.id, link.confirmation_token},
            {:read_write, :areas, area.id, stale},
            {:read_write, :areas, area.id, "forged"}
          ] do
        assert world |> confirm(kind, subject, id, token) |> AccountsCase.codes() == ["not_found"],
               inspect({kind, subject})
      end

      assert FakeStorage.names(store, @bucket) == [staging]
    end

    test "re-checks the edit right and deletes the staging object when it is gone", %{
      world: world,
      store: store
    } do
      person = world.records.m1
      uid = world.users.read_all.uid
      staging = "uploads/persons/#{person.id}/#{Ash.UUID.generate()}"
      FakeStorage.put(store, @bucket, staging, @photo, "image/jpeg")
      token = UploadConfirmation.issue(uid, :persons, person.id, staging)

      assert world
             |> confirm(:read_all, :persons, person.id, token)
             |> AccountsCase.codes() == ["not_found"]

      assert FakeStorage.names(store, @bucket) == []
    end

    test "a storage failure records nothing and still deletes the staging object", %{
      world: world
    } do
      store = FakeStorage.start(fail: [:media_upload])
      person = world.records.m1
      link = upload!(store, world, :read_write, :persons, person)

      {result, log} =
        with_log(fn ->
          confirm(world, :read_write, :persons, person.id, link.confirmation_token)
        end)

      assert {:error, _error} = result
      assert log =~ "storage failed"
      assert FakeStorage.names(store, @bucket) == []
      assert reload_person(person).photo_updated_at == nil
    end

    test "is refused for unapproved and anonymous actors", %{world: world, store: store} do
      area = world.records.a1
      link = upload!(store, world, :read_write, :areas, area)

      for kind <- [:unapproved, :anonymous] do
        assert world
               |> confirm(kind, :areas, area.id, link.confirmation_token)
               |> AccountsCase.codes() == ["forbidden"]
      end
    end
  end
end
