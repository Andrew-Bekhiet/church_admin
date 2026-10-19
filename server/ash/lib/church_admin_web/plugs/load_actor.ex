defmodule ChurchAdminWeb.Plugs.LoadActor do
  @moduledoc """
  Runs after `ChurchAdminWeb.Plugs.Authenticate`: replaces an onboarded
  principal's actor with the one `ChurchAdmin.Authz.ActorLoader` builds for
  its uid, keeping the principal. Anonymous requests and principals without a
  uid keep the actor they have, which no scope admits.
  """

  @behaviour Plug

  alias ChurchAdmin.Authz.{Actor, ActorLoader}

  @impl true
  def init(opts), do: opts

  @impl true
  def call(conn, _opts) do
    case Ash.PlugHelpers.get_actor(conn) do
      %Actor{system?: false, uid: uid, principal: principal} when is_binary(uid) ->
        Ash.PlugHelpers.set_actor(conn, %{ActorLoader.load(uid) | principal: principal})

      _anonymous_or_not_onboarded ->
        conn
    end
  end
end
