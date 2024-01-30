defmodule AmogusUi.Repo do
  use Ecto.Repo,
    otp_app: :amogus_ui,
    adapter: Ecto.Adapters.SQLite3
end
