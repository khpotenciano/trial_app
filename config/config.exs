# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trial_app,
  ecto_repos: [TrialApp.Repo]

# Configures the endpoint
config :trial_app, TrialApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0xqtJyIExDirrDqSdEZ6DwuOgwPomoY4m2xFkdHbaBMT308r7tK5kdWsg96mZCiE",
  render_errors: [view: TrialApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TrialApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
