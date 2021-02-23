defmodule EdupayWeb.Router do
  use EdupayWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EdupayWeb do
    pipe_through :api

    get "/:filename", WelcomeController, :index
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: EdupayWeb.Telemetry
    end
  end
end
