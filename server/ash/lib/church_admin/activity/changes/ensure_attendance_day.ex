defmodule ChurchAdmin.Activity.Changes.EnsureAttendanceDay do
  @moduledoc """
  Makes sure the attendance day a record points at exists, before the record
  is written, under the same actor and authorization as the command.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Activity

  @impl true
  def change(changeset, _opts, context) do
    Ash.Changeset.before_action(changeset, fn changeset ->
      day = Ash.Changeset.get_attribute(changeset, :day_id)

      case Activity.ensure_attendance_day(%{day: day},
             scope: context,
             return_notifications?: true
           ) do
        {:ok, _day, _notifications} -> changeset
        {:error, error} -> Ash.Changeset.add_error(changeset, error)
      end
    end)
  end
end
