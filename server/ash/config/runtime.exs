import Config

# config/runtime.exs is executed for all environments, including
# during releases. It is executed after compilation and before the
# system starts, so it is typically used to load production configuration
# and secrets from environment variables or elsewhere. Do not define
# any compile-time configuration in here, as it won't be applied.
# The block below contains prod specific runtime configuration.

# ## Using releases
#
# If you use `mix release`, you need to explicitly enable the server
# by passing the PHX_SERVER=true when you start it:
#
#     PHX_SERVER=true bin/church_admin start
#
# Alternatively, you can use `mix phx.gen.release` to generate a `bin/server`
# script that automatically sets the env var above.
if System.get_env("PHX_SERVER") do
  config :church_admin, ChurchAdminWeb.Endpoint, server: true
end

config :church_admin, ChurchAdminWeb.Endpoint,
  http: [port: "PORT" |> System.get_env("4100") |> String.to_integer()]

{default_auth_mode, default_firebase_project_id} =
  case config_env() do
    :dev -> {"emulator", "church-admin-local"}
    :test -> {"emulator", "demo-church-admin"}
    :prod -> {"firebase", nil}
  end

auth_env = fn name, default ->
  if config_env() == :test, do: default, else: System.get_env(name, default)
end

auth_mode =
  case auth_env.("AUTH_MODE", default_auth_mode) do
    "firebase" -> :firebase
    "emulator" -> :emulator
    other -> raise "AUTH_MODE must be firebase or emulator, got: #{inspect(other)}"
  end

config :church_admin, ChurchAdmin.Auth.TokenVerifier,
  mode: auth_mode,
  firebase_project_id:
    auth_env.("FIREBASE_PROJECT_ID", default_firebase_project_id) ||
      raise("environment variable FIREBASE_PROJECT_ID is missing")

config :church_admin,
  account_claiming_by_email?:
    auth_env.("ACCOUNT_CLAIMING_BY_EMAIL", if(config_env() == :prod, do: "false", else: "true")) ==
      "true"

storage_buckets = fn firebase_project_id ->
  if config_env() == :test do
    [photos: "church-admin-test.appspot.com", app_releases: "church-admin-test-releases"]
  else
    [
      photos: System.get_env("PHOTOS_GCS_BUCKET", "#{firebase_project_id}.appspot.com"),
      app_releases: System.get_env("APP_RELEASE_GCS_BUCKET", "church-admin-local-releases")
    ]
  end
end

if config_env() == :dev do
  {:ok, http_bind_ip} =
    "HTTP_BIND_IP" |> System.get_env("127.0.0.1") |> String.to_charlist() |> :inet.parse_address()

  config :church_admin, ChurchAdminWeb.Endpoint, http: [ip: http_bind_ip]

  if public_url = System.get_env("PUBLIC_URL") do
    %URI{scheme: scheme, host: public_host, port: public_port} = URI.parse(public_url)

    if is_nil(scheme) or is_nil(public_host) do
      raise "PUBLIC_URL must be a full origin such as http://localhost:8080, got: #{inspect(public_url)}"
    end

    config :church_admin, ChurchAdminWeb.Endpoint,
      url: [scheme: scheme, host: public_host, port: public_port]
  end

  config :church_admin, ChurchAdmin.Files,
    buckets:
      "FIREBASE_PROJECT_ID"
      |> System.get_env("church-admin-local")
      |> storage_buckets.()

  config :church_admin, ChurchAdmin.Google.Config,
    project_id: System.get_env("FIREBASE_PROJECT_ID", "church-admin-local"),
    credentials: :emulator_owner,
    identity_toolkit: [
      base_url:
        "http://#{System.get_env("FIREBASE_AUTH_EMULATOR_HOST", "localhost:9099")}/identitytoolkit.googleapis.com"
    ],
    storage: [
      base_url: "http://#{System.get_env("FIREBASE_STORAGE_EMULATOR_HOST", "localhost:9199")}"
    ],
    messaging: [adapter: ChurchAdmin.Google.Messaging.Local, local_delivery: :log]
end

