defmodule ChurchAdminWeb.FileController do
  @moduledoc """
  `GET` and `PUT /api/files/:token`: hands out, or takes, the file a
  `ChurchAdminWeb.FileToken` names. The token is the credential, like the
  signed storage URL it replaces; a request that also carries a bearer token
  must carry the one of the user the file was issued to. What the operation needs is checked again
  when the file is fetched, as that user, so a right revoked after the token
  was issued is honoured.

  Each operation is one `serve/2` clause, and answers one method: a token
  for the wrong method gets 405. The URL may end in a file name
  (`/api/files/:token/:filename`), which only gives clients a readable last
  path segment; the `content-disposition` header names the file.
  """

  use ChurchAdminWeb, :controller

  require Logger

  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdmin.Errors.DomainError
  alias ChurchAdmin.Exports.{Selection, Workbook}
  alias ChurchAdmin.Files.Buckets
  alias ChurchAdmin.Files.Photos.{Access, Upload}
  alias ChurchAdmin.Google
  alias ChurchAdminWeb.{FileToken, StreamedFile}

  @max_photo_bytes 25 * 1024 * 1024

  @xlsx_content_type "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

  def show(conn, params), do: serve_token(conn, params)

  def upload(conn, params), do: serve_token(conn, params)

  defp serve_token(conn, %{"token" => token}) do
    with {:ok, claims} <- FileToken.verify(token),
         :ok <- same_user?(conn, claims) do
      serve(conn, claims)
    else
      {:error, reason} -> send_error(conn, 401, "unauthenticated", "unauthenticated: #{reason}")
    end
  end

  defp serve(%{method: "GET"} = conn, %{op: :export, uid: uid, params: params}) do
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

  defp serve(%{method: "PUT"} = conn, %{op: :photo_upload, uid: uid, params: params}) do
    actor = ActorLoader.load(uid)

    with {:ok, target} <- Access.resolve(actor, params.subject, params.id, :write),
         {:ok, bytes, conn} <- read_photo(conn),
         :ok <- Upload.store(target, bytes, upload_content_type(conn, params)) do
      send_resp(conn, 204, "")
    else
      {:error, %DomainError{} = error} -> send_domain_error(conn, error)
      {:error, :empty} -> send_error(conn, 400, "invalid", "The photo is empty")
      {:error, :too_large} -> send_error(conn, 413, "invalid", "The photo is too large")
      {:error, error} -> send_storage_error(conn, error)
    end
  end

  defp serve(%{method: "GET"} = conn, %{op: :photo_download, uid: uid, params: params}) do
    actor = ActorLoader.load(uid)

    with {:ok, target} <- Access.resolve(actor, params.subject, params.id, :read),
         {:ok, chunks} <- Google.Storage.download(Buckets.photos(), target.object) do
      conn
      |> put_resp_header("cache-control", "private, max-age=300")
      |> StreamedFile.send_chunks(chunks, params.content_type || "application/octet-stream")
    else
      {:error, %DomainError{} = error} -> send_domain_error(conn, error)
      {:error, error} -> send_storage_error(conn, error)
    end
  end

  defp serve(%{method: "GET"} = conn, %{op: :app_download, uid: uid, params: params}) do
    if ActorLoader.load(uid).approved? do
      stream_app_release(conn, params)
    else
      send_error(conn, 403, "forbidden", "forbidden")
    end
  end

  defp serve(conn, _claims),
    do: send_error(conn, 405, "invalid", "This link does not take #{conn.method} requests")

  defp stream_app_release(conn, params) do
    case Google.Storage.download(params.bucket, params.object) do
      {:ok, chunks} ->
        conn
        |> put_resp_header(
          "content-disposition",
          ~s(attachment; filename="church-admin-v#{params.version}.#{params.extension}")
        )
        |> StreamedFile.send_chunks(chunks, params.content_type, params.size)

      {:error, error} ->
        send_storage_error(conn, error)
    end
  end

  defp read_photo(conn) do
    case read_body(conn, length: @max_photo_bytes) do
      {:ok, "", _conn} -> {:error, :empty}
      {:ok, bytes, conn} -> {:ok, bytes, conn}
      {:more, _partial, _conn} -> {:error, :too_large}
    end
  end

  defp upload_content_type(conn, %{content_type: nil}),
    do: conn |> get_req_header("content-type") |> List.first("application/octet-stream")

  defp upload_content_type(_conn, %{content_type: content_type}), do: content_type

  defp same_user?(conn, %{uid: uid}) do
    case Ash.PlugHelpers.get_actor(conn) do
      nil -> :ok
      %Actor{uid: ^uid} -> :ok
      %Actor{} -> {:error, :another_user}
    end
  end

  defp send_domain_error(conn, %DomainError{code: "not_found"} = error),
    do: send_error(conn, 404, error.code, Exception.message(error))

  defp send_domain_error(conn, %DomainError{} = error),
    do: send_error(conn, 403, error.code, Exception.message(error))

  defp send_storage_error(conn, %Google.Error{reason: :not_found}),
    do: send_error(conn, 404, "not_found", "The file was not found")

  defp send_storage_error(conn, %Google.Error{} = error) do
    Logger.error("storage failed: #{inspect(error)}")
    send_error(conn, 502, "storage_unavailable", "The file storage failed")
  end

  defp send_storage_error(conn, error) do
    Logger.error("recording the photo failed: #{inspect(error)}")
    send_error(conn, 500, "something_went_wrong", "Something went wrong")
  end

  defp send_error(conn, status, code, message) do
    body = %{errors: [%{message: message, extensions: %{code: code, short_message: message}}]}

    conn |> put_status(status) |> json(body)
  end
end
