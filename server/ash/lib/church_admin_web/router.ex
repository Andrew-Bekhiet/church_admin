defmodule ChurchAdminWeb.Router do
  use ChurchAdminWeb, :router

  pipeline :graphql do
    plug AshGraphql.Plug
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/gql" do
    pipe_through [:graphql]

    forward "/playground", Absinthe.Plug.GraphiQL,
      schema: Module.concat(["ChurchAdminWeb.GraphqlSchema"]),
      socket: Module.concat(["ChurchAdminWeb.GraphqlSocket"]),
      interface: :simple

    forward "/", Absinthe.Plug, schema: Module.concat(["ChurchAdminWeb.GraphqlSchema"])
  end

  scope "/api", ChurchAdminWeb do
    pipe_through :api
  end
end
