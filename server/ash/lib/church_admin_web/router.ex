defmodule ChurchAdminWeb.Router do
  use ChurchAdminWeb, :router

  @graphql_schema Module.concat(["ChurchAdminWeb.GraphqlSchema"])
  @graphql_pipeline {ChurchAdminWeb.Graphql.Pipeline, :pipeline}

  pipeline :graphql do
    plug ChurchAdminWeb.Plugs.Authenticate
    plug ChurchAdminWeb.Plugs.LoadActor
    plug AshGraphql.Plug
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :file_download do
    plug ChurchAdminWeb.Plugs.Authenticate
    plug ChurchAdminWeb.Plugs.LoadActor
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

  scope "/api/files", ChurchAdminWeb do
    pipe_through :file_download

    get "/:token", FileController, :show
    get "/:token/:filename", FileController, :show
    put "/:token", FileController, :upload
    put "/:token/:filename", FileController, :upload
  end
end
