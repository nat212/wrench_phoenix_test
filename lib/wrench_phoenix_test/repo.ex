defmodule WrenchPhoenixTest.Repo do
  use Ecto.Repo,
    otp_app: :wrench_phoenix_test,
    adapter: Ecto.Adapters.Postgres
end
