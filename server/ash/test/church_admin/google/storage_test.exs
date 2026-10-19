defmodule ChurchAdmin.Google.StorageTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.Storage
  alias ChurchAdmin.Google.Storage.Object

  @bucket "church-admin-test.appspot.com"
  @object_name "persons/2b7c8f9e-1d1a-4c55-9a8e-3f0f2f6c1a11"
  @encoded_object_name "persons%2F2b7c8f9e-1d1a-4c55-9a8e-3f0f2f6c1a11"
  @object_path "/storage/v1/b/#{@bucket}/o/#{@encoded_object_name}"

  @object_resource %{
    "kind" => "storage#object",
    "name" => @object_name,
    "bucket" => @bucket,
    "size" => "1234",
    "contentType" => "image/jpeg",
    "updated" => "2026-10-19T08:30:15.123Z"
  }

  @object %Object{
    name: @object_name,
    bucket: @bucket,
    size: 1234,
    content_type: "image/jpeg",
    updated_at: ~U[2026-10-19 08:30:15.123Z]
  }

  defp stub(fun), do: Req.Test.stub(Storage, fun)

  defp gcs_error(conn, status, reason) do
    conn
    |> Plug.Conn.put_status(status)
    |> Req.Test.json(%{
      "error" => %{"code" => status, "message" => "failed", "errors" => [%{"reason" => reason}]}
    })
  end

  defp assert_emulator_owner(conn) do
    assert Plug.Conn.get_req_header(conn, "authorization") == ["Bearer owner"]
  end

  describe "upload/4" do
    test "posts a media upload with the object name and content type" do
      stub(fn conn ->
        assert_emulator_owner(conn)
        assert conn.method == "POST"
        assert conn.request_path == "/upload/storage/v1/b/#{@bucket}/o"
        assert conn.query_params == %{"uploadType" => "media", "name" => @object_name}
        assert Plug.Conn.get_req_header(conn, "content-type") == ["image/jpeg"]
        assert Req.Test.raw_body(conn) == "jpeg-bytes"

        Req.Test.json(conn, @object_resource)
      end)

      assert Storage.upload(@bucket, @object_name, "jpeg-bytes", content_type: "image/jpeg") ==
               {:ok, @object}
    end

    test "streams an enumerable body and forwards its declared length" do
      stub(fn conn ->
        assert Plug.Conn.get_req_header(conn, "content-length") == ["10"]
        assert Req.Test.raw_body(conn) == "jpeg-bytes"
        Req.Test.json(conn, @object_resource)
      end)

      assert {:ok, @object} =
               Storage.upload(@bucket, @object_name, Stream.map(["jpeg-", "bytes"], & &1),
                 content_type: "image/jpeg",
                 content_length: 10
               )
    end

    test "maps a forbidden upload without raising" do
      stub(&gcs_error(&1, 403, "forbidden"))

      assert {:error, %Error{api: :storage, reason: :forbidden, status: 403, code: "forbidden"}} =
               Storage.upload(@bucket, @object_name, "jpeg-bytes", content_type: "image/jpeg")
    end
  end

  describe "download/2" do
    test "returns the media as a stream of chunks" do
      stub(fn conn ->
        assert_emulator_owner(conn)
        assert conn.method == "GET"
        assert conn.request_path == @object_path
        assert conn.query_params == %{"alt" => "media"}

        conn
        |> Plug.Conn.put_resp_content_type("image/jpeg")
        |> Plug.Conn.send_resp(200, "jpeg-bytes")
      end)

      assert {:ok, stream} = Storage.download(@bucket, @object_name)
      assert Enum.join(stream) == "jpeg-bytes"
    end

    test "maps a missing object to not found" do
      stub(&gcs_error(&1, 404, "notFound"))

      assert {:error, %Error{reason: :not_found, status: 404, code: "notFound"}} =
               Storage.download(@bucket, @object_name)
    end
  end

  describe "delete/2" do
    test "deletes the object by its encoded name" do
      stub(fn conn ->
        assert_emulator_owner(conn)
        assert conn.method == "DELETE"
        assert conn.request_path == @object_path
        Plug.Conn.send_resp(conn, 204, "")
      end)

      assert Storage.delete(@bucket, @object_name) == :ok
    end

    test "maps a missing object to not found" do
      stub(&gcs_error(&1, 404, "notFound"))

      assert {:error, %Error{reason: :not_found}} = Storage.delete(@bucket, @object_name)
    end
  end

  describe "list/3" do
    test "lists one page by prefix and returns the next page token" do
      stub(fn conn ->
        assert_emulator_owner(conn)
        assert conn.method == "GET"
        assert conn.request_path == "/storage/v1/b/#{@bucket}/o"
        assert conn.query_params == %{"prefix" => "app-release-v", "pageToken" => "page-2"}

        Req.Test.json(conn, %{
          "kind" => "storage#objects",
          "items" => [@object_resource],
          "nextPageToken" => "page-3"
        })
      end)

      assert Storage.list(@bucket, "app-release-v", page_token: "page-2") ==
               {:ok, %{objects: [@object], next_page_token: "page-3"}}
    end

    test "returns an empty last page when nothing matches" do
      stub(fn conn ->
        assert conn.query_params == %{"prefix" => "exports/"}
        Req.Test.json(conn, %{"kind" => "storage#objects"})
      end)

      assert Storage.list(@bucket, "exports/") == {:ok, %{objects: [], next_page_token: nil}}
    end

    test "maps a server error without raising" do
      stub(&gcs_error(&1, 500, "backendError"))

      assert {:error, %Error{reason: :server_error, status: 500}} = Storage.list(@bucket, "x")
    end
  end

  describe "metadata/2" do
    test "reads the object resource including its updated time" do
      stub(fn conn ->
        assert_emulator_owner(conn)
        assert conn.method == "GET"
        assert conn.request_path == @object_path
        assert conn.query_params == %{}
        Req.Test.json(conn, @object_resource)
      end)

      assert Storage.metadata(@bucket, @object_name) == {:ok, @object}
    end

    test "maps a missing object to not found" do
      stub(&gcs_error(&1, 404, "notFound"))

      assert {:error, %Error{reason: :not_found}} = Storage.metadata(@bucket, @object_name)
    end
  end
end
