defmodule Edupay.Repo do
  use Ecto.Repo,
    otp_app: :edupay,
    adapter: Ecto.Adapters.Postgres
end
