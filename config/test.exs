import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :instagram_clone, InstagramClone.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "instagram_clone_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :instagram_clone, InstagramCloneWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "gIf+T3h02vP/HiElBH3AiBb8s7IzcqE9cSiroE2S9tz/vlZZ7krkirKLWj0F7Hmo",
  server: false

# In test we don't send emails.
config :instagram_clone, InstagramClone.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
