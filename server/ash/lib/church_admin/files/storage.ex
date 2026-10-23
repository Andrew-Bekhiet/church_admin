defmodule ChurchAdmin.Files.Storage do
  @moduledoc """
  Object storage, whatever the provider. The adapter and its options come from
  `config :church_admin, ChurchAdmin.Files.Storage, adapter: module, ...`;
  callers go through this module and never name an adapter. The stream
  `download/2` returns must be consumed by the process that called it.
  """

  alias ChurchAdmin.Files.Storage.{Error, Object}

  @type body :: iodata() | Enumerable.t()
  @type upload_option :: {:content_type, String.t()} | {:content_length, non_neg_integer()}
  @type list_option :: {:page_token, String.t()}
  @type page :: %{objects: [Object.t()], next_page_token: String.t() | nil}

  @callback upload(bucket :: String.t(), name :: String.t(), body(), [upload_option()]) ::
              {:ok, Object.t()} | {:error, Error.t()}
  @callback download(bucket :: String.t(), name :: String.t()) ::
              {:ok, Enumerable.t()} | {:error, Error.t()}
  @callback delete(bucket :: String.t(), name :: String.t()) :: :ok | {:error, Error.t()}
  @callback list(bucket :: String.t(), prefix :: String.t(), [list_option()]) ::
              {:ok, page()} | {:error, Error.t()}
  @callback metadata(bucket :: String.t(), name :: String.t()) ::
              {:ok, Object.t()} | {:error, Error.t()}

  @spec upload(String.t(), String.t(), body(), [upload_option()]) ::
          {:ok, Object.t()} | {:error, Error.t()}
  def upload(bucket, name, body, options), do: adapter().upload(bucket, name, body, options)

  @spec download(String.t(), String.t()) :: {:ok, Enumerable.t()} | {:error, Error.t()}
  def download(bucket, name), do: adapter().download(bucket, name)

  @spec delete(String.t(), String.t()) :: :ok | {:error, Error.t()}
  def delete(bucket, name), do: adapter().delete(bucket, name)

  @spec list(String.t(), String.t(), [list_option()]) :: {:ok, page()} | {:error, Error.t()}
  def list(bucket, prefix, options \\ []), do: adapter().list(bucket, prefix, options)

  @spec metadata(String.t(), String.t()) :: {:ok, Object.t()} | {:error, Error.t()}
  def metadata(bucket, name), do: adapter().metadata(bucket, name)

  @doc "The adapter's own setting `key` from the storage config, or `default`."
  @spec adapter_option(atom(), term()) :: term()
  def adapter_option(key, default \\ nil), do: Keyword.get(settings(), key, default)

  @spec settings() :: keyword()
  def settings, do: Application.get_env(:church_admin, __MODULE__, [])

  defp adapter, do: Keyword.fetch!(settings(), :adapter)
end
