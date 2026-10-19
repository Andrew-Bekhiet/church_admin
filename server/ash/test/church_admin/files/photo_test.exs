defmodule ChurchAdmin.Files.PhotoTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.AccountsCase
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Files
  alias ChurchAdminWeb.FileToken

  @bucket "church-admin-test.appspot.com"

  defp record(world, name), do: Map.fetch!(world.records, name)

  defp user_id(world, kind), do: Map.fetch!(world.users, kind).uid

  defp request_upload(world, kind, subject, id, content_type \\ "image/jpeg"),
    do: Files.request_photo_upload(subject, id, content_type, actor: actor(world, kind))

  defp download_url(world, kind, subject, id, content_type \\ nil),
    do: Files.photo_download_url(subject, id, content_type, actor: actor(world, kind))

  defp claims!(%{url: url}) do
    %URI{path: "/api/files/" <> rest} = URI.parse(url)
    [token | _file_name] = String.split(rest, "/")
    {:ok, claims} = FileToken.verify(token)
    claims
  end

  defp seconds_until(%{expires_at: expires_at}),
    do: DateTime.diff(expires_at, DateTime.utc_now(), :second)

  describe "request_photo_upload" do
    test "answers a five minute PUT link to the subject's object", %{world: world} do
      person = record(world, :m1)

      assert {:ok, link} = request_upload(world, :read_write, :persons, person.id)

      assert seconds_until(link) in 295..301

      assert %{op: :photo_upload, uid: uid, params: params} = claims!(link)
      assert uid == user_id(world, :read_write)

      assert params == %{subject: :persons, id: person.id}
    end

    test "the link ends in a file name clients can show", %{world: world} do
      {:ok, link} = request_upload(world, :read_write, :areas, record(world, :a1).id)

      assert link.url =~ ~r{/api/files/[^/]+/photo\z}
    end

    # {actor kind, subject, record name, expected} from storage_proxy.ts: write needs the
    # edit right, a person's photo only its own user, and a denial is `not_found`.
    @cases [
      {:read_write, :persons, :m1, :ok},
      {:read_write, :families, :f_svc, :ok},
      {:read_write, :areas, :a1, :ok},
      {:read_write, :streets, :st1, :ok},
      {:read_write, :services, :s1, :ok},
      {:read_write, :classes, :c_y1, :ok},
      {:read_write, :groups, :g1, :ok},
      {:read_write, :stores, :store1, :ok},
      {:read_write, :persons, :servant, "photo/own-photo-only"},
      {:approved_plain, :persons, :self, :ok},
      {:approved_plain, :persons, :m1, "not_found"},
      {:service_open_edit, :services, :s1, :ok},
      {:service_open_edit, :persons, :m1, :ok},
      {:service_open_edit, :groups, :g1, "not_found"},
      {:service_open, :services, :s1, "not_found"},
      {:read_all, :persons, :m1, "not_found"},
      {:read_all, :areas, :a1, "not_found"},
      {:area_read, :areas, :a1, "not_found"},
      {:area_edit, :areas, :a1, :ok},
      {:area_edit, :areas, :a2, "not_found"},
      {:unapproved, :persons, :m1, "forbidden"},
      {:unapproved_with_grants, :services, :s1, "forbidden"},
      {:anonymous, :services, :s1, "forbidden"}
    ]

    for {kind, subject, name, expected} <- @cases do
      test "#{kind} on #{subject} #{name}: #{inspect(expected)}", %{world: world} do
        id = record(world, unquote(name)).id
        result = request_upload(world, unquote(kind), unquote(subject), id)

        case unquote(expected) do
          :ok -> assert {:ok, %{url: _url}} = result
          code -> assert AccountsCase.codes(result) == [code]
        end
      end
    end

    test "a missing record is not found", %{world: world} do
      assert AccountsCase.codes(request_upload(world, :read_write, :areas, Ash.UUID.generate())) ==
               ["not_found"]
    end

    test "a deleted record is not found", %{world: world} do
      assert AccountsCase.codes(
               request_upload(world, :read_write, :persons, record(world, :deleted).id)
             ) == ["not_found"]
    end

    test "users photos live on the linked person and only their own user may upload", %{
      world: world
    } do
      own = user_id(world, :approved_plain)

      assert {:ok, link} = request_upload(world, :approved_plain, :users, own)
      assert %{params: %{subject: :users, id: ^own}} = claims!(link)

      assert AccountsCase.codes(request_upload(world, :read_write, :users, own)) == ["not_found"]
    end

    test "a user without a linked person has no photo", %{world: world} do
      own = user_id(world, :read_write)

      assert AccountsCase.codes(request_upload(world, :read_write, :users, own)) == ["not_found"]
    end

    test "the content type is optional and never reaches the token", %{world: world} do
      area = record(world, :a1)

      for content_type <- [nil, "text/html"] do
        assert {:ok, link} =
                 Files.request_photo_upload(:areas, area.id, content_type,
                   actor: actor(world, :read_write)
                 )

        assert %{params: %{subject: :areas, id: id} = params} = claims!(link)
        assert id == area.id
        refute Map.has_key?(params, :content_type)
      end
    end
  end

  describe "photo_download_url" do
    test "answers a five minute GET link", %{world: world} do
      person = record(world, :m1)

      assert {:ok, link} = download_url(world, :read_all, :persons, person.id, "image/png")

      assert seconds_until(link) in 295..301

      assert %{op: :photo_download, params: params} = claims!(link)
      assert params == %{subject: :persons, id: person.id}
    end

    # Public subjects are readable by every approved user, the rest by whoever reads the record.
    @cases [
      {:read_all, :persons, :m1, :ok},
      {:read_all, :stores, :store1, :ok},
      {:read_all, :families, :f_svc, :ok},
      {:service_open, :persons, :m1, :ok},
      {:service_open, :persons, :grp, "not_found"},
      {:group_read, :stores, :store1, "not_found"},
      {:group_read, :groups, :g1, :ok},
      {:group_read, :classes, :c_y1, "not_found"},
      {:service_open, :areas, :a2, :ok},
      {:service_open, :streets, :st1, :ok},
      {:group_read, :services, :s1, :ok},
      {:approved_plain, :persons, :m1, "not_found"},
      {:approved_plain, :persons, :self, :ok},
      {:unapproved, :areas, :a1, "forbidden"},
      {:anonymous, :areas, :a1, "forbidden"}
    ]

    for {kind, subject, name, expected} <- @cases do
      test "#{kind} on #{subject} #{name}: #{inspect(expected)}", %{world: world} do
        id = record(world, unquote(name)).id
        result = download_url(world, unquote(kind), unquote(subject), id)

        case unquote(expected) do
          :ok -> assert {:ok, %{url: _url}} = result
          code -> assert AccountsCase.codes(result) == [code]
        end
      end
    end

    test "users photos are public", %{world: world} do
      assert {:ok, %{url: _url}} =
               download_url(world, :service_open, :users, user_id(world, :servant))
    end

    test "a user without a linked person has no photo", %{world: world} do
      assert AccountsCase.codes(
               download_url(world, :service_open, :users, user_id(world, :read_write))
             ) == ["not_found"]
    end

    test "a missing public record is not found", %{world: world} do
      assert AccountsCase.codes(download_url(world, :read_all, :areas, Ash.UUID.generate())) ==
               ["not_found"]
    end
  end

  describe "delete_photo" do
    setup %{world: world} do
      test = self()

      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
        send(test, {:gcs, conn.method, conn.request_path})
        Plug.Conn.send_resp(conn, 204, "")
      end)

      person = record(world, :m1)

      Ash.update!(
        Ash.get!(ChurchAdmin.People.Person, person.id, authorize?: false),
        %{photo_updated_at: ~U[2026-10-19 08:30:15.123456Z], blurhash: "blurhash"},
        action: :record_photo,
        actor: Actor.system()
      )

      {:ok, person: person}
    end

    test "removes the object and clears the photo fields", %{world: world, person: person} do
      assert {:ok, true} =
               Files.delete_photo(:persons, person.id, actor: actor(world, :read_write))

      assert_received {:gcs, "DELETE", path}
      assert path == "/storage/v1/b/#{@bucket}/o/persons%2F#{person.id}"

      reloaded = Ash.get!(ChurchAdmin.People.Person, person.id, authorize?: false)
      assert reloaded.photo_updated_at == nil
      assert reloaded.blurhash == nil
    end

    test "clears the fields when the object is already gone", %{world: world, person: person} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
        conn
        |> Plug.Conn.put_status(404)
        |> Req.Test.json(%{"error" => %{"code" => 404, "errors" => [%{"reason" => "notFound"}]}})
      end)

      assert {:ok, true} =
               Files.delete_photo(:persons, person.id, actor: actor(world, :read_write))

      assert Ash.get!(ChurchAdmin.People.Person, person.id, authorize?: false).photo_updated_at ==
               nil
    end

    test "keeps the fields when the storage call fails", %{world: world, person: person} do
      Req.Test.stub(ChurchAdmin.Google.Storage, fn conn ->
        conn
        |> Plug.Conn.put_status(500)
        |> Req.Test.json(%{
          "error" => %{"code" => 500, "errors" => [%{"reason" => "backendError"}]}
        })
      end)

      assert {:error, _error} =
               Files.delete_photo(:persons, person.id, actor: actor(world, :read_write))

      refute Ash.get!(ChurchAdmin.People.Person, person.id, authorize?: false).photo_updated_at ==
               nil
    end

    test "is refused without the edit right", %{world: world, person: person} do
      assert AccountsCase.codes(
               Files.delete_photo(:persons, person.id, actor: actor(world, :read_all))
             ) == ["not_found"]

      refute_received {:gcs, _method, _path}
    end

    test "is refused for another person's photo", %{world: world} do
      servant = record(world, :servant)

      assert AccountsCase.codes(
               Files.delete_photo(:persons, servant.id, actor: actor(world, :read_write))
             ) == ["photo/own-photo-only"]

      refute_received {:gcs, _method, _path}
    end
  end
end
