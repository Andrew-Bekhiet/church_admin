defmodule ChurchAdmin.Auth.UnverifiedJwt do
  @moduledoc """
  Reads a compact JWT's header and claims without checking its signature, so a
  verifier can choose the key and algorithm before verifying.
  """

  @spec decode(String.t()) :: {:ok, header :: map(), claims :: map()} | {:error, :malformed}
  def decode(token) do
    with [encoded_header, encoded_claims, _signature] <- String.split(token, "."),
         {:ok, header} <- decode_segment(encoded_header),
         {:ok, claims} <- decode_segment(encoded_claims) do
      {:ok, header, claims}
    else
      _ -> {:error, :malformed}
    end
  end

  defp decode_segment(segment) do
    with {:ok, json} <- Base.url_decode64(segment, padding: false),
         {:ok, map} when is_map(map) <- Jason.decode(json) do
      {:ok, map}
    end
  end
end
