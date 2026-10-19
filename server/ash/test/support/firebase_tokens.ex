defmodule ChurchAdmin.FirebaseTokens do
  @moduledoc """
  Builds Firebase-shaped ID tokens for tests: RS256 tokens signed with locally
  generated keys, and the unsigned tokens the Auth emulator issues.
  """

  @project_id "demo-church-admin"

  def project_id, do: @project_id

  def generate_signing_key(kid) do
    {:rsa, 2048}
    |> JOSE.JWK.generate_key()
    |> JOSE.JWK.merge(%{"kid" => kid, "alg" => "RS256", "use" => "sig"})
  end

  def public_jwk_map(signing_key) do
    {_fields, public_map} = signing_key |> JOSE.JWK.to_public() |> JOSE.JWK.to_map()
    public_map
  end

  def valid_claims(overrides \\ %{}) do
    now = System.os_time(:second)

    Map.merge(
      %{
        "iss" => "https://securetoken.google.com/#{@project_id}",
        "aud" => @project_id,
        "auth_time" => now - 60,
        "iat" => now - 30,
        "exp" => now + 3600,
        "sub" => "firebase-auth-id-1",
        "user_id" => "firebase-auth-id-1",
        "email" => "servant@example.com",
        "email_verified" => true,
        "x-hasura-user-id" => "6f1c2a3e-0b4d-4e5f-8a9b-0c1d2e3f4a5b"
      },
      overrides
    )
  end

  def sign(claims, signing_key, header_overrides \\ %{}) do
    {_fields, %{"kid" => kid}} = JOSE.JWK.to_map(signing_key)
    header = Map.merge(%{"alg" => "RS256", "typ" => "JWT", "kid" => kid}, header_overrides)

    {_jws, token} =
      signing_key
      |> JOSE.JWT.sign(header, claims)
      |> JOSE.JWS.compact()

    token
  end

  def unsigned(claims) do
    encode = &(&1 |> Jason.encode!() |> Base.url_encode64(padding: false))
    encode.(%{"alg" => "none", "typ" => "JWT"}) <> "." <> encode.(claims) <> "."
  end
end
