defmodule ChurchAdmin.Google.Storage do
  @moduledoc """
  Cloud Storage objects through the GCS JSON API. The adapter comes from
  `ChurchAdmin.Google.Config`. The stream `download/2` returns must be consumed
  by the process that called it.
  """

  alias ChurchAdmin.Google.Config
  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.Storage.Object

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

  defp adapter, do: Config.adapter(:storage)
end
