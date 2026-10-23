defmodule ChurchAdmin.Files.Storage.GoogleCloudStorage do
  @moduledoc """
  Google Cloud Storage: the bytes move over the GCS JSON API with the
  `ChurchAdmin.Google.Config` storage settings and credentials.
  """

  @behaviour ChurchAdmin.Files.Storage

  alias ChurchAdmin.Files.Storage.{Error, Object}
  alias ChurchAdmin.Google.Client

  @object_path "/storage/v1/b/{bucket}/o/{object}"

  @impl ChurchAdmin.Files.Storage
  def upload(bucket, name, body, options) do
    options = Keyword.validate!(options, [:content_type, :content_length])

    headers =
      [content_type: Keyword.fetch!(options, :content_type)] ++
        Keyword.take(options, [:content_length])

    :storage
    |> Client.request(
      method: :post,
      url: "/upload/storage/v1/b/{bucket}/o",
      path_params: [bucket: bucket],
      params: [uploadType: "media", name: name],
      headers: headers,
      body: body
    )
    |> to_result(&Object.from_resource(&1.body))
  end

  @impl ChurchAdmin.Files.Storage
  def download(bucket, name) do
    bucket
    |> object_request(name, method: :get, params: [alt: "media"], into: :self)
    |> to_result(& &1.body)
  end

  @impl ChurchAdmin.Files.Storage
  def delete(bucket, name) do
    case object_request(bucket, name, method: :delete) do
      {:ok, _response} -> :ok
      failure -> to_result(failure, & &1)
    end
  end

  @impl ChurchAdmin.Files.Storage
  def list(bucket, prefix, options) do
    options = Keyword.validate!(options, [:page_token])

    params =
      Enum.reject([prefix: prefix, pageToken: options[:page_token]], &is_nil(elem(&1, 1)))

    :storage
    |> Client.request(
      method: :get,
      url: "/storage/v1/b/{bucket}/o",
      path_params: [bucket: bucket],
      params: params
    )
    |> to_result(fn %Req.Response{body: body} ->
      %{
        objects: body |> Map.get("items", []) |> Enum.map(&Object.from_resource/1),
        next_page_token: body["nextPageToken"]
      }
    end)
  end

  @impl ChurchAdmin.Files.Storage
  def metadata(bucket, name) do
    bucket
    |> object_request(name, method: :get)
    |> to_result(&Object.from_resource(&1.body))
  end

  defp object_request(bucket, name, options) do
    Client.request(
      :storage,
      [url: @object_path, path_params: [bucket: bucket, object: name]] ++ options
    )
  end

  defp to_result({:ok, response}, read), do: {:ok, read.(response)}
  defp to_result({:error, error}, _read), do: {:error, Error.from_google(error)}
end
