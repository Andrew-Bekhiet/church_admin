defmodule ChurchAdminWeb.StreamedFile do
  @moduledoc """
  Sends a stored file's chunks as the response, as they arrive from storage.
  With the file's `size` the response carries `content-length` and is not
  re-chunked.
  """

  import Plug.Conn

  @spec send_chunks(Plug.Conn.t(), Enumerable.t(), String.t(), non_neg_integer() | nil) ::
          Plug.Conn.t()
  def send_chunks(conn, chunks, content_type, size \\ nil) do
    conn =
      conn
      |> put_resp_content_type(content_type, nil)
      |> put_content_length(size)
      |> send_chunked(200)

    Enum.reduce_while(chunks, conn, &send_chunk/2)
  end

  defp put_content_length(conn, nil), do: conn
  defp put_content_length(conn, size), do: put_resp_header(conn, "content-length", "#{size}")

  defp send_chunk("", conn), do: {:cont, conn}

  defp send_chunk(chunk, conn) do
    case chunk(conn, chunk) do
      {:ok, conn} -> {:cont, conn}
      {:error, :closed} -> {:halt, conn}
    end
  end
end
