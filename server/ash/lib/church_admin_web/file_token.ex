defmodule ChurchAdminWeb.FileToken do
  @moduledoc """
  The short-lived token in a `/api/files/:token` URL. It is signed, names the
  operation (`:export`, `:photo_upload`, `:photo_download` or `:app_download`),
  the user it was issued to and the operation's parameters, and expires after
  the window its operation allows. Each operation adds its window to
  `@max_age_seconds` and its clause to `ChurchAdminWeb.FileController`.
  """

  @salt "church_admin file download"
  @max_age_seconds %{
    export: 10 * 60,
    photo_upload: 5 * 60,
    photo_download: 5 * 60,
    app_download: 20 * 60
  }

  @type op :: :export | :photo_upload | :photo_download | :app_download
  @type claims :: %{op: op(), uid: String.t(), params: map()}

  @spec issue(op(), String.t(), map(), signed_at: integer()) :: {String.t(), DateTime.t()}
  def issue(op, uid, params, opts \\ []) do
    signed_at = Keyword.get_lazy(opts, :signed_at, fn -> System.system_time(:second) end)
    claims = %{op: op, uid: uid, params: params}
    token = Phoenix.Token.sign(ChurchAdminWeb.Endpoint, @salt, claims, signed_at: signed_at)

    {token, DateTime.from_unix!(signed_at + Map.fetch!(@max_age_seconds, op))}
  end

  @doc "The absolute URL of the token's file; `file_name` is only for show."
  @spec download_url(String.t(), String.t()) :: String.t()
  def download_url(token, file_name),
    do: ChurchAdminWeb.Endpoint.url() <> "/api/files/#{token}/#{file_name}"

  @spec verify(String.t()) :: {:ok, claims()} | {:error, :invalid | :expired}
  def verify(token) do
    with {:ok, %{op: op} = claims} when is_map_key(@max_age_seconds, op) <-
           verify_signature(token),
         {:ok, _claims} <- verify_age(token, Map.fetch!(@max_age_seconds, op)) do
      {:ok, claims}
    else
      {:error, :expired} -> {:error, :expired}
      _forged_or_malformed -> {:error, :invalid}
    end
  end

  defp verify_signature(token),
    do: Phoenix.Token.verify(ChurchAdminWeb.Endpoint, @salt, token, max_age: :infinity)

  defp verify_age(token, max_age),
    do: Phoenix.Token.verify(ChurchAdminWeb.Endpoint, @salt, token, max_age: max_age)
end
