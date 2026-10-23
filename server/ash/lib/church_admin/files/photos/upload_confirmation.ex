defmodule ChurchAdmin.Files.Photos.UploadConfirmation do
  @moduledoc """
  The `confirmationToken` of a photo upload link: signed, good for fifteen
  minutes, naming the user, subject and id it was issued for and the staging
  object the bytes go to. A token that does not verify for the confirming
  actor, subject and id is `not_found`, like a photo the actor cannot reach.
  """

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Errors.{Codes, DomainError}

  @salt "church_admin photo upload"
  @max_age_seconds 15 * 60

  @spec issue(String.t(), atom(), String.t(), String.t(), signed_at: integer()) :: String.t()
  def issue(uid, subject, id, staging_object, opts \\ []) do
    signed_at = Keyword.get_lazy(opts, :signed_at, fn -> System.system_time(:second) end)
    claims = %{uid: uid, subject: subject, id: id, object: staging_object}

    Phoenix.Token.sign(ChurchAdminWeb.Endpoint, @salt, claims, signed_at: signed_at)
  end

  @spec staging_object(String.t(), Actor.t() | nil, atom(), String.t()) ::
          {:ok, String.t()} | {:error, DomainError.t()}
  def staging_object(token, actor, subject, id) do
    uid = actor_uid(actor)

    case Phoenix.Token.verify(ChurchAdminWeb.Endpoint, @salt, token, max_age: @max_age_seconds) do
      {:ok, %{uid: ^uid, subject: ^subject, id: ^id, object: object}} when is_binary(uid) ->
        {:ok, object}

      _forged_expired_or_issued_for_another_photo ->
        {:error,
         DomainError.exception(code: Codes.not_found(), message: "The photo upload was not found")}
    end
  end

  defp actor_uid(%Actor{uid: uid}), do: uid
  defp actor_uid(nil), do: nil
end
