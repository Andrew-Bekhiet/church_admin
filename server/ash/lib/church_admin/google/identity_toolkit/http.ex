defmodule ChurchAdmin.Google.IdentityToolkit.Http do
  @moduledoc "Identity Toolkit v1 over Req, against Google or the Auth emulator."

  @behaviour ChurchAdmin.Google.IdentityToolkit

  alias ChurchAdmin.Google.Client
  alias ChurchAdmin.Google.Config
  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.IdentityToolkit.Account

  @impl ChurchAdmin.Google.IdentityToolkit
  def lookup_by_uid(uid), do: lookup(%{localId: [uid]})

  @impl ChurchAdmin.Google.IdentityToolkit
  def lookup_by_email(email), do: lookup(%{email: [email]})

  @impl ChurchAdmin.Google.IdentityToolkit
  def update(uid, attributes) do
    attributes = Keyword.validate!(attributes, [:custom_claims, :email_verified])

    body =
      Enum.reduce(attributes, %{localId: uid}, fn
        {:custom_claims, claims}, body -> Map.put(body, :customAttributes, Jason.encode!(claims))
        {:email_verified, verified?}, body -> Map.put(body, :emailVerified, verified?)
      end)

    with {:ok, _response} <- post("accounts:update", body), do: :ok
  end

  @impl ChurchAdmin.Google.IdentityToolkit
  def delete(uid) do
    with {:ok, _response} <- post("accounts:delete", %{localId: uid}), do: :ok
  end

  defp lookup(body) do
    case post("accounts:lookup", body) do
      {:ok, %Req.Response{body: %{"users" => [user_info | _]}}} ->
        {:ok, Account.from_user_info(user_info)}

      {:ok, _no_users} ->
        {:error, %Error{api: :identity_toolkit, reason: :not_found}}

      {:error, error} ->
        {:error, error}
    end
  end

  defp post(method, body) do
    Client.request(:identity_toolkit,
      method: :post,
      url: "/v1/projects/{project}/" <> method,
      path_params: [project: Config.project_id()],
      json: body
    )
  end
end
