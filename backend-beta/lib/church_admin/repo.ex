defmodule ChurchAdmin.Repo do
  use Ecto.Repo,
    otp_app: :church_admin,
    adapter: Ecto.Adapters.Postgres
end
