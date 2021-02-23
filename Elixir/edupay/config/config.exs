# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :edupay,
  ecto_repos: [Edupay.Repo]

# Configures the endpoint
config :edupay, EdupayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "D+diJG8jvt45cPke5kcmMy3hz31g/wTNPps0SyVQIqzQIREJCV6V4Tdd643beyNa",
  render_errors: [view: EdupayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Edupay.PubSub,
  live_view: [signing_salt: "e6Yq0Is/"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
