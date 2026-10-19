defmodule ChurchAdminWeb.GraphqlSchema do
  use Absinthe.Schema

  use AshGraphql,
    domains: Application.compile_env!(:church_admin, :ash_domains),
    generate_sdl_file: "priv/graphql/schema.graphql"

  import_types Absinthe.Plug.Types

  query do
    @desc """
    Hello! This is a sample query to verify that AshGraphql has been set up correctly.
    Remove me once you have a query of your own!
    """
    field :say_hello, :string do
      resolve fn _, _, _ ->
        {:ok, "Hello from AshGraphql!"}
      end
    end
  end
end
