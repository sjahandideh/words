ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Words.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Words.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Words.Repo)

