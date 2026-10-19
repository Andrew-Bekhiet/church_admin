defmodule ChurchAdmin.Google.Config do
  @moduledoc """
  Settings for the Google APIs, read from `config :church_admin, ChurchAdmin.Google.Config`:

      project_id: "church-data-admin",
      credentials: {:service_account, %{...}} | :emulator_owner,
      identity_toolkit: [adapter: module, base_url: url, req_options: keyword],
      storage: [adapter: module, base_url: url, req_options: keyword],
      messaging: [adapter: module, base_url: url, req_options: keyword, local_delivery: :log | :test_process]

  The emulators (`Bearer owner`, plain-http or non-Google base URLs, local FCM)
  are only allowed in dev and test; `ensure_allowed_in!/1` refuses to boot otherwise.
  """

  alias ChurchAdmin.Google.Credentials

  @type api :: :identity_toolkit | :storage | :messaging
  @type credentials :: Credentials.t()

  @apis [:identity_toolkit, :storage, :messaging]
  @emulator_environments [:dev, :test]

  @spec project_id() :: String.t()
  def project_id, do: Keyword.fetch!(settings(), :project_id)

  @spec credentials() :: credentials()
  def credentials, do: Keyword.fetch!(settings(), :credentials)

  @spec adapter(api()) :: module()
  def adapter(api), do: Keyword.fetch!(api_settings(api), :adapter)

  @spec base_url(api()) :: String.t()
  def base_url(api), do: Keyword.fetch!(api_settings(api), :base_url)

  @spec req_options(api()) :: keyword()
  def req_options(api), do: Keyword.get(api_settings(api), :req_options, [])

  @spec local_messaging_delivery() :: :log | :test_process
  def local_messaging_delivery, do: Keyword.get(api_settings(:messaging), :local_delivery, :log)

  @spec ensure_allowed_in!(atom()) :: :ok
  def ensure_allowed_in!(environment) do
    case check_allowed_in(settings(), environment) do
      :ok -> :ok
      {:error, message} -> raise ArgumentError, message
    end
  end

  @spec check_allowed_in(keyword(), atom()) :: :ok | {:error, String.t()}
  def check_allowed_in(_settings, environment) when environment in @emulator_environments,
    do: :ok

  def check_allowed_in(settings, environment) do
    case emulator_only_settings(settings) do
      [] ->
        :ok

      problems ->
        {:error,
         "refusing to start the Google API clients in #{environment}, " <>
           "these settings are only allowed in dev and test: " <> Enum.join(problems, "; ")}
    end
  end

  defp emulator_only_settings(settings) do
    credentials_problems(Keyword.get(settings, :credentials)) ++
      Enum.flat_map(@apis, &api_problems(&1, Keyword.get(settings, &1, [])))
  end

  defp credentials_problems({:service_account, %{}}), do: []

  defp credentials_problems(:emulator_owner),
    do: ["credentials send the emulator token `Bearer owner`"]

  defp credentials_problems(other),
    do: ["credentials must be a service account, got #{inspect(other)}"]

  defp api_problems(:messaging, settings) do
    case Keyword.get(settings, :adapter) do
      ChurchAdmin.Google.Messaging.Local -> ["messaging uses Messaging.Local, which never sends"]
      _adapter -> base_url_problems(:messaging, settings)
    end
  end

  defp api_problems(api, settings), do: base_url_problems(api, settings)

  defp base_url_problems(api, settings) do
    base_url = Keyword.get(settings, :base_url)

    if google_endpoint?(base_url),
      do: [],
      else: ["#{api} base URL #{inspect(base_url)} is not an https googleapis.com endpoint"]
  end

  defp google_endpoint?(base_url) when is_binary(base_url) do
    case URI.parse(base_url) do
      %URI{scheme: "https", host: host} when is_binary(host) ->
        String.ends_with?(host, ".googleapis.com")

      _other ->
        false
    end
  end

  defp google_endpoint?(_base_url), do: false

  defp settings, do: Application.fetch_env!(:church_admin, __MODULE__)

  defp api_settings(api) when api in @apis, do: Keyword.fetch!(settings(), api)
end
