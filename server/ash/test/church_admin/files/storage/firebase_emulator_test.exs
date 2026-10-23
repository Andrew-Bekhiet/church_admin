defmodule ChurchAdmin.Files.Storage.FirebaseEmulatorTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Files.Storage.{Error, FirebaseEmulator, Link}

  @bucket "church-admin-test.appspot.com"
  @name "uploads/persons/2b7c8f9e-1d1a-4c55-9a8e-3f0f2f6c1a11/7d0c5e4b-8f8e-4a71-9c55-0e6b1a2f3c4d"
  @encoded_name URI.encode(@name, &URI.char_unreserved?/1)
  @public_origin "http://storage.public.test:9199"

  defp stub(fun), do: Req.Test.stub(ChurchAdmin.Files.Storage, fun)

  defp seconds_until(%Link{expires_at: expires_at}),
    do: DateTime.diff(expires_at, DateTime.utc_now(), :second)

  defp object_with_tokens(conn, tokens) do
    Req.Test.json(conn, %{"name" => @name, "bucket" => @bucket, "downloadTokens" => tokens})
  end

  describe "upload_link/3" do
    test "opens a resumable upload session as the owner and points it at the public origin" do
      session_query = "name=#{@encoded_name}&uploadType=resumable&upload_id=session-1"
      test = self()

      stub(fn conn ->
        send(
          test,
          {:session, conn.method, conn.request_path, conn.query_params, conn.req_headers,
           Req.Test.raw_body(conn)}
        )

        conn
        |> Plug.Conn.put_resp_header(
          "location",
          "http://firebase-emulators:9199/upload/storage/v1/b/#{@bucket}/o?#{session_query}"
        )
        |> Plug.Conn.send_resp(200, "")
      end)

      assert {:ok, %Link{} = link} =
               FirebaseEmulator.upload_link(@bucket, @name,
                 content_type: "image/jpeg",
                 max_size: 1024,
                 expires_in: 300
               )

      assert_received {:session, "POST", path, query, headers, "{}"}
      assert path == "/upload/storage/v1/b/#{@bucket}/o"
      assert query == %{"uploadType" => "resumable", "name" => @name}
      assert {"authorization", "Bearer owner"} in headers
      assert {"x-upload-content-type", "image/jpeg"} in headers
      assert {"content-type", "application/json"} in headers

      assert link.url == "#{@public_origin}/upload/storage/v1/b/#{@bucket}/o?#{session_query}"
      assert link.headers == [{"content-type", "image/jpeg"}]
      assert seconds_until(link) in 295..300
    end

    test "a session answer without a location is an unexpected response" do
      stub(&Plug.Conn.send_resp(&1, 200, ""))

      assert {:error, %Error{reason: :unexpected_response}} =
               FirebaseEmulator.upload_link(@bucket, @name,
                 content_type: "image/jpeg",
                 expires_in: 300
               )
    end
  end

  describe "download_link/3" do
    test "carries the object's first download token on the public origin" do
      test = self()

      stub(fn conn ->
        send(test, {:metadata, conn.method, conn.request_path, conn.req_headers})
        object_with_tokens(conn, "token-1,token-2")
      end)

      assert {:ok, %Link{headers: []} = link} =
               FirebaseEmulator.download_link(@bucket, @name,
                 expires_in: 300,
                 file_name: "ignored.apk",
                 content_type: "application/octet-stream"
               )

      assert_received {:metadata, "GET", path, headers}
      assert path == "/v0/b/#{@bucket}/o/#{@encoded_name}"
      assert {"authorization", "Bearer owner"} in headers

      assert link.url ==
               "#{@public_origin}/v0/b/#{@bucket}/o/#{@encoded_name}?alt=media&token=token-1"

      assert seconds_until(link) in 295..300
    end

    test "creates a download token when the object has none" do
      test = self()

      stub(fn conn ->
        send(test, {conn.method, conn.query_params})

        case conn.method do
          "GET" -> object_with_tokens(conn, "")
          "POST" -> object_with_tokens(conn, "created-token")
        end
      end)

      assert {:ok, link} = FirebaseEmulator.download_link(@bucket, @name, expires_in: 300)

      assert_received {"GET", %{}}
      assert_received {"POST", %{"create_token" => "true"}}
      assert link.url =~ ~r/\?alt=media&token=created-token\z/
    end

    test "a missing object is not found" do
      stub(fn conn ->
        conn
        |> Plug.Conn.put_status(404)
        |> Req.Test.json(%{"error" => %{"code" => 404, "message" => "Not Found"}})
      end)

      assert {:error, %Error{reason: :not_found}} =
               FirebaseEmulator.download_link(@bucket, @name, expires_in: 300)
    end
  end
end
