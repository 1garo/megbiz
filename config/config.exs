# In your config/config.exs file
import Config

config :megbiz, Megbiz.Repo,
  #database: System.get_env("POSTGRES_USER"),
  #password: System.get_env("POSTGRES_PASSWORD"),
  database: "megbiz_db",
  password: "megbizpw",
  username: "megbiz",
  hostname: "localhost",
  port: "15432"

config :megbiz, ecto_repos: [Megbiz.Repo]
