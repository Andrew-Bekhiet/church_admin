defmodule ChurchAdmin.Files.Storage.FirebaseEmulator do
  @moduledoc """
  The Firebase Storage emulator, for dev and the local stack. The bytes move
  as in `GoogleCloudStorage`, against the emulator with `Bearer owner`.

  The emulator signs no URLs. An upload link is a resumable upload session
  Ash opens as the owner, which takes the bytes without auth; a download link
  carries the object's Firebase download token. Both point at the storage
  config's `public_url:`, the origin clients reach the emulator on. Neither
  expires, whatever `expires_at` says, and `max_size` is not enforced.
  """

  @behaviour ChurchAdmin.Files.Storage

  alias ChurchAdmin.Files.Storage
  alias ChurchAdmin.Files.Storage.{Error, GoogleCloudStorage, Link}
  alias ChurchAdmin.Google.Client

  @firebase_object_path "/v0/b/{bucket}/o/{object}"

  @impl Storage
  defdelegate upload(bucket, name, body, options), to: GoogleCloudStorage

  @impl Storage
  defdelegate download(bucket, name), to: GoogleCloudStorage

  @impl Storage
  defdelegate delete(bucket, name), to: GoogleCloudStorage

  @impl Storage
  defdelegate list(bucket, prefix, options), to: GoogleCloudStorage

  @impl Storage
  defdelegate metadata(bucket, name), to: GoogleCloudStorage

  @impl Storage
  def upload_link(bucket, name, options) do
    options = Keyword.validate!(options, [:content_type, :max_size, :expires_in])
    content_type = Keyword.fetch!(options, :content_type)

    with {:ok, response} <- start_resumable_session(bucket, name, content_type),
         {:ok, session_url} <- session_url(response) do
      headers = [{"content-type", content_type}]

      {:ok,
       Link.expiring_in(
         on_public_origin(session_url),
         headers,
         Keyword.fetch!(options, :expires_in)
       )}
    end
  end

  @impl Storage
  def download_link(bucket, name, options) do
    options = Keyword.validate!(options, [:expires_in, :file_name, :content_type])

    with {:ok, token} <- download_token(bucket, name) do
      url =
        on_public_origin(%URI{
          path: "/v0/b/#{bucket}/o/#{URI.encode(name, &URI.char_unreserved?/1)}",
          query: URI.encode_query(alt: "media", token: token)
        })

      {:ok, Link.expiring_in(url, [], Keyword.fetch!(options, :expires_in))}
    end
  end

  defp start_resumable_session(bucket, name, content_type) do
    :storage
    |> Client.request(
      method: :post,
      url: "/upload/storage/v1/b/{bucket}/o",
      path_params: [bucket: bucket],
      params: [uploadType: "resumable", name: name],
      headers: [{"x-upload-content-type", content_type}],
      json: %{}
    )
    |> storage_result()
  end

  defp session_url(response) do
    case Req.Response.get_header(response, "location") do
      [session_url | _rest] ->
        {:ok, session_url}

      [] ->
        {:error,
         %Error{reason: :unexpected_response, message: "the upload session has no location"}}
    end
  end

  defp download_token(bucket, name) do
    with {:ok, %Req.Response{body: object}} <- firebase_object_request(bucket, name, :get, []) do
      case first_download_token(object) do
        nil -> create_download_token(bucket, name)
        token -> {:ok, token}
      end
    end
  end

  defp create_download_token(bucket, name) do
    with {:ok, %Req.Response{body: object}} <-
           firebase_object_request(bucket, name, :post, create_token: true) do
      case first_download_token(object) do
        nil -> {:error, %Error{reason: :unexpected_response, message: "no download token"}}
        token -> {:ok, token}
      end
    end
  end

  defp first_download_token(%{"downloadTokens" => tokens}) when is_binary(tokens) do
    tokens |> String.split(",", trim: true) |> List.first()
  end

  defp first_download_token(_object), do: nil

  defp firebase_object_request(bucket, name, method, params) do
    :storage
    |> Client.request(
      method: method,
      url: @firebase_object_path,
      path_params: [bucket: bucket, object: name],
      params: params
    )
    |> storage_result()
  end

  defp storage_result({:ok, response}), do: {:ok, response}
  defp storage_result({:error, error}), do: {:error, Error.from_google(error)}

  defp on_public_origin(url) do
    %URI{scheme: scheme, host: host, port: port} = URI.parse(Storage.adapter_option(:public_url))

    url
    |> URI.parse()
    |> Map.merge(%{scheme: scheme, host: host, port: port})
    |> URI.to_string()
  end
end
