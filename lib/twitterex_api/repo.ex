defmodule TwitterexApi.Repo do
  use Ecto.Repo,
    otp_app: :twitterex_api,
    adapter: Ecto.Adapters.Postgres
end
