# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :beer_locations,
  ecto_repos: [BeerLocations.Repo]

# Configures the endpoint
config :beer_locations, BeerLocations.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i4jHwn0olMjg3A0zroNbyBaAUMVqEo6QQqSZBo0UqTREsO9M8QsKPE/M39hu3PDX",
  render_errors: [view: BeerLocations.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BeerLocations.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
