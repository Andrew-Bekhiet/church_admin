defmodule ChurchAdmin.Google.IdentityToolkitTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.IdentityToolkit
  alias ChurchAdmin.Google.IdentityToolkit.Account

  @project_path "/identitytoolkit.googleapis.com/v1/projects/church-admin-test"

  defp stub(fun), do: Req.Test.stub(IdentityToolkit, fun)

  defp google_error(conn, status, message) do
    conn
    |> Plug.Conn.put_status(status)
    |> Req.Test.json(%{
      "error" => %{
        "code" => status,
        "message" => message,
        "errors" => [%{"message" => message, "domain" => "global", "reason" => "invalid"}]
      }
    })
  end

  describe "lookup_by_uid/1" do
    test "posts the uid to accounts:lookup as the emulator owner and parses the account" do
      stub(fn conn ->
        assert conn.method == "POST"
        assert conn.request_path == @project_path <> "/accounts:lookup"
        assert Plug.Conn.get_req_header(conn, "authorization") == ["Bearer owner"]
        assert conn.body_params == %{"localId" => ["firebase-uid"]}

        Req.Test.json(conn, %{
          "kind" => "identitytoolkit#GetAccountInfoResponse",
          "users" => [
            %{
              "localId" => "firebase-uid",
              "email" => "servant@example.com",
              "emailVerified" => true,
              "customAttributes" => ~s({"x-hasura-user-id":"user-uid"})
            }
          ]
        })
      end)

      assert IdentityToolkit.lookup_by_uid("firebase-uid") ==
               {:ok,
                %Account{
                  uid: "firebase-uid",
                  email: "servant@example.com",
                  email_verified: true,
                  disabled: false,
                  custom_claims: %{"x-hasura-user-id" => "user-uid"}
                }}
    end

    test "reports an account Google does not know as not found" do
      stub(&Req.Test.json(&1, %{"kind" => "identitytoolkit#GetAccountInfoResponse"}))

      assert {:error, %Error{api: :identity_toolkit, reason: :not_found}} =
               IdentityToolkit.lookup_by_uid("missing-uid")
    end

    test "defaults an account without claims or verification flags" do
      stub(&Req.Test.json(&1, %{"users" => [%{"localId" => "bare-uid"}]}))

      assert {:ok, %Account{email: nil, email_verified: false, custom_claims: %{}}} =
               IdentityToolkit.lookup_by_uid("bare-uid")
    end
  end

  describe "lookup_by_email/1" do
    test "posts the email to accounts:lookup" do
      stub(fn conn ->
        assert conn.request_path == @project_path <> "/accounts:lookup"
        assert conn.body_params == %{"email" => ["admin@example.com"]}

        Req.Test.json(conn, %{
          "users" => [%{"localId" => "admin-uid", "email" => "admin@example.com"}]
        })
      end)

      assert {:ok, %Account{uid: "admin-uid", email: "admin@example.com"}} =
               IdentityToolkit.lookup_by_email("admin@example.com")
    end
  end

  describe "update/2" do
    test "sends custom claims as a JSON string together with the verified flag" do
      claims = ChurchAdmin.Accounts.Claims.default_for("user-uid")

      stub(fn conn ->
        assert conn.method == "POST"
        assert conn.request_path == @project_path <> "/accounts:update"
        assert Plug.Conn.get_req_header(conn, "authorization") == ["Bearer owner"]

        assert %{
                 "localId" => "firebase-uid",
                 "customAttributes" => custom_attributes,
                 "emailVerified" => true
               } = conn.body_params

        assert Jason.decode!(custom_attributes) == claims

        Req.Test.json(conn, %{"localId" => "firebase-uid"})
      end)

      assert IdentityToolkit.update("firebase-uid", custom_claims: claims, email_verified: true) ==
               :ok
    end

    test "sends only the attributes it is given" do
      stub(fn conn ->
        assert conn.body_params == %{"localId" => "firebase-uid", "emailVerified" => false}
        Req.Test.json(conn, %{"localId" => "firebase-uid"})
      end)

      assert IdentityToolkit.update("firebase-uid", email_verified: false) == :ok
    end

    test "maps USER_NOT_FOUND to not found" do
      stub(&google_error(&1, 400, "USER_NOT_FOUND"))

      assert {:error,
              %Error{
                api: :identity_toolkit,
                reason: :not_found,
                status: 400,
                code: "USER_NOT_FOUND"
              }} = IdentityToolkit.update("missing-uid", email_verified: true)
    end

    test "maps a server error without raising" do
      stub(&google_error(&1, 503, "UNAVAILABLE"))

      assert {:error, %Error{reason: :server_error, status: 503}} =
               IdentityToolkit.update("firebase-uid", email_verified: true)
    end
  end

  describe "delete/1" do
    test "posts the uid to accounts:delete" do
      stub(fn conn ->
        assert conn.request_path == @project_path <> "/accounts:delete"
        assert conn.body_params == %{"localId" => "firebase-uid"}
        Req.Test.json(conn, %{"kind" => "identitytoolkit#DeleteAccountResponse"})
      end)

      assert IdentityToolkit.delete("firebase-uid") == :ok
    end

    test "maps a rejected credential to unauthorized" do
      stub(&google_error(&1, 401, "UNAUTHENTICATED"))

      assert {:error, %Error{reason: :unauthorized, status: 401}} =
               IdentityToolkit.delete("firebase-uid")
    end

    test "maps a transport failure without raising" do
      stub(&Req.Test.transport_error(&1, :econnrefused))

      assert {:error, %Error{api: :identity_toolkit, reason: :transport, status: nil}} =
               IdentityToolkit.delete("firebase-uid")
    end
  end
end
