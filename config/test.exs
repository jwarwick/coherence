use Mix.Config

# config :coherence, ecto_repos: [TestCoherence.Repo]

config :logger, level: :warn

config :coherence, TestCoherence.Endpoint,
  http: [port: 4001],
  secret_key_base: "HL0pikQMxNSA58Dv4mf26O/eh1e4vaJDmX0qLgqBcnS94gbKu9Xn3x114D+mHYcX",
  server: false

config :coherence, TestCoherence.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "coherence_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :coherence,
  user_schema: TestCoherence.User,
  repo: TestCoherence.Repo,
  module: TestCoherence,
  logged_out_url: "/",
  email_from: {"Your Name", "yourname@example.com"},
  opts: [:confirmable, :authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

