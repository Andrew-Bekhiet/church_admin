defmodule ChurchAdmin.Auth.EmulatorTokenVerifierTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Auth.EmulatorTokenVerifier
  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.FirebaseTokens

  @opts [project_id: FirebaseTokens.project_id()]

  test "an unsigned emulator token yields the principal" do
    claims = FirebaseTokens.valid_claims()

    assert {:ok, %Principal{} = principal} =
             claims |> FirebaseTokens.unsigned() |> EmulatorTokenVerifier.verify(@opts)

    assert principal.auth_id == claims["sub"]
    assert principal.uid == claims["x-hasura-user-id"]
  end

  test "an expired emulator token is rejected" do
    token =
      %{"exp" => System.os_time(:second) - 1}
      |> FirebaseTokens.valid_claims()
      |> FirebaseTokens.unsigned()

    assert EmulatorTokenVerifier.verify(token, @opts) == {:error, :expired}
  end

  test "an emulator token for another project is rejected" do
    token =
      %{"aud" => "church-admin-local"}
      |> FirebaseTokens.valid_claims()
      |> FirebaseTokens.unsigned()

    assert EmulatorTokenVerifier.verify(token, @opts) == {:error, :invalid_audience}
  end

  test "a signed token is not an emulator token" do
    token =
      FirebaseTokens.valid_claims()
      |> FirebaseTokens.sign(FirebaseTokens.generate_signing_key("key-1"))

    assert EmulatorTokenVerifier.verify(token, @opts) == {:error, :unsupported_algorithm}
  end
end
