defmodule ChurchAdmin.Auth.FirebaseTokenVerifierTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Auth.FirebaseTokenVerifier
  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.FirebaseTokens

  setup do
    signing_key = FirebaseTokens.generate_signing_key("key-1")
    public_key = signing_key |> FirebaseTokens.public_jwk_map() |> JOSE.JWK.from_map()

    fetch_key = fn
      "key-1" -> {:ok, public_key}
      _ -> {:error, :unknown_key}
    end

    %{
      signing_key: signing_key,
      opts: [project_id: FirebaseTokens.project_id(), fetch_key: fetch_key]
    }
  end

  defp verify(token, opts), do: FirebaseTokenVerifier.verify(token, opts)

  test "a valid token yields the principal with the Hasura user id claim", ctx do
    claims = FirebaseTokens.valid_claims()

    assert {:ok, %Principal{} = principal} =
             claims |> FirebaseTokens.sign(ctx.signing_key) |> verify(ctx.opts)

    assert principal.auth_id == claims["sub"]
    assert principal.uid == claims["x-hasura-user-id"]
    assert principal.email == claims["email"]
    assert principal.email_verified == claims["email_verified"]
    assert principal.claims == claims
  end

  test "a user without the custom claim has a nil uid", ctx do
    claims = Map.delete(FirebaseTokens.valid_claims(), "x-hasura-user-id")

    assert {:ok, %Principal{uid: nil}} =
             claims |> FirebaseTokens.sign(ctx.signing_key) |> verify(ctx.opts)
  end

  test "a token signed by another key is rejected", ctx do
    impostor_key = FirebaseTokens.generate_signing_key("key-1")
    token = FirebaseTokens.sign(FirebaseTokens.valid_claims(), impostor_key)

    assert verify(token, ctx.opts) == {:error, :invalid_signature}
  end

  test "an unknown key id is rejected", ctx do
    token =
      FirebaseTokens.sign(FirebaseTokens.valid_claims(), ctx.signing_key, %{"kid" => "key-2"})

    assert verify(token, ctx.opts) == {:error, :unknown_key}
  end

  test "an algorithm other than RS256 is rejected", ctx do
    assert verify(FirebaseTokens.unsigned(FirebaseTokens.valid_claims()), ctx.opts) ==
             {:error, :unsupported_algorithm}
  end

  test "a malformed token is rejected", ctx do
    assert verify("not-a-jwt", ctx.opts) == {:error, :malformed}
  end

  for {name, overrides, reason} <- [
        {"expired", %{"exp" => -10}, :expired},
        {"issued in the future", %{"iat" => 600}, :issued_in_future},
        {"authenticated in the future", %{"auth_time" => 600}, :invalid_auth_time},
        {"for another project", %{"aud" => "another-project"}, :invalid_audience},
        {"from another issuer", %{"iss" => "https://securetoken.google.com/another-project"},
         :invalid_issuer},
        {"without a subject", %{"sub" => ""}, :missing_subject}
      ] do
    test "a token #{name} is rejected", ctx do
      now = System.os_time(:second)

      relative_overrides =
        Map.new(unquote(Macro.escape(overrides)), fn
          {key, offset} when is_integer(offset) -> {key, now + offset}
          other -> other
        end)

      token =
        relative_overrides
        |> FirebaseTokens.valid_claims()
        |> FirebaseTokens.sign(ctx.signing_key)

      assert verify(token, ctx.opts) == {:error, unquote(reason)}
    end
  end
end
