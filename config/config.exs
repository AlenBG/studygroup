# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :studygroup,
  ecto_repos: [Studygroup.Repo]

# Configures the endpoint
config :studygroup, Studygroup.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1URDHM7ZV3OUr9zkKKNUKgeX62WdVP+tR0NMyt0Q6Da3vetSAF5suuKEIP0c0cTE",
  render_errors: [view: Studygroup.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Studygroup.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
