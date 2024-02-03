# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :church_admin,
  ecto_repos: [ChurchAdmin.Repo],
  generators: [timestamp_type: :utc_datetime, binary_id: true]

config :church_admin, ChurchAdmin.Repo,
  migration_primary_key: [
    name: :id,
    type: :binary_id,
    default: {:fragment, "gen_random_uuid()"},
    null: false
  ],
  types: ChurchAdmin.PostgresTypes,
  extensions: [{Postgrex.Extensions.PostGIS, []}],
  migration_foreign_key: [column: :id, type: :binary_id]

# Configures the endpoint
config :church_admin, ChurchAdminWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Phoenix.Endpoint.Cowboy2Adapter,
  render_errors: [
    formats: [json: ChurchAdminWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ChurchAdmin.PubSub,
  live_view: [signing_salt: "/yBZLazZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"

if config_env() == :dev do
  import_config "dev.secrets.exs"
end
