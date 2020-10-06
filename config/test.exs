use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :studygroup, Studygroup.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :studygroup, Studygroup.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "studygroup_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
