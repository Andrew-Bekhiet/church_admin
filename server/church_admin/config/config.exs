# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :ash_graphql, authorize_update_destroy_with_error?: true

config :ash,
  allow_forbidden_field_for_relationships_by_default?: true,
  include_embedded_source_by_default?: false,
  show_keysets_for_all_actions?: false,
  default_page_type: :keyset,
  policies: [no_filter_static_forbidden_reads?: false],
  keep_read_action_loads_when_loading?: false,
  default_actions_require_atomic?: true,
  read_action_after_action_hooks_in_order?: true,
  bulk_actions_default_to_errors?: true

config :spark,
  formatter: [
    remove_parens?: true,
    "Ash.Resource": [
      section_order: [
        :graphql,
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
      section_order: [:graphql, :resources, :policies, :authorization, :domain, :execution]
    ]
  ]

config :geo_postgis, json_library: Jason

config :ash, :custom_types,
  point: ChurchAdmin.Type.Point,
  line_string: ChurchAdmin.Type.LineString,
  polygon: ChurchAdmin.Type.Polygon,
  color: ChurchAdmin.Type.Color

config :church_admin,
  ecto_repos: [ChurchAdmin.Repo],
  generators: [timestamp_type: :utc_datetime],
  ash_domains: [
    ChurchAdmin.Person,
    ChurchAdmin.Geography,
    ChurchAdmin.Attendance
  ]

# Configures the endpoint
config :church_admin, ChurchAdminWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: ChurchAdminWeb.ErrorHTML, json: ChurchAdminWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ChurchAdmin.PubSub,
  live_view: [signing_salt: "IBQBmcan"]

# Configures Elixir's Logger
config :logger, :default_formatter,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
