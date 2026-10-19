defmodule ChurchAdmin.Changes.AfterActionFailure do
  @moduledoc """
  Fails a write from an `after_action` hook and rolls its transaction back.

  Returning `{:error, error}` from the hook is not enough: Ash 3.36.1 commits
  a single update that runs atomically (the default for `Ash.update/2`) even
  when an `after_action` hook fails, because
  `Ash.Actions.Update.Bulk.do_atomic_update/5` rolls back only when the caller
  passed a `transaction:` option, which `Ash.update/2` never does.
  """

  @spec roll_back(Ash.Resource.t(), term()) :: {:error, term()} | no_return()
  def roll_back(resource, error) do
    if Ash.DataLayer.in_transaction?(resource) do
      Ash.DataLayer.rollback(resource, error)
    else
      {:error, error}
    end
  end
end
