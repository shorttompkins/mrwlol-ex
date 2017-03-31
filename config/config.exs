# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mrwlol,
  ecto_repos: [Mrwlol.Repo]

# Configures the endpoint
config :mrwlol, Mrwlol.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8ih4jUFojlqFxacwlV/Wn3RZrRytAuK5qg2f+Xr5M/4RC1fCVxg5HfANuQSQfLwm",
  render_errors: [view: Mrwlol.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mrwlol.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
