defmodule ChurchAdmin.People.Person.Changes.ClaimFamilyContacts do
  @moduledoc """
  A live person who is, after the write, the only live member of its person
  type in its family takes over the family's unclaimed contacts of that
  type: those with a phone the person already has are deleted, the rest
  become the person's, main only while the person has no main phone. Runs
  when a person is created, changes family or person type, or is archived
  (an archived person takes nothing, and its siblings are not re-examined,
  as before).
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.People.{Contact, Person}

  require Ash.Query

  @impl Ash.Resource.Change
  def change(changeset, _opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, person ->
      with true <- membership_changed?(changeset, person),
           true <- is_nil(person.deleted_at) and sole_member?(person),
           {:error, error} <- take_over(person, context.actor) do
        AfterActionFailure.roll_back(changeset.resource, error)
      else
        _claimed_or_skipped -> {:ok, person}
      end
    end)
  end

  defp membership_changed?(%{action_type: :update, data: before}, person) do
    before.family_id != person.family_id or before.person_type_id != person.person_type_id
  end

  defp membership_changed?(_created_or_archived, _person), do: true

  defp sole_member?(%{family_id: nil}), do: false
  defp sole_member?(%{person_type_id: nil}), do: false

  defp sole_member?(person) do
    Person
    |> Ash.Query.filter(
      family_id == ^person.family_id and person_type_id == ^person.person_type_id and
        is_nil(deleted_at)
    )
    |> Ash.count!(authorize?: false) == 1
  end

  defp take_over(person, actor) do
    own_phones =
      Contact
      |> Ash.Query.filter(person_id == ^person.id)
      |> Ash.read!(authorize?: false, page: false)

    unclaimed =
      Ash.Query.filter(
        Contact,
        is_nil(person_id) and family_id == ^person.family_id and
          person_type_id == ^person.person_type_id
      )

    phones = Enum.map(own_phones, & &1.phone)
    has_main? = Enum.any?(own_phones, & &1.is_main_phone)

    with :ok <-
           unclaimed
           |> Ash.Query.filter(phone in ^phones)
           |> Ash.bulk_destroy(:destroy, %{}, bulk_options(actor))
           |> bulk_result() do
      unclaimed
      |> Ash.bulk_update(:claim, claimed_fields(person, has_main?), bulk_options(actor))
      |> bulk_result()
    end
  end

  defp claimed_fields(person, has_main?) do
    fields = %{person_id: person.id, family_id: nil, person_type_id: nil}
    if has_main?, do: Map.put(fields, :is_main_phone, false), else: fields
  end

  defp bulk_options(actor) do
    [
      actor: actor,
      authorize?: false,
      strategy: [:stream],
      return_errors?: true,
      stop_on_error?: true
    ]
  end

  defp bulk_result(%Ash.BulkResult{status: :success}), do: :ok

  defp bulk_result(%Ash.BulkResult{errors: errors}),
    do: {:error, Ash.Error.to_error_class(errors)}
end
