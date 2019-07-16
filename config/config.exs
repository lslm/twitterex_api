# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :twitterex_api,
  ecto_repos: [TwitterexApi.Repo]

# Configures the endpoint
config :twitterex_api, TwitterexApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WdtvczXS4ZKqzBkMkS7Ko0oFr9gRPsT8tQjSXwwJGZTx4Oj6WcrHxes981e0gR9c",
  render_errors: [view: TwitterexApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TwitterexApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
