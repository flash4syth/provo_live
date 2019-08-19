defmodule ProvoLive.Repo do
  use Ecto.Repo,
    otp_app: :provo_live,
    adapter: Ecto.Adapters.Postgres
end
