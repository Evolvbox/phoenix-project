defmodule Evolvbox.Repo do
  use Ecto.Repo,
    otp_app: :evolvbox,
    adapter: Ecto.Adapters.Postgres
end
