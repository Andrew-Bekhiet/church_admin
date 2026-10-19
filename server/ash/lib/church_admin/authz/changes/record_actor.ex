defmodule ChurchAdmin.Authz.Changes.RecordActor do
  @moduledoc """
  Sets `attribute` to the actor's uid (Hasura's `set` presets such as
  `recorded_by: X-Hasura-User-Id`). The system actor and a nil actor leave
  the attribute as it is.

      change {ChurchAdmin.Authz.Changes.RecordActor, attribute: :recorded_by}
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Authz.Actor

  @impl true
  def change(changeset, opts, %{actor: %Actor{uid: uid}}) when is_binary(uid),
    do: Ash.Changeset.force_change_attribute(changeset, Keyword.fetch!(opts, :attribute), uid)

  def change(changeset, _opts, _context), do: changeset

  @impl true
  def atomic(changeset, opts, context), do: {:ok, change(changeset, opts, context)}
end
