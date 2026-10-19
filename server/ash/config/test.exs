import Config
config :church_admin, Oban, testing: :manual

config :church_admin, ChurchAdmin.Google.Config,
  project_id: "church-admin-test",
  credentials: :emulator_owner,
  identity_toolkit: [
    base_url: "http://identitytoolkit.test/identitytoolkit.googleapis.com",
    req_options: [plug: {Req.Test, ChurchAdmin.Google.IdentityToolkit}, retry: false]
  ],
  storage: [
    base_url: "http://storage.test",
    req_options: [plug: {Req.Test, ChurchAdmin.Google.Storage}, retry: false]
  ],
  messaging: [
    adapter: ChurchAdmin.Google.Messaging.Local,
    local_delivery: :test_process,
    req_options: [plug: {Req.Test, ChurchAdmin.Google.Messaging}, retry: false]
  ]

config :ash, policies: [show_policy_breakdowns?: true], disable_async?: true

config :church_admin, ChurchAdmin.Repo,
  username: System.get_env("DB_USER", "postgres"),
  password: System.get_env("DB_PASSWORD", "church-admin-ash-dev"),
  hostname: System.get_env("DB_HOST", "localhost"),
  port: String.to_integer(System.get_env("TEST_DB_PORT", "55433")),
  database: System.get_env("DB_NAME", "church_admin"),
  force_drop: true,
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: System.schedulers_online() * 2

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :church_admin, ChurchAdminWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "/fQELyySszjn3WQLdJSBKLqBR5dbzsTAEjPOjgpawshjjG3W8/txxkeko9pBUOtE",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Sort query params output of verified routes for robust url comparisons
config :phoenix,
  sort_verified_routes_query_params: true
