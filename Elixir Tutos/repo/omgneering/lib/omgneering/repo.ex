defmodule Omgneering.Repo do
  use Ecto.Repo,
    otp_app: :omgneering,
    adapter: Ecto.Adapters.MyXQL
end
