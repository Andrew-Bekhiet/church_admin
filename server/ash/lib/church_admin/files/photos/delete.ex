defmodule ChurchAdmin.Files.Photos.Delete do
  @moduledoc """
  Runs `Photo.delete_photo`: when the actor may change the subject's photo,
  clears its fields and then deletes the object, in one transaction, so a
  storage failure rolls the fields back. An object that is already gone is not
  a failure.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Files.Buckets
  alias ChurchAdmin.Files.Photos.{Access, Record}
  alias ChurchAdmin.Google.{Error, Storage}

  @impl Ash.Resource.Actions.Implementation
  def run(input, _opts, %{actor: actor}) do
    %{subject: subject, id: id} = input.arguments

    with {:ok, target} <- Access.resolve(actor, subject, id, :write) do
      clear_and_delete(target)
    end
  end

  defp clear_and_delete(target) do
    resources = Record.transaction_resources(target)

    Ash.transaction(resources, fn ->
      with :ok <- Record.write(target, nil, nil),
           :ok <- delete_object(target.object) do
        true
      else
        {:error, error} -> Ash.DataLayer.rollback(resources, error)
      end
    end)
  end

  defp delete_object(object) do
    case Storage.delete(Buckets.photos(), object) do
      :ok -> :ok
      {:error, %Error{reason: :not_found}} -> :ok
      {:error, _error} = failure -> failure
    end
  end
end
