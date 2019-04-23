# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :evolvbox,
  ecto_repos: [Evolvbox.Repo]

# Configures the endpoint
config :evolvbox, EvolvboxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+3fa0iB5fD7+eiWN5y2IRHduywk+wh9KJy3PJhxL1pZrkqzhqz4usfS4t9t0dZ29",
  render_errors: [view: EvolvboxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Evolvbox.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :ueberauth, Ueberauth,
  providers: [
    google: {Ueberauth.Strategy.Google, []}
  ]

  config :ueberauth, Ueberauth.Strategy.Google.OAuth,
  client_id: "887320207178-p8vn5s9es6b7rk8di3055hc49tdhskrf.apps.googleusercontent.com",
  client_secret: "qSR2xXtu6OL-eepHhV1vjsLJ"
