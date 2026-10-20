defmodule ChurchAdmin.People.Contacts do
  @moduledoc """
  Makes an owner's contacts the desired set a command was given, for the
  person and family commands:

    * `replace_own/3`: a person's own contacts (`ChurchAdmin.People.ContactInput`);
    * `replace_unclaimed/3`: a family's unclaimed contacts, each with its
      person type (`ChurchAdmin.People.FamilyContactInput`).

  An input with an `id` updates that contact; an input without one updates
  the owner's contact with the same phone (and type), or creates one. The
  owner's other contacts are deleted first, then updates, then creates, so a
  phone can move between rows in one command. An `id` the owner does not
  hold fails with `contact/not-owned`; a phone the owner already has on
  another row fails with `contact/phone-taken`. Writes skip authorization:
  the calling command's policy covers the owner.
  """

  alias ChurchAdmin.Errors.{Codes, ConstraintCodes, DomainError}
  alias ChurchAdmin.People.Contact

  require Ash.Query

  @constraint_codes %{
    "contacts_person_id_phone_key" => Codes.contact_phone_taken(),
    "contacts_unclaimed_phone_key" => Codes.contact_phone_taken(),
    "contacts_person_main_phone_key" => Codes.contact_main_phone_taken(),
    "contacts_unclaimed_main_phone_key" => Codes.contact_main_phone_taken()
  }

  @spec replace_own(Ecto.UUID.t(), [map()], term()) :: :ok | {:error, term()}
  def replace_own(person_id, inputs, actor) do
    Contact
    |> Ash.Query.filter(person_id == ^person_id)
    |> replace(inputs, %{person_id: person_id}, &{&1.phone, nil}, actor)
  end

  @spec replace_unclaimed(Ecto.UUID.t(), [map()], term()) :: :ok | {:error, term()}
  def replace_unclaimed(family_id, inputs, actor) do
    Contact
    |> Ash.Query.filter(family_id == ^family_id and is_nil(person_id))
    |> replace(inputs, %{family_id: family_id}, &{&1.phone, &1.person_type_id}, actor)
  end

  defp replace(current_query, inputs, owner, key_of, actor) do
    current = Ash.read!(current_query, authorize?: false, page: false)
    inputs = Enum.map(inputs, &as_map/1)

    with {:ok, matched} <- match(inputs, current, key_of),
         :ok <- destroy_unmatched(current, matched),
         :ok <- write(matched, owner, actor) do
      :ok
    else
      {:error, error} -> {:error, ConstraintCodes.translate(error, @constraint_codes)}
    end
  end

  defp as_map(%_struct{} = input), do: Map.from_struct(input)
  defp as_map(input), do: Map.new(input)

  defp match(inputs, current, key_of) do
    by_id = Map.new(current, &{&1.id, &1})
    by_key = Map.new(current, &{key_of.(&1), &1})

    inputs
    |> Enum.reduce_while({:ok, []}, fn input, {:ok, matched} ->
      case input[:id] do
        nil ->
          {:cont, {:ok, [{input, by_key[key_of.(input)]} | matched]}}

        id ->
          case by_id[id] do
            nil -> {:halt, {:error, not_owned()}}
            existing -> {:cont, {:ok, [{input, existing} | matched]}}
          end
      end
    end)
    |> case do
      {:ok, matched} -> {:ok, Enum.reverse(matched)}
      error -> error
    end
  end

  defp destroy_unmatched(current, matched) do
    kept = for {_input, %Contact{id: id}} <- matched, do: id

    case for(contact <- current, contact.id not in kept, do: contact.id) do
      [] ->
        :ok

      ids ->
        Contact
        |> Ash.Query.filter(id in ^ids)
        |> Ash.bulk_destroy(:destroy, %{},
          authorize?: false,
          strategy: [:atomic, :stream],
          return_errors?: true
        )
        |> bulk_result()
    end
  end

  defp write(matched, owner, actor) do
    {updates, creates} = Enum.split_with(matched, fn {_input, existing} -> existing end)

    Enum.reduce_while(updates ++ creates, :ok, fn {input, existing}, :ok ->
      case write_one(input, existing, owner, actor) do
        {:ok, _contact, _notifications} -> {:cont, :ok}
        {:error, error} -> {:halt, {:error, error}}
      end
    end)
  end

  defp write_one(input, nil, owner, actor) do
    attrs = input |> Map.delete(:id) |> Map.merge(owner)

    Contact
    |> Ash.Changeset.for_create(:create, attrs, actor: actor, authorize?: false)
    |> Ash.create(return_notifications?: true)
  end

  defp write_one(input, existing, _owner, actor) do
    existing
    |> Ash.Changeset.for_update(:update, Map.take(input, [:phone, :label, :is_main_phone]),
      actor: actor,
      authorize?: false
    )
    |> Ash.update(return_notifications?: true)
  end

  defp bulk_result(%Ash.BulkResult{status: :success}), do: :ok

  defp bulk_result(%Ash.BulkResult{errors: errors}),
    do: {:error, Ash.Error.to_error_class(errors)}

  defp not_owned, do: DomainError.exception(code: Codes.contact_not_owned(), fields: [:id])
end
