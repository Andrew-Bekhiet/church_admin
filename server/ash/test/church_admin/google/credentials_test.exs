defmodule ChurchAdmin.Google.CredentialsTest do
  use ExUnit.Case, async: false

  alias ChurchAdmin.Google.Credentials
  alias ChurchAdmin.Google.Error

  test "the emulator owner needs no token server" do
    assert Credentials.child_specs(:emulator_owner) == []
    assert Credentials.fetch_token(:emulator_owner) == {:ok, "owner"}
  end

  describe "a service account" do
    setup do
      private_key =
        {:rsa, 2048}
        |> JOSE.JWK.generate_key()
        |> JOSE.JWK.to_pem()
        |> elem(1)

      credentials =
        {:service_account,
         %{
           "client_email" => "ash@church-admin.iam.gserviceaccount.com",
           "private_key" => private_key
         }}

      %{credentials: credentials, test_pid: self()}
    end

    test "fetches a Goth token carrying the Identity Toolkit, Storage and FCM scopes", context do
      token_endpoint = fn request ->
        assertion = URI.decode_query(request[:body])["assertion"]
        %JOSE.JWT{fields: claims} = JOSE.JWT.peek_payload(assertion)
        send(context.test_pid, {:token_requested, request[:url], claims["scope"]})

        {:ok,
         %{
           status: 200,
           headers: [],
           body:
             Jason.encode!(%{
               "access_token" => "service-account-token",
               "token_type" => "Bearer",
               "expires_in" => 3600
             })
         }}
      end

      [{Goth, goth_options}] = Credentials.child_specs(context.credentials)
      start_supervised!({Goth, Keyword.put(goth_options, :http_client, token_endpoint)})

      assert Credentials.fetch_token(context.credentials) == {:ok, "service-account-token"}

      assert_received {:token_requested, "https://www.googleapis.com/oauth2/v4/token", scope}

      assert String.split(scope) == [
               "https://www.googleapis.com/auth/identitytoolkit",
               "https://www.googleapis.com/auth/devstorage.read_write",
               "https://www.googleapis.com/auth/firebase.messaging"
             ]
    end

    test "reports a token server failure as a credentials error", context do
      failing_endpoint = fn _request -> {:ok, %{status: 500, headers: [], body: "down"}} end

      [{Goth, goth_options}] = Credentials.child_specs(context.credentials)

      start_supervised!(
        {Goth,
         goth_options
         |> Keyword.put(:http_client, failing_endpoint)
         |> Keyword.put(:retry_delay, fn _retries -> :timer.minutes(10) end)}
      )

      assert {:error, %Error{reason: :credentials}} =
               Credentials.fetch_token(context.credentials)
    end
  end
end
