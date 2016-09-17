use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :words, Words.Endpoint,
  secret_key_base: "3wCedtnJJ/wbG+rK4ZQdglxiD/WEhR6vW/+BcWkDg9X/+rr0rONvr5ypr6RpQBiH"

# Configure your database
config :words, Words.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "words_prod",
  pool_size: 20
