defmodule ChurchAdmin.Google.EmulatorTest do
  use ExUnit.Case, async: false

  alias ChurchAdmin.Accounts.Claims
  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.IdentityToolkit
  alias ChurchAdmin.Google.IdentityToolkit.Account
  alias ChurchAdmin.Google.Storage
  alias ChurchAdmin.Google.Storage.Object

  @moduletag :emulator

  setup do
    emulators = Application.fetch_env!(:church_admin, :firebase_emulators)
    stubbed_settings = Application.fetch_env!(:church_admin, ChurchAdmin.Google.Config)

    Application.put_env(
      :church_admin,
      ChurchAdmin.Google.Config,
      stubbed_settings
      |> Keyword.put(:project_id, emulators[:project_id])
      |> Keyword.put(:identity_toolkit,
        adapter: IdentityToolkit.Http,
        base_url: "http://#{emulators[:auth_host]}/identitytoolkit.googleapis.com"
      )
      |> Keyword.put(:storage,
        adapter: Storage.Http,
        base_url: "http://#{emulators[:storage_host]}"
      )
    )

    on_exit(fn ->
      Application.put_env(:church_admin, ChurchAdmin.Google.Config, stubbed_settings)
    end)

    %{emulators: emulators}
  end

  describe "the Auth emulator" do
    setup %{emulators: emulators} do
      email = "emulator-#{System.unique_integer([:positive])}@example.com"

      %{"localId" => uid} =
        Req.post!(
          "http://#{emulators[:auth_host]}/identitytoolkit.googleapis.com/v1/projects/#{emulators[:project_id]}/accounts",
          auth: {:bearer, "owner"},
          json: %{email: email, password: "emulator-password"}
        ).body

      %{uid: uid, email: email}
    end

    test "looks an account up, updates its claims and verification, then deletes it",
         %{uid: uid, email: email} do
      assert {:ok, %Account{uid: ^uid, email: ^email, email_verified: false, custom_claims: %{}}} =
               IdentityToolkit.lookup_by_uid(uid)

      assert {:ok, %Account{uid: ^uid}} = IdentityToolkit.lookup_by_email(email)

      claims = Claims.default_for("user-uid")
      assert IdentityToolkit.update(uid, custom_claims: claims, email_verified: true) == :ok

      assert {:ok, %Account{email_verified: true, custom_claims: ^claims}} =
               IdentityToolkit.lookup_by_uid(uid)

      assert IdentityToolkit.delete(uid) == :ok

      assert {:error, %Error{reason: :not_found}} = IdentityToolkit.lookup_by_uid(uid)
    end

    test "reports an unknown account as not found on update" do
      assert {:error, %Error{reason: :not_found}} =
               IdentityToolkit.update("no-such-uid", email_verified: true)
    end
  end

  describe "the Storage emulator" do
    test "uploads, reads metadata, lists, downloads and deletes an object", %{
      emulators: emulators
    } do
      bucket = "#{emulators[:project_id]}.appspot.com"
      prefix = "emulator-test-#{System.unique_integer([:positive])}/"
      name = prefix <> "photo"

      assert {:ok, %Object{name: ^name, size: 10, content_type: "image/jpeg"} = uploaded} =
               Storage.upload(bucket, name, Stream.map(["jpeg-", "bytes"], & &1),
                 content_type: "image/jpeg",
                 content_length: 10
               )

      assert %DateTime{} = uploaded.updated_at
      assert Storage.metadata(bucket, name) == {:ok, uploaded}

      assert {:ok, %{objects: [%Object{name: ^name}], next_page_token: nil}} =
               Storage.list(bucket, prefix)

      assert {:ok, stream} = Storage.download(bucket, name)
      assert Enum.join(stream) == "jpeg-bytes"

      assert Storage.delete(bucket, name) == :ok
      assert {:error, %Error{reason: :not_found}} = Storage.metadata(bucket, name)
      assert {:error, %Error{reason: :not_found}} = Storage.delete(bucket, name)
    end
  end
end