if config_env() == :test do
  config :church_admin, ChurchAdmin.Files, buckets: storage_buckets.(nil)

  config :church_admin, :firebase_emulators,
    auth_host: System.get_env("FIREBASE_AUTH_EMULATOR_HOST", "localhost:9099"),
    storage_host: System.get_env("FIREBASE_STORAGE_EMULATOR_HOST", "localhost:9199"),
    project_id: System.get_env("FIREBASE_PROJECT_ID", "church-admin-local")
end

if config_env() == :prod do
  database_url =
    System.get_env("DATABASE_URL") ||
      raise """
      environment variable DATABASE_URL is missing.
      For example: ecto://USER:PASS@HOST/DATABASE
      """

  maybe_ipv6 = if System.get_env("ECTO_IPV6") in ~w(true 1), do: [:inet6], else: []

  config :church_admin, ChurchAdmin.Repo,
    # ssl: true,
    url: database_url,
    pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
    # For machines with several cores, consider starting multiple pools of `pool_size`
    # pool_count: 4,
    socket_options: maybe_ipv6

  # The secret key base is used to sign/encrypt cookies and other secrets.
  # A default value is used in config/dev.exs and config/test.exs but you
  # want to use a different value for prod and you most likely don't want
  # to check this value into version control, so we use an environment
  # variable instead.
  secret_key_base =
    System.get_env("SECRET_KEY_BASE") ||
      raise """
      environment variable SECRET_KEY_BASE is missing.
      You can generate one by calling: mix phx.gen.secret
      """

  google_service_account =
    (System.get_env("GOOGLE_APPLICATION_CREDENTIALS_JSON") ||
       raise("environment variable GOOGLE_APPLICATION_CREDENTIALS_JSON is missing."))
    |> Jason.decode!()

  firebase_project_id =
    System.get_env("FIREBASE_PROJECT_ID") || google_service_account["project_id"]

  config :church_admin, ChurchAdmin.Files, buckets: storage_buckets.(firebase_project_id)

  config :church_admin, ChurchAdmin.Google.Config,
    project_id: firebase_project_id,
    credentials: {:service_account, google_service_account}

  host = System.get_env("PHX_HOST") || "example.com"

  config :church_admin, :dns_cluster_query, System.get_env("DNS_CLUSTER_QUERY")

  config :church_admin,
         :cors_allowed_origins,
         "CORS_ALLOWED_ORIGINS" |> System.get_env("") |> String.split(~r{\s*,\s*}, trim: true)

  config :church_admin, ChurchAdminWeb.Endpoint,
    url: [host: host, port: 443, scheme: "https"],
    http: [
      # Enable IPv6 and bind on all interfaces.
      # Set it to  {0, 0, 0, 0, 0, 0, 0, 1} for local network only access.
      # See the documentation on https://bandit.hexdocs.pm/Bandit.html#t:options/0
      # for details about using IPv6 vs IPv4 and loopback vs public addresses.
      ip: {0, 0, 0, 0, 0, 0, 0, 0}
    ],
    secret_key_base: secret_key_base

  # ## SSL Support
  #
  # To get SSL working, you will need to add the `https` key
  # to your endpoint configuration:
  #
  #     config :church_admin, ChurchAdminWeb.Endpoint,
  #       https: [
  #         ...,
  #         port: 443,
  #         cipher_suite: :strong,
  #         keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
  #         certfile: System.get_env("SOME_APP_SSL_CERT_PATH")
  #       ]
  #
  # The `cipher_suite` is set to `:strong` to support only the
  # latest and more secure SSL ciphers. This means old browsers
  # and clients may not be supported. You can set it to
  # `:compatible` for wider support.
  #
  # `:keyfile` and `:certfile` expect an absolute path to the key
  # and cert in disk or a relative path inside priv, for example
  # "priv/ssl/server.key". For all supported SSL configuration
  # options, see https://plug.hexdocs.pm/Plug.SSL.html#configure/1
  #
  # We also recommend setting `force_ssl` in your config/prod.exs,
  # ensuring no data is ever sent via http, always redirecting to https:
  #
  #     config :church_admin, ChurchAdminWeb.Endpoint,
  #       force_ssl: [hsts: true]
  #
  # Check `Plug.SSL` for all available options in `force_ssl`.
end
