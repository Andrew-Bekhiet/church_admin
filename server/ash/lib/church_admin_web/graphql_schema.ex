defmodule ChurchAdminWeb.GraphqlSchema do
  use Absinthe.Schema

  use AshGraphql,
    domains: Application.compile_env!(:church_admin, :ash_domains),
    generate_sdl_file: "../../client/lib/src/core/graphql/schema.graphql"

  import_types Absinthe.Plug.Types

  query do
  end
end
