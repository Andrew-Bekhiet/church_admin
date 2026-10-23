defmodule ChurchAdmin.Files.Storage.GoogleCloudStorage do
  @moduledoc """
  Google Cloud Storage: the bytes move over the GCS JSON API with the
  `ChurchAdmin.Google.Config` storage settings and credentials, and links are
  V4 signed URLs. The storage config's `signer:` picks who signs them:

    * `:iam_sign_blob` (the default) asks the IAM Credentials API to sign as
      `signing_service_account:`, or the credentials' own `client_email`,
      which needs `iam.serviceAccounts.signBlob` on that account.
    * `:service_account_key` signs locally with the credentials' private key.
  """

  @behaviour ChurchAdmin.Files.Storage

  alias ChurchAdmin.Files.Storage
  alias ChurchAdmin.Files.Storage.{Error, Link, Object}
  alias ChurchAdmin.Google.{Client, Config, Credentials}
  alias GcsSignedUrl.SignBlob.OAuthConfig

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

  @impl ChurchAdmin.Files.Storage
  def upload_link(bucket, name, options) do
    options = Keyword.validate!(options, [:content_type, :max_size, :expires_in])
    expires_in = Keyword.fetch!(options, :expires_in)
    headers = [{"content-type", Keyword.fetch!(options, :content_type)}] ++ size_range(options)

    with {:ok, url} <- sign(bucket, name, verb: "PUT", expires: expires_in, headers: headers) do
      {:ok, Link.expiring_in(url, headers, expires_in)}
    end
  end

  @impl ChurchAdmin.Files.Storage
  def download_link(bucket, name, options) do
    options = Keyword.validate!(options, [:expires_in, :file_name, :content_type])
    expires_in = Keyword.fetch!(options, :expires_in)
    query_params = response_params(options)

    with {:ok, url} <-
           sign(bucket, name, verb: "GET", expires: expires_in, query_params: query_params) do
      {:ok, Link.expiring_in(url, [], expires_in)}
    end
  end

  defp size_range(options) do
    case Keyword.fetch(options, :max_size) do
      {:ok, max_size} -> [{"x-goog-content-length-range", "0,#{max_size}"}]
      :error -> []
    end
  end

  defp response_params(options) do
    Enum.flat_map(options, fn
      {:file_name, file_name} ->
        ["response-content-disposition": ~s(attachment; filename="#{file_name}")]

      {:content_type, content_type} ->
        ["response-content-type": content_type]

      {:expires_in, _expires_in} ->
        []
    end)
  end

  defp sign(bucket, name, sign_options) do
    with {:ok, signer} <- signer() do
      signer
      |> GcsSignedUrl.generate_v4(bucket, encode_path(name), sign_options)
      |> signed_url()
    end
  end

  defp signed_url({:ok, url}), do: {:ok, url}
  defp signed_url({:error, message}), do: {:error, %Error{reason: :signing, message: message}}
  defp signed_url(url) when is_binary(url), do: {:ok, url}

  defp encode_path(name), do: URI.encode(name, &(URI.char_unreserved?(&1) or &1 == ?/))

  defp signer do
    case {Storage.adapter_option(:signer, :iam_sign_blob), Config.credentials()} do
      {:service_account_key, {:service_account, service_account}} ->
        {:ok, GcsSignedUrl.Client.load(service_account)}

      {:service_account_key, _credentials} ->
        credentials_error("signing with a key needs service-account credentials")

      {:iam_sign_blob, credentials} ->
        iam_signer(credentials)
    end
  end

  defp iam_signer(credentials) do
    case {signing_service_account(credentials), Credentials.fetch_token(credentials)} do
      {nil, _token} ->
        credentials_error("no service account is named to sign storage links")

      {service_account, {:ok, token}} ->
        {:ok, %OAuthConfig{service_account: service_account, access_token: token}}

      {_service_account, {:error, error}} ->
        {:error, Error.from_google(error)}
    end
  end

  defp signing_service_account(credentials) do
    Storage.adapter_option(:signing_service_account) || client_email(credentials)
  end

  defp client_email({:service_account, %{"client_email" => client_email}}), do: client_email
  defp client_email(_credentials), do: nil

  defp credentials_error(message), do: {:error, %Error{reason: :credentials, message: message}}

  defp object_request(bucket, name, options) do
    Client.request(
      :storage,
      [url: @object_path, path_params: [bucket: bucket, object: name]] ++ options
    )
  end

  defp to_result({:ok, response}, read), do: {:ok, read.(response)}
  defp to_result({:error, error}, _read), do: {:error, Error.from_google(error)}
end
