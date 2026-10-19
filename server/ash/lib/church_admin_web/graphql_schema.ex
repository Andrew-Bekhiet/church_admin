defmodule ChurchAdminWeb.GraphqlSchema do
  use Absinthe.Schema

  use AshGraphql,
    domains: Application.compile_env!(:church_admin, :ash_domains),
    auto_import_absinthe_types?: false,
    generate_sdl_file: "../../client/lib/src/core/graphql/schema.graphql"

  import_types Absinthe.Plug.Types
  import_types Absinthe.Type.Custom
  import_types AshGraphql.Types.JSONString
  import_types ChurchAdminWeb.Graphql.JsonScalar

  query do
  end
end
