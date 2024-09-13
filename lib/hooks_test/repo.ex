defmodule HooksTest.Repo do
  use Ecto.Repo,
    otp_app: :hooks_test,
    adapter: Ecto.Adapters.Postgres
end
