defmodule ChurchAdmin.Google.ConfigTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Google.Config

  @production_settings [
    project_id: "church-data-admin",
    credentials: {:service_account, %{"client_email" => "a@b", "private_key" => "pem"}},
    identity_toolkit: [
      adapter: ChurchAdmin.Google.IdentityToolkit.Http,
      base_url: "https://identitytoolkit.googleapis.com"
    ],
    storage: [
      adapter: ChurchAdmin.Google.Storage.Http,
      base_url: "https://storage.googleapis.com"
    ],
    messaging: [
      adapter: ChurchAdmin.Google.Messaging.Http,
      base_url: "https://fcm.googleapis.com"
    ]
  ]

  @emulator_settings [
    project_id: "church-admin-local",
    credentials: :emulator_owner,
    identity_toolkit: [
      adapter: ChurchAdmin.Google.IdentityToolkit.Http,
      base_url: "http://localhost:9099/identitytoolkit.googleapis.com"
    ],
    storage: [adapter: ChurchAdmin.Google.Storage.Http, base_url: "http://localhost:9199"],
    messaging: [adapter: ChurchAdmin.Google.Messaging.Local, local_delivery: :log]
  ]

  describe "check_allowed_in/2" do
    test "allows Google endpoints with service-account credentials in prod" do
      assert Config.check_allowed_in(@production_settings, :prod) == :ok
    end

    test "allows the emulators in dev and test" do
      assert Config.check_allowed_in(@emulator_settings, :dev) == :ok
      assert Config.check_allowed_in(@emulator_settings, :test) == :ok
    end

    test "refuses the emulators outside dev and test, naming every offending setting" do
      assert {:error, message} = Config.check_allowed_in(@emulator_settings, :prod)

      assert message =~ "Bearer owner"
      assert message =~ "http://localhost:9099/identitytoolkit.googleapis.com"
      assert message =~ "http://localhost:9199"
      assert message =~ "Messaging.Local"
    end

    test "refuses the emulator owner token alone in prod" do
      settings = Keyword.put(@production_settings, :credentials, :emulator_owner)

      assert {:error, message} = Config.check_allowed_in(settings, :prod)
      assert message =~ "Bearer owner"
    end

    test "refuses a non-Google base URL in prod even over https" do
      settings =
        put_in(@production_settings, [:storage, :base_url], "https://storage.example.com")

      assert {:error, message} = Config.check_allowed_in(settings, :prod)
      assert message =~ "https://storage.example.com"
    end

    test "refuses missing settings in prod" do
      assert {:error, message} = Config.check_allowed_in([], :prod)
      assert message =~ "credentials"
    end
  end

  test "the test environment's own settings pass the guard" do
    assert Config.check_allowed_in(Application.fetch_env!(:church_admin, Config), :test) == :ok
  end
end
