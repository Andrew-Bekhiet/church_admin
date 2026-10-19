defmodule ChurchAdmin.People.Person.Changes.ApplyMemberships do
  @moduledoc """
  Makes the written person's services, groups, tags and hobbies the id lists
  the command was given (`nil` leaves a list alone, `[]` empties it), in the
  order the old multi-root mutation used: links are added first, then an
  update checks that the actor may still edit the person, then links are
  removed. So an editor can take a person out of the very service that
  gives the edit right, but cannot move it out of scope any other way. The
  update opts out of `ChurchAdmin.Authz.Changes.RecheckAfterUpdate`, which
  would run after the removals.

  Service and group links are written as the actor through their own
  policies, as Hasura authorized each link: adding one the actor may not add
  fails the command, and removing one the actor may not remove leaves it in
  place (Hasura's `delete … where` skipped it). Tag and hobby links are
  written without authorization; the command's policy covers the person.
  Every referenced id was checked visible beforehand. Once all are written,
  the added links must fit
  (`ChurchAdmin.People.Person.Invariants.added_memberships_fit/3`).
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Authz.Checks.CreatedInCommand
  alias ChurchAdmin.Authz.Scope
  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.People.{GroupMembership, Person, PersonHobby, PersonTag, ServiceMembership}
  alias ChurchAdmin.People.Person.Invariants

  require Ash.Query

  @lists [
    {:services, ServiceMembership, :service_id, :join_service, :leave_service},
    {:groups, GroupMembership, :group_id, :join_group, :leave_group},
    {:tags, PersonTag, :tag_id, :add_tag, :remove_tag},
    {:hobbies, PersonHobby, :hobby_id, :add_hobby, :remove_hobby}
  ]

  @authorized_per_link [ServiceMembership, GroupMembership]

  @impl true
  def change(changeset, _opts, context) do
    changeset =
      if changeset.action_type == :update,
        do: Ash.Changeset.set_context(changeset, %{skip_scope_recheck?: true}),
        else: changeset

    Ash.Changeset.after_action(changeset, fn changeset, person ->
      case apply_lists(changeset, person, context.actor) do
        :ok -> {:ok, person}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  defp apply_lists(changeset, person, actor) do
    wanted =
      for {argument, _, _, _, _} = list <- @lists,
          ids = Ash.Changeset.get_argument(changeset, argument),
          not is_nil(ids),
          do: {list, Enum.uniq(ids), current_ids(list, person.id)}

    created_in_command = CreatedInCommand.carried(changeset.context)

    with :ok <- each(wanted, &add(&1, person, actor, created_in_command)),
         :ok <- still_editable(changeset.action_type, person, actor),
         :ok <- each(wanted, &remove(&1, person, actor)) do
      Invariants.added_memberships_fit(
        person.id,
        added(wanted, :services),
        added(wanted, :groups)
      )
    end
  end

  defp added(wanted, argument) do
    Enum.find_value(wanted, [], fn
      {{^argument, _, _, _, _}, ids, current} -> ids -- current
      _other -> nil
    end)
  end

  defp each(wanted, fun) do
    Enum.reduce_while(wanted, :ok, fn item, :ok ->
      case fun.(item) do
        :ok -> {:cont, :ok}
        error -> {:halt, error}
      end
    end)
  end

  defp current_ids({_argument, resource, column, _add, _remove}, person_id) do
    resource
    |> Ash.Query.filter(person_id == ^person_id)
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.map(&Map.fetch!(&1, column))
  end

  defp add(
         {{_argument, resource, column, action, _remove}, wanted, current},
         person,
         actor,
         created_in_command
       ) do
    case wanted -- current do
      [] ->
        :ok

      ids ->
        ids
        |> Enum.map(&%{:person_id => person.id, column => &1})
        |> Ash.bulk_create(resource, action,
          actor: actor,
          authorize?: resource in @authorized_per_link,
          context: created_in_command,
          return_errors?: true,
          stop_on_error?: true
        )
        |> bulk_result()
    end
  end

  defp remove({{_argument, resource, column, _add, action}, wanted, current}, person, actor) do
    case current -- wanted do
      [] ->
        :ok

      ids ->
        resource
        |> Ash.Query.filter(person_id == ^person.id)
        |> Ash.Query.do_filter([{column, [in: ids]}])
        |> Ash.bulk_destroy(action, %{}, [actor: actor] ++ removal_options(resource))
        |> bulk_result()
        |> skip_when_none_removable()
    end
  end

  defp removal_options(resource) when resource in @authorized_per_link,
    do: [
      authorize_query?: false,
      strategy: [:atomic],
      return_errors?: true,
      rollback_on_error?: false
    ]

  defp removal_options(_resource),
    do: [authorize?: false, strategy: [:stream], return_errors?: true, stop_on_error?: true]

  defp skip_when_none_removable({:error, %Ash.Error.Forbidden{}}), do: :ok
  defp skip_when_none_removable(result), do: result

  defp still_editable(:update, person, actor) do
    scope = Scope.person(actor, :edit)

    editable? =
      Person
      |> Ash.Query.filter(id == ^person.id)
      |> Ash.Query.do_filter(scope)
      |> Ash.exists?(authorize?: false)

    if editable?, do: :ok, else: {:error, Ash.Error.Forbidden.exception([])}
  end

  defp still_editable(_action_type, _person, _actor), do: :ok

  defp bulk_result(%Ash.BulkResult{status: :success}), do: :ok

  defp bulk_result(%Ash.BulkResult{errors: errors}),
    do: {:error, Ash.Error.to_error_class(errors)}
end
