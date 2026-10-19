defmodule ChurchAdmin.Attendance.Changes.ClearArchivedDefaultMeeting do
  @moduledoc """
  A meeting that is archived after an update stops being the default meeting
  of any service or group (archived ones included), and each of them gets an
  edit history row. It applies on every update of an archived meeting, as the
  retired trigger did.
  """

  use Ash.Resource.Change

  require Ash.Query

  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Organization.{Group, Service}

  @impl true
  def change(changeset, _opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, meeting ->
      case clear_defaults(meeting, context.actor) do
        :ok -> {:ok, meeting}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  defp clear_defaults(%{is_archived: false}, _actor), do: :ok

  defp clear_defaults(meeting, actor) do
    Enum.find_value([Service, Group], :ok, fn owner ->
      case clear_default_of(owner, meeting.id, actor) do
        :ok -> nil
        {:error, error} -> {:error, error}
      end
    end)
  end

  defp clear_default_of(owner, meeting_id, actor) do
    owner
    |> Ash.Query.filter(default_meeting_id == ^meeting_id)
    |> Ash.bulk_update(:clear_default_meeting, %{},
      actor: actor,
      authorize?: false,
      strategy: :stream,
      return_errors?: true,
      stop_on_error?: true
    )
    |> case do
      %Ash.BulkResult{status: :success} -> :ok
      %Ash.BulkResult{errors: errors} -> {:error, Ash.Error.to_error_class(errors)}
    end
  end
end
