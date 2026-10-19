defmodule ChurchAdmin.TestDomain.UnguardedAfterAction do
  @moduledoc """
  An atomic change whose `after_action` hook fails without rolling back: the
  shape `ChurchAdmin.Changes.AtomicAfterActionGuardTest` must reject.
  """

  use Ash.Resource.Change

  @impl true
  def change(changeset, _opts, _context) do
    Ash.Changeset.after_action(changeset, fn _changeset, _record -> {:error, "failed"} end)
  end

  @impl true
  def atomic(changeset, opts, context), do: {:ok, change(changeset, opts, context)}
end
