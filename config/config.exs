# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :exmon,
  ecto_repos: [Exmon.Repo]

# Configures the endpoint
config :exmon, ExmonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y1oRqcGBTC3HVccNewVZ+aDZV+5wkUTxY6b3bdF5w9lq8HKbyRgLELe0hmjwDWI3",
  render_errors: [view: ExmonWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Exmon.PubSub,
  live_view: [signing_salt: "YZBA4lsX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
