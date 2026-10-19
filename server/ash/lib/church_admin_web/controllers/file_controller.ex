defmodule ChurchAdminWeb.FileController do
  @moduledoc """
  `GET /api/files/:token`: hands out the file a `ChurchAdminWeb.FileToken`
  names. The token is the credential, like the signed storage URL it
  replaces; a request that also carries a bearer token must carry the one of
  the user the file was issued to. What the operation needs is checked again
  when the file is fetched, as that user, so a right revoked after the token
  was issued is honoured.

  Each operation is one `serve/2` clause. The URL may end in a file name
  (`/api/files/:token/:filename`), which only gives clients a readable last
  path segment; the `content-disposition` header names the file.
  """

  use ChurchAdminWeb, :controller

  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdmin.Errors.DomainError
  alias ChurchAdmin.Exports.{Selection, Workbook}
  alias ChurchAdminWeb.FileToken

  @xlsx_content_type "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

  def show(conn, %{"token" => token}) do
    with {:ok, claims} <- FileToken.verify(token),
         :ok <- same_user?(conn, claims) do
      serve(conn, claims)
    else
      {:error, reason} -> send_error(conn, 401, "unauthenticated", "unauthenticated: #{reason}")
    end
  end

  defp serve(conn, %{op: :export, uid: uid, params: params}) do
    actor = ActorLoader.load(uid)

    case Workbook.build(actor, Selection.new(params)) do
      {:ok, xlsx} ->
        conn
        |> put_resp_content_type(@xlsx_content_type, nil)
        |> put_resp_header(
          "content-disposition",
          ~s(attachment; filename="#{Workbook.file_name()}")
        )
        |> send_resp(200, xlsx)

      {:error, %DomainError{code: "export/forbidden"} = error} ->
        send_error(conn, 403, error.code, Exception.message(error))

      {:error, %DomainError{code: code} = error} ->
        send_error(conn, 422, code, Exception.message(error))
    end
  end

  defp same_user?(conn, %{uid: uid}) do
    case Ash.PlugHelpers.get_actor(conn) do
      nil -> :ok
      %Actor{uid: ^uid} -> :ok
      %Actor{} -> {:error, :another_user}
    end
  end

  defp send_error(conn, status, code, message) do
    body = %{errors: [%{message: message, extensions: %{code: code, short_message: message}}]}

    conn |> put_status(status) |> json(body)
  end
end
