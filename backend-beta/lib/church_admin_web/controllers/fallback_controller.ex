defmodule ChurchAdminWeb.FallbackController do
  @moduledoc """
  Translates controller action results into valid `Plug.Conn` responses.

  See `Phoenix.Controller.action_fallback/1` for more details.
  """
  use ChurchAdminWeb, :controller

  # This clause handles errors returned by Ecto's insert/update/delete.
  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(ChurchAdminWeb.ChangesetJSON)
    |> render(:error, changeset: changeset)
  end

  def call(conn, {:error, %{status: status, message: message}}) when is_atom(status) do
    conn
    |> put_status(status)
    |> put_view(ChurchAdminWeb.ErrorJSON)
    |> render(:error, message: message)
  end

  def call(conn, error) do
    IO.puts("Error: #{inspect(error)}")

    conn
    |> put_status(:internal_server_error)
    |> put_view(ChurchAdminWeb.ErrorJSON)
    |> render(:error, message: "Internal server error")
  end
end
