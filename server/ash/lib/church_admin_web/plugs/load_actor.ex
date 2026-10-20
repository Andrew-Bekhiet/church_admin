defmodule ChurchAdminWeb.Plugs.LoadActor do
  @moduledoc """
  Runs after `ChurchAdminWeb.Plugs.Authenticate`: replaces an onboarded
  principal's actor with the one `ChurchAdmin.Authz.ActorLoader` builds for
  its uid, keeping the principal. A uid claim that is not the uid of the user
  linked to the token's Firebase account ends the request with 401
  `unauthenticated`. Anonymous requests and principals without a uid keep the
  actor they have, which no scope admits.
  """

  @behaviour Plug

  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdminWeb.Plugs.Unauthenticated

  @impl true
  def init(opts), do: opts

  @impl true
  def call(conn, _opts) do
    case Ash.PlugHelpers.get_actor(conn) do
      %Actor{system?: false, uid: uid, principal: principal} when is_binary(uid) ->
        case ActorLoader.load_for_principal(principal) do
          {:ok, actor} -> Ash.PlugHelpers.set_actor(conn, actor)
          :error -> Unauthenticated.reject(conn, :uid_claim_not_linked_to_account)
        end

      _anonymous_or_not_onboarded ->
        conn
    end
  end
end
