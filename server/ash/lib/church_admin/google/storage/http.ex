defmodule ChurchAdmin.Google.Storage.Http do
  @moduledoc "The GCS JSON API over Req, against Google or the Storage emulator."

  @behaviour ChurchAdmin.Google.Storage

  alias ChurchAdmin.Google.Client
  alias ChurchAdmin.Google.Storage.Object

  @object_path "/storage/v1/b/{bucket}/o/{object}"

  @impl ChurchAdmin.Google.Storage
  def upload(bucket, name, body, options) do
    options = Keyword.validate!(options, [:content_type, :content_length])

    headers =
      [content_type: Keyword.fetch!(options, :content_type)] ++
        Keyword.take(options, [:content_length])

    with {:ok, response} <-
           Client.request(:storage,
             method: :post,
             url: "/upload/storage/v1/b/{bucket}/o",
             path_params: [bucket: bucket],
             params: [uploadType: "media", name: name],
             headers: headers,
             body: body
           ) do
      {:ok, Object.from_resource(response.body)}
    end
  end

  @impl ChurchAdmin.Google.Storage
  def download(bucket, name) do
    with {:ok, response} <-
           object_request(bucket, name, method: :get, params: [alt: "media"], into: :self) do
      {:ok, response.body}
    end
  end

  @impl ChurchAdmin.Google.Storage
  def delete(bucket, name) do
    with {:ok, _response} <- object_request(bucket, name, method: :delete), do: :ok
  end

  @impl ChurchAdmin.Google.Storage
  def list(bucket, prefix, options) do
    options = Keyword.validate!(options, [:page_token])

    params =
      Enum.reject([prefix: prefix, pageToken: options[:page_token]], &is_nil(elem(&1, 1)))

    with {:ok, %Req.Response{body: body}} <-
           Client.request(:storage,
             method: :get,
             url: "/storage/v1/b/{bucket}/o",
             path_params: [bucket: bucket],
             params: params
           ) do
      {:ok,
       %{
         objects: body |> Map.get("items", []) |> Enum.map(&Object.from_resource/1),
         next_page_token: body["nextPageToken"]
       }}
    end
  end

  @impl ChurchAdmin.Google.Storage
  def metadata(bucket, name) do
    with {:ok, response} <- object_request(bucket, name, method: :get) do
      {:ok, Object.from_resource(response.body)}
    end
  end

  defp object_request(bucket, name, options) do
    Client.request(
      :storage,
      [url: @object_path, path_params: [bucket: bucket, object: name]] ++ options
    )
  end
end
