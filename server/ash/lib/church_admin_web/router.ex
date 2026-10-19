defmodule ChurchAdminWeb.Router do
  use ChurchAdminWeb, :router

  @graphql_schema Module.concat(["ChurchAdminWeb.GraphqlSchema"])
  @graphql_pipeline {ChurchAdminWeb.Graphql.Pipeline, :pipeline}

  pipeline :graphql do
    plug ChurchAdminWeb.Plugs.Authenticate
    plug AshGraphql.Plug
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  get "/healthz", ChurchAdminWeb.HealthController, :show

  scope "/gql" do
    pipe_through [:graphql]

    if Application.compile_env(:church_admin, :dev_routes) do
      forward "/playground", Absinthe.Plug.GraphiQL,
        schema: @graphql_schema,
        pipeline: @graphql_pipeline,
        interface: :simple
    end

    forward "/", Absinthe.Plug, schema: @graphql_schema, pipeline: @graphql_pipeline
  end

  scope "/api", ChurchAdminWeb do
    pipe_through :api
  end
end
