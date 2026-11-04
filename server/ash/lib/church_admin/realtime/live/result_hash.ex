defmodule ChurchAdmin.Realtime.Live.ResultHash do
  @moduledoc """
  The hash a query result is known by: lowercase hex sha256 of the term's
  deterministic external format. Only the server computes it, so no JSON
  canonicalization is needed; the HTTP response carries it as
  `extensions.resultHash` and live queries compare against it.
  """

  @spec of(term()) :: String.t()
  def of(data) do
    :sha256
    |> :crypto.hash(:erlang.term_to_binary(data, [:deterministic]))
    |> Base.encode16(case: :lower)
  end
end
