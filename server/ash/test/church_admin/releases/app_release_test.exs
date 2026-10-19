defmodule ChurchAdmin.Releases.AppReleaseTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.AccountsCase
  alias ChurchAdmin.Releases
  alias ChurchAdminWeb.FileToken

  @bucket "church-admin-test-releases"

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

    Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
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

  defp claims!(%{url: url}) do
    %URI{path: "/api/files/" <> rest} = URI.parse(url)
    {:ok, claims} = rest |> String.split("/") |> hd() |> FileToken.verify()
    claims
  end

  test "picks the highest semantic version across pages", %{world: world} do
    two_pages()

    assert {:ok, %{version: "1.10.0"} = link} =
             Releases.app_download_link(:android, actor: actor(world, :approved_plain))

    assert_received {:list, "/storage/v1/b/" <> _, %{"prefix" => "app-release-v"}}
    assert_received {:list, _path, %{"prefix" => "app-release-v", "pageToken" => "page-2"}}

    assert DateTime.diff(link.expires_at, DateTime.utc_now(), :second) in 1195..1201
    assert link.url =~ ~r{/api/files/[^/]+/church-admin-v1\.10\.0\.apk\z}

    assert %{op: :app_download, params: params} = claims!(link)

    assert params == %{
             bucket: @bucket,
             object: "app-release-v1.10.0.apk",
             version: "1.10.0",
             extension: "apk",
             size: 2048,
             content_type: "application/vnd.android.package-archive"
           }
  end

  test "iOS picks the highest .ipa", %{world: world} do
    two_pages()

    assert {:ok, %{version: "2.0.0"} = link} =
             Releases.app_download_link(:ios, actor: actor(world, :approved_plain))

    assert %{params: %{object: "app-release-v2.0.0.ipa", size: 5000}} = claims!(link)
    assert link.url =~ ~r{/church-admin-v2\.0\.0\.ipa\z}
  end

  test "an iOS release without a stored content type is an octet stream", %{world: world} do
    stub_pages(%{nil => {[Map.delete(object("app-release-v1.0.0.ipa"), "contentType")], nil}})

    assert {:ok, link} = Releases.app_download_link(:ios, actor: actor(world, :approved_plain))
    assert %{params: %{content_type: "application/octet-stream"}} = claims!(link)
  end

  test "an Android release without a stored content type is an APK", %{world: world} do
    stub_pages(%{nil => {[Map.delete(object("app-release-v1.0.0.apk"), "contentType")], nil}})

    assert {:ok, link} =
             Releases.app_download_link(:android, actor: actor(world, :approved_plain))

    assert %{params: %{content_type: "application/vnd.android.package-archive"}} = claims!(link)
  end

  test "no release of the platform is not found", %{world: world} do
    stub_pages(%{nil => {[object("app-release-v1.0.0.ipa")], nil}})

    assert AccountsCase.codes(
             Releases.app_download_link(:android, actor: actor(world, :approved_plain))
           ) == ["not_found"]
  end

  test "an unknown platform is an invalid argument", %{world: world} do
    assert AccountsCase.codes(
             Releases.app_download_link(:windows, actor: actor(world, :approved_plain))
           ) == ["invalid_argument"]
  end

  for kind <- [:unapproved, :unapproved_with_grants, :anonymous] do
    test "#{kind} is forbidden", %{world: world} do
      two_pages()

      assert AccountsCase.codes(
               Releases.app_download_link(:android, actor: actor(world, unquote(kind)))
             ) ==
               ["forbidden"]

      refute_received {:list, _path, _query}
    end
  end

  test "a storage failure is an error, not a link", %{world: world} do
    Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
      conn |> Plug.Conn.put_status(500) |> Req.Test.json(%{"error" => %{"code" => 500}})
    end)

    assert {:error, _error} =
             Releases.app_download_link(:android, actor: actor(world, :approved_plain))
  end
end
