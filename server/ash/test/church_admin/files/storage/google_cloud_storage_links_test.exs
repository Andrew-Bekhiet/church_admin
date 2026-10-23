defmodule ChurchAdmin.Files.Storage.GoogleCloudStorageLinksTest do
  use ExUnit.Case, async: false

  alias ChurchAdmin.Files.Storage
  alias ChurchAdmin.Files.Storage.{Error, GoogleCloudStorage, Link}

  @bucket "church-admin-test.appspot.com"
  @name "uploads/persons/2b7c8f9e-1d1a-4c55-9a8e-3f0f2f6c1a11/7d0c5e4b-8f8e-4a71-9c55-0e6b1a2f3c4d"
  @signer_email "storage-signer@church-admin-test.iam.gserviceaccount.com"

  setup do
    google_settings = Application.fetch_env!(:church_admin, ChurchAdmin.Google.Config)
    storage_settings = Application.fetch_env!(:church_admin, Storage)

    on_exit(fn ->
      Application.put_env(:church_admin, ChurchAdmin.Google.Config, google_settings)
      Application.put_env(:church_admin, Storage, storage_settings)
    end)

    %{google_settings: google_settings, storage_settings: storage_settings}
  end

  defp use_signer(context, signer, credentials, storage_options \\ []) do
    Application.put_env(
      :church_admin,
      ChurchAdmin.Google.Config,
      Keyword.put(context.google_settings, :credentials, credentials)
    )

    Application.put_env(
      :church_admin,
      Storage,
      [adapter: GoogleCloudStorage, signer: signer] ++ storage_options
    )
  end

  defp service_account do
    {_kind, pem} = {:rsa, 2048} |> JOSE.JWK.generate_key() |> JOSE.JWK.to_pem()
    %{"client_email" => @signer_email, "private_key" => pem}
  end

  defp start_goth(credentials, token) do
    token_endpoint = fn _request ->
      body = %{"access_token" => token, "token_type" => "Bearer", "expires_in" => 3600}
      {:ok, %{status: 200, headers: [], body: Jason.encode!(body)}}
    end

    [{Goth, goth_options}] = ChurchAdmin.Google.Credentials.child_specs(credentials)
    start_supervised!({Goth, Keyword.put(goth_options, :http_client, token_endpoint)})
  end

  defp query(%Link{url: url}), do: url |> URI.parse() |> Map.fetch!(:query) |> URI.decode_query()

  defp seconds_until(%Link{expires_at: expires_at}),
    do: DateTime.diff(expires_at, DateTime.utc_now(), :second)

  describe "with the service account key" do
    setup context do
      use_signer(context, :service_account_key, {:service_account, service_account()})
    end

    test "an upload link is a signed PUT that pins the content type and size" do
      assert {:ok, %Link{} = link} =
               GoogleCloudStorage.upload_link(@bucket, @name,
                 content_type: "image/jpeg",
                 max_size: 1024,
                 expires_in: 300
               )

      uri = URI.parse(link.url)

      assert {uri.scheme, uri.host, uri.path} ==
               {"https", "storage.googleapis.com", "/#{@bucket}/#{@name}"}

      query = query(link)
      assert query["X-Goog-Expires"] == "300"
      assert query["X-Goog-SignedHeaders"] == "content-type;host;x-goog-content-length-range"

      assert query["X-Goog-Credential"] =~
               ~r"\A#{@signer_email}/\d{8}/auto/storage/goog4_request\z"

      assert query["X-Goog-Signature"] =~ ~r/\A[0-9a-f]{512}\z/

      assert link.headers == [
               {"content-type", "image/jpeg"},
               {"x-goog-content-length-range", "0,1024"}
             ]

      assert seconds_until(link) in 295..300
    end

    test "a download link is a signed GET that names the file it answers" do
      assert {:ok, %Link{headers: []} = link} =
               GoogleCloudStorage.download_link(@bucket, "app-release-v1.2.3.apk",
                 expires_in: 1200,
                 file_name: "church-admin-v1.2.3.apk",
                 content_type: "application/vnd.android.package-archive"
               )

      assert URI.parse(link.url).path == "/#{@bucket}/app-release-v1.2.3.apk"

      query = query(link)
      assert query["X-Goog-Expires"] == "1200"
      assert query["X-Goog-SignedHeaders"] == "host"

      assert query["response-content-disposition"] ==
               ~s(attachment; filename="church-admin-v1.2.3.apk")

      assert query["response-content-type"] == "application/vnd.android.package-archive"
      assert seconds_until(link) in 1195..1200
    end

    test "a plain download link adds no response parameters" do
      assert {:ok, link} = GoogleCloudStorage.download_link(@bucket, @name, expires_in: 300)

      query = query(link)
      refute Map.has_key?(query, "response-content-disposition")
      refute Map.has_key?(query, "response-content-type")
    end
  end

  describe "with IAM signBlob" do
    test "signs through the IAM Credentials API as the configured service account", context do
      use_signer(context, :iam_sign_blob, :emulator_owner, signing_service_account: @signer_email)
      test = self()

      Req.Test.stub(GcsSignedUrl.SignBlob.HTTP, fn conn ->
        send(
          test,
          {:sign_blob, conn.request_path, Plug.Conn.get_req_header(conn, "authorization")}
        )

        Req.Test.json(conn, %{"keyId" => "key", "signedBlob" => Base.encode64(<<1, 2, 254>>)})
      end)

      assert {:ok, link} = GoogleCloudStorage.download_link(@bucket, @name, expires_in: 300)

      assert_received {:sign_blob, path, ["Bearer owner"]}
      assert path == "/v1/projects/-/serviceAccounts/#{@signer_email}:signBlob"
      assert query(link)["X-Goog-Signature"] == "0102fe"
      assert query(link)["X-Goog-Credential"] =~ @signer_email
    end

    test "signs as the credentials' own service account with its Goth token", context do
      credentials = {:service_account, service_account()}
      use_signer(context, :iam_sign_blob, credentials)
      start_goth(credentials, "service-account-token")
      test = self()

      Req.Test.stub(GcsSignedUrl.SignBlob.HTTP, fn conn ->
        send(
          test,
          {:sign_blob, conn.request_path, Plug.Conn.get_req_header(conn, "authorization")}
        )

        Req.Test.json(conn, %{"keyId" => "key", "signedBlob" => Base.encode64(<<1>>)})
      end)

      assert {:ok, _link} = GoogleCloudStorage.download_link(@bucket, @name, expires_in: 300)

      assert_received {:sign_blob, path, ["Bearer service-account-token"]}
      assert path == "/v1/projects/-/serviceAccounts/#{@signer_email}:signBlob"
    end

    test "a refused signBlob call is a signing error", context do
      use_signer(context, :iam_sign_blob, :emulator_owner, signing_service_account: @signer_email)

      Req.Test.stub(GcsSignedUrl.SignBlob.HTTP, fn conn ->
        conn
        |> Plug.Conn.put_status(403)
        |> Req.Test.json(%{"error" => %{"code" => 403, "message" => "denied"}})
      end)

      assert {:error, %Error{reason: :signing, message: message}} =
               GoogleCloudStorage.upload_link(@bucket, @name,
                 content_type: "image/jpeg",
                 expires_in: 300
               )

      assert message =~ "403"
    end

    test "without a service account to sign as, there is no link", context do
      use_signer(context, :iam_sign_blob, :emulator_owner)

      assert {:error, %Error{reason: :credentials}} =
               GoogleCloudStorage.download_link(@bucket, @name, expires_in: 300)
    end
  end
end
