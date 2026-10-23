defmodule ChurchAdmin.FakeStorage do
  @moduledoc """
  An in-memory object store behind the `ChurchAdmin.Files.Storage` Req.Test
  stub. It answers the GCS JSON API calls `GoogleCloudStorage` makes and the
  emulator's upload session and download token, so the configured
  `FirebaseEmulator` adapter runs for real against it. `start/1` stubs the
  calling test; `fail: [:media_upload]` makes final uploads answer 500.
  """

  import ExUnit.Callbacks, only: [start_supervised!: 1]

  @updated "2026-10-19T08:30:15.123Z"

  @type store :: pid()

  @spec start(fail: [:media_upload]) :: store()
  def start(opts \\ []) do
    store =
      start_supervised!(
        Supervisor.child_spec({Agent, fn -> %{objects: %{}, calls: []} end}, id: make_ref())
      )

    failing = Keyword.get(opts, :fail, [])
    Req.Test.stub(ChurchAdmin.Files.Storage, &handle(&1, store, failing))
    store
  end

  @spec put(store(), String.t(), String.t(), binary(), String.t()) :: :ok
  def put(store, bucket, name, bytes, content_type) do
    Agent.update(store, &put_in(&1, [:objects, {bucket, name}], {bytes, content_type}))
  end

  @spec get(store(), String.t(), String.t()) :: {binary(), String.t()} | nil
  def get(store, bucket, name), do: Agent.get(store, &get_in(&1, [:objects, {bucket, name}]))

  @spec names(store(), String.t()) :: [String.t()]
  def names(store, bucket) do
    Agent.get(store, fn %{objects: objects} ->
      for {{^bucket, name}, _object} <- objects, do: name
    end)
  end

  @doc "The `{method, decoded path segments}` of every call, oldest first."
  @spec calls(store()) :: [{String.t(), [String.t()]}]
  def calls(store), do: store |> Agent.get(& &1.calls) |> Enum.reverse()

  defp handle(conn, store, failing) do
    conn = Plug.Conn.fetch_query_params(conn)
    segments = conn.request_path |> String.split("/", trim: true) |> Enum.map(&URI.decode/1)

    Agent.update(
      store,
      &Map.update!(&1, :calls, fn calls -> [{conn.method, segments} | calls] end)
    )

    respond(conn, conn.method, segments, conn.query_params, store, failing)
  end

  defp respond(conn, "POST", ["upload", "storage", "v1", "b", bucket, "o"], query, store, failing) do
    case query["uploadType"] do
      "resumable" ->
        session = URI.encode_query(name: query["name"], uploadType: "resumable", upload_id: "1")

        conn
        |> Plug.Conn.put_resp_header(
          "location",
          "http://storage.test#{conn.request_path}?#{session}"
        )
        |> Plug.Conn.send_resp(200, "")

      "media" ->
        if :media_upload in failing do
          error(conn, 500, "backendError")
        else
          [content_type] = Plug.Conn.get_req_header(conn, "content-type")
          bytes = Req.Test.raw_body(conn)
          put(store, bucket, query["name"], bytes, content_type)
          Req.Test.json(conn, resource(bucket, query["name"], {bytes, content_type}))
        end
    end
  end

  defp respond(conn, "GET", ["storage", "v1", "b", bucket, "o"], query, store, _failing) do
    prefix = Map.get(query, "prefix", "")

    items =
      for name <- names(store, bucket), String.starts_with?(name, prefix) do
        resource(bucket, name, get(store, bucket, name))
      end

    Req.Test.json(conn, %{"kind" => "storage#objects", "items" => items})
  end

  defp respond(conn, method, ["storage", "v1", "b", bucket, "o", name], query, store, _failing) do
    case {method, get(store, bucket, name), query} do
      {_method, nil, _query} ->
        error(conn, 404, "notFound")

      {"GET", {bytes, content_type}, %{"alt" => "media"}} ->
        conn
        |> Plug.Conn.put_resp_content_type(content_type, nil)
        |> Plug.Conn.send_resp(200, bytes)

      {"GET", object, _query} ->
        Req.Test.json(conn, resource(bucket, name, object))

      {"DELETE", _object, _query} ->
        Agent.update(
          store,
          &Map.update!(&1, :objects, fn objects -> Map.delete(objects, {bucket, name}) end)
        )

        Plug.Conn.send_resp(conn, 204, "")
    end
  end

  defp respond(conn, "GET", ["v0", "b", bucket, "o", name], _query, store, _failing) do
    case get(store, bucket, name) do
      nil -> error(conn, 404, "notFound")
      _object -> Req.Test.json(conn, %{"name" => name, "downloadTokens" => "download-token"})
    end
  end

  defp resource(bucket, name, {bytes, content_type}) do
    %{
      "name" => name,
      "bucket" => bucket,
      "size" => bytes |> byte_size() |> Integer.to_string(),
      "contentType" => content_type,
      "updated" => @updated
    }
  end

  defp error(conn, status, reason) do
    conn
    |> Plug.Conn.put_status(status)
    |> Req.Test.json(%{"error" => %{"code" => status, "errors" => [%{"reason" => reason}]}})
  end
end
