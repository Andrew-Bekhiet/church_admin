# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :mime,
  extensions: %{"json" => "application/vnd.api+json"},
  types: %{"application/vnd.api+json" => ["json"]}

config :ash,
  include_embedded_source_by_default?: false,
  show_keysets_for_all_actions?: false,
  default_page_type: :keyset,
  policies: [no_filter_static_forbidden_reads?: false],
  custom_types: [ticket_status: ChurchAdmin.Support.Ticket.Types.Status]

config :geo_postgis, json_library: Jason

# Ash: Type shorthands
config :ash, :custom_types,
  point: ChurchAdmin.Type.Point,
  line: ChurchAdmin.Type.Line,
  polygon: ChurchAdmin.Type.Polygon,
  color: ChurchAdmin.Type.Color

config :spark,
  formatter: [
    remove_parens?: true,
    "Ash.Resource": [
      section_order: [
        :json_api,
        :postgres,
        :resource,
        :code_interface,
        :actions,
        :policies,
        :pub_sub,
        :preparations,
        :changes,
        :validations,
        :multitenancy,
        :attributes,
        :relationships,
        :calculations,
        :aggregates,
        :identities
      ]
    ],
    "Ash.Domain": [
      section_order: [:json_api, :resources, :policies, :authorization, :domain, :execution]
    ]
  ]

config :church_admin,
  ecto_repos: [ChurchAdmin.Repo],
  generators: [timestamp_type: :utc_datetime, binary_id: true],
  ash_domains: [ChurchAdmin.Person, ChurchAdmin.GeoEntities]

# Configures the endpoint
config :church_admin, ChurchAdminWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [json: ChurchAdminWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ChurchAdmin.PubSub,
  live_view: [signing_salt: "fSSbckD4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
