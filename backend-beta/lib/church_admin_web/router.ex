defmodule ChurchAdminWeb.Router do
  use ChurchAdminWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
    plug ChurchAdminWeb.Plugs.Auth
  end

  pipeline :require_auth do
    plug ChurchAdminWeb.Plugs.Auth
  end

  scope "/healthz", ChurchAdminWeb do
    pipe_through(:api)

    get "/", HealthzController, :index
  end

  scope "/api", ChurchAdminWeb do
    pipe_through(:api)
    pipe_through(:require_auth)

    resources "/areas", AreaController, except: [:new, :edit]
  end

  # Enable LiveDashboard in development
  if Application.compile_env(:church_admin, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through([:fetch_session, :protect_from_forgery])

      live_dashboard("/dashboard", metrics: ChurchAdminWeb.Telemetry)
    end
  end
end
