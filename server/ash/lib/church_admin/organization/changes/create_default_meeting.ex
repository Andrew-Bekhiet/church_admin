defmodule ChurchAdmin.Organization.Changes.CreateDefaultMeeting do
  @moduledoc """
  Creates the service's `default_meeting` argument as one of the service's own
  meetings and makes it the service's default, in the creating transaction:
  the meeting needs the service to exist, and the service's default needs the
  meeting. The meeting is authorized by the service's create policy.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Changes.AfterActionFailure

  @impl true
  def change(changeset, _opts, context) do
    case Ash.Changeset.get_argument(changeset, :default_meeting) do
      nil ->
        changeset

      input ->
        Ash.Changeset.after_action(changeset, fn changeset, service ->
          case create_default_meeting(service, input, context.actor) do
            {:ok, service} -> {:ok, service}
            {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
          end
        end)
    end
  end

  defp create_default_meeting(service, input, actor) do
    meeting_attributes = input |> Map.from_struct() |> Map.put(:service_id, service.id)

    with {:ok, meeting, _notifications} <-
           Meeting
           |> Ash.Changeset.for_create(:create_meeting, meeting_attributes,
             actor: actor,
             authorize?: false
           )
           |> Ash.create(return_notifications?: true),
         {:ok, service, _notifications} <-
           service
           |> Ash.Changeset.for_update(:set_default_meeting, %{default_meeting_id: meeting.id},
             actor: actor,
             authorize?: false
           )
           |> Ash.update(return_notifications?: true) do
      {:ok, service}
    end
  end
end
