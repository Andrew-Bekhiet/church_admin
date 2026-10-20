defmodule ChurchAdmin.Accounts.DisconnectSocketsOnRevokedApproval do
  @moduledoc """
  Notifier of `ChurchAdmin.Accounts.UserPermission`: when a user's `approved`
  permission is destroyed (unapproving, editing the permissions, or deleting
  the account, which removes them all), the user's realtime sockets are
  disconnected, because `ChurchAdminWeb.ChangesSocket` admits approved users
  only. Notifications go out after the commit, so a rolled-back revocation
  disconnects nobody.
  """

  use Ash.Notifier

  @impl true
  def notify(%Ash.Notifier.Notification{
        action: %{type: :destroy},
        data: %{uid: uid, permission: "approved"}
      }) do
    uid
    |> ChurchAdminWeb.ChangesSocket.id_for()
    |> ChurchAdminWeb.Endpoint.broadcast("disconnect", %{})
  end

  def notify(_notification), do: :ok
end
