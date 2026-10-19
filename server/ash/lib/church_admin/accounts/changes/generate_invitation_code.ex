defmodule ChurchAdmin.Accounts.Changes.GenerateInvitationCode do
  @moduledoc "Gives a new invitation a random code (`ChurchAdmin.Accounts.InvitationCode`)."

  use Ash.Resource.Change

  alias ChurchAdmin.Accounts.InvitationCode

  @impl true
  def change(changeset, _opts, _context),
    do: Ash.Changeset.force_change_attribute(changeset, :code, InvitationCode.generate())
end
