# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :s3_slideshow, S3SlideshowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sGskrVON/pDdiHjk/AIXkTWWoHH6Yx5wFzZpuX7q8Lw8hFbykUI6MR7KHPxdEsmz",
  render_errors: [view: S3SlideshowWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: S3Slideshow.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ex_aws,
  s3: [region: "us-west-2"]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
