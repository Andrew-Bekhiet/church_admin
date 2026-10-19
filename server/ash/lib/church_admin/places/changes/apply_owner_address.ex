defmodule ChurchAdmin.Places.Changes.ApplyOwnerAddress do
  @moduledoc """
  Applies the command's `address` argument to the written record's one
  address: updates the address the record already has or creates it, writing
  only the keys the argument carries. `nil` leaves the address alone. The
  address is written without authorization: the command's own policy covers
  the record it belongs to.

  `owner` names the address column that holds the owner's id, and
  `owner_id` the written record's attribute that holds it (default `:id`;
  a person writes its family's address with `owner: :family_id, owner_id:
  :family_id`).

      change {ApplyOwnerAddress, owner: :store_id}
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Places.Address

  @options_schema [
    owner: [type: :atom, required: true],
    owner_id: [type: :atom, default: :id]
  ]

  @impl true
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl true
  def change(changeset, opts, context) do
    case Ash.Changeset.get_argument(changeset, :address) do
      nil ->
        changeset

      input ->
        Ash.Changeset.after_action(changeset, fn changeset, owner ->
          case write_address(
                 Map.fetch!(owner, opts[:owner_id]),
                 opts[:owner],
                 input,
                 context.actor
               ) do
            {:ok, _address} -> {:ok, owner}
            {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
          end
        end)
    end
  end

  defp write_address(owner_id, owner_column, input, actor) do
    existing =
      Address
      |> Ash.Query.do_filter([{owner_column, owner_id}])
      |> Ash.read_one!(authorize?: false)

    case existing do
      nil ->
        Address
        |> Ash.Changeset.for_create(:create, Map.put(input, owner_column, owner_id),
          actor: actor,
          authorize?: false
        )
        |> Ash.create()

      address ->
        address
        |> Ash.Changeset.for_update(:update, input, actor: actor, authorize?: false)
        |> Ash.update()
    end
  end
end
