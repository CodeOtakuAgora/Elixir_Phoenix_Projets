# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :omgneering,
  ecto_repos: [Omgneering.Repo]

# Configures the endpoint
config :omgneering, OmgneeringWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y/BrAqrwv2kOhMEAe9idb/680L6FsJelYACstJKU1qeVZ+j1ST7sSBpGEbnZ2Zhv",
  render_errors: [view: OmgneeringWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Omgneering.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix_swagger, json_library: Jason

# Configures the swagger
config :omgneering, :phoenix_swagger,
  swagger_files: %{
    "priv/static/swagger.json" => [
      router: OmgneeringWeb.Router,
    ]
  }

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
