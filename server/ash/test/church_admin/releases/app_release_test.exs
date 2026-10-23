defmodule ChurchAdmin.Releases.AppReleaseTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.AccountsCase
  alias ChurchAdmin.Files.Storage
  alias ChurchAdmin.Releases

  @bucket "church-admin-test-releases"

  setup do
    google_settings = Application.fetch_env!(:church_admin, ChurchAdmin.Google.Config)
    storage_settings = Application.fetch_env!(:church_admin, Storage)
    {_kind, pem} = {:rsa, 2048} |> JOSE.JWK.generate_key() |> JOSE.JWK.to_pem()

    service_account = %{
      "client_email" => "signer@test.iam.gserviceaccount.com",
      "private_key" => pem
    }

    credentials = {:service_account, service_account}

    Application.put_env(
      :church_admin,
      ChurchAdmin.Google.Config,
      Keyword.put(google_settings, :credentials, credentials)
    )

    token_endpoint = fn _request ->
      body = %{"access_token" => "token", "token_type" => "Bearer", "expires_in" => 3600}
      {:ok, %{status: 200, headers: [], body: Jason.encode!(body)}}
    end

    [{Goth, goth_options}] = ChurchAdmin.Google.Credentials.child_specs(credentials)
    start_supervised!({Goth, Keyword.put(goth_options, :http_client, token_endpoint)})

    Application.put_env(:church_admin, Storage,
      adapter: Storage.GoogleCloudStorage,
      signer: :service_account_key
    )

    on_exit(fn ->
      Application.put_env(:church_admin, ChurchAdmin.Google.Config, google_settings)
      Application.put_env(:church_admin, Storage, storage_settings)
    end)
  end

  defp object(name, size \\ 1000, content_type \\ "application/octet-stream") do
    %{
      "name" => name,
      "bucket" => @bucket,
      "size" => Integer.to_string(size),
      "contentType" => content_type,
      "updated" => "2026-10-19T08:30:15.123Z"
    }
  end

  defp stub_pages(pages) do
    test = self()

    Req.Test.stub(ChurchAdmin.Files.Storage, fn conn ->
      send(test, {:list, conn.request_path, conn.query_params})
      page_token = conn.query_params["pageToken"]
      {items, next} = Map.fetch!(pages, page_token)
      body = %{"items" => items}
      Req.Test.json(conn, if(next, do: Map.put(body, "nextPageToken", next), else: body))
    end)
  end

  defp two_pages do
    stub_pages(%{
      nil =>
        {[
           object("app-release-v1.9.0.apk"),
           object("app-release-v2.0.0.ipa", 5000),
           object("app-release-v1.2.3.apk.sha256"),
           object("app-release-v3.0.0-beta.apk")
         ], "page-2"},
      "page-2" =>
        {[
           object("app-release-v1.10.0.apk", 2048, "application/vnd.android.package-archive"),
           object("app-release-v1.10.1.ipa", 6000),
           object("app-release-v0.9.9.apk")
         ], nil}
    })
  end

  defp signed!(%{url: url}) do
    %URI{host: "storage.googleapis.com", path: path, query: query} = URI.parse(url)
    {path, URI.decode_query(query)}
  end

  test "picks the highest semantic version across pages", %{world: world} do
    two_pages()

    assert {:ok, %{version: "1.10.0"} = link} =
             Releases.app_download_link(:android, actor: actor(world, :approved_plain))

    assert_received {:list, "/storage/v1/b/" <> _, %{"prefix" => "app-release-v"}}
    assert_received {:list, _path, %{"prefix" => "app-release-v", "pageToken" => "page-2"}}

    assert DateTime.diff(link.expires_at, DateTime.utc_now(), :second) in 1195..1201

    assert {"/#{@bucket}/app-release-v1.10.0.apk", query} = signed!(link)
    assert query["X-Goog-Expires"] == "1200"

    assert query["response-content-disposition"] ==
             ~s(attachment; filename="church-admin-v1.10.0.apk")

    assert query["response-content-type"] == "application/vnd.android.package-archive"
  end

  test "iOS picks the highest .ipa", %{world: world} do
    two_pages()

    assert {:ok, %{version: "2.0.0"} = link} =
             Releases.app_download_link(:ios, actor: actor(world, :approved_plain))

    assert {"/#{@bucket}/app-release-v2.0.0.ipa", query} = signed!(link)

    assert query["response-content-disposition"] ==
             ~s(attachment; filename="church-admin-v2.0.0.ipa")
  end

  test "an iOS release without a stored content type is an octet stream", %{world: world} do
    stub_pages(%{
      nil => {["app-release-v1.0.0.ipa" |> object() |> Map.delete("contentType")], nil}
    })

    assert {:ok, link} = Releases.app_download_link(:ios, actor: actor(world, :approved_plain))
    assert {_path, %{"response-content-type" => "application/octet-stream"}} = signed!(link)
  end

  test "an Android release without a stored content type is an APK", %{world: world} do
    stub_pages(%{
      nil => {["app-release-v1.0.0.apk" |> object() |> Map.delete("contentType")], nil}
    })

    assert {:ok, link} =
             Releases.app_download_link(:android, actor: actor(world, :approved_plain))

    assert {_path, %{"response-content-type" => "application/vnd.android.package-archive"}} =
             signed!(link)
  end

  test "no release of the platform is not found", %{world: world} do
    stub_pages(%{nil => {[object("app-release-v1.0.0.ipa")], nil}})

    assert :android
           |> Releases.app_download_link(actor: actor(world, :approved_plain))
           |> AccountsCase.codes() == ["not_found"]
  end

  test "an unknown platform is an invalid argument", %{world: world} do
    assert :windows
           |> Releases.app_download_link(actor: actor(world, :approved_plain))
           |> AccountsCase.codes() == ["invalid_argument"]
  end

  for kind <- [:unapproved, :unapproved_with_grants, :anonymous] do
    test "#{kind} is forbidden", %{world: world} do
      two_pages()

      assert :android
             |> Releases.app_download_link(actor: actor(world, unquote(kind)))
             |> AccountsCase.codes() ==
               ["forbidden"]

      refute_received {:list, _path, _query}
    end
  end

  test "a storage failure is an error, not a link", %{world: world} do
    Req.Test.stub(ChurchAdmin.Files.Storage, fn conn ->
      conn |> Plug.Conn.put_status(500) |> Req.Test.json(%{"error" => %{"code" => 500}})
    end)

    assert {:error, _error} =
             Releases.app_download_link(:android, actor: actor(world, :approved_plain))
  end
end
