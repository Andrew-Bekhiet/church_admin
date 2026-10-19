defmodule ChurchAdmin.Repo.Migrations.ReplicateFullMeetingRows do
  use Ecto.Migration

  # ChurchAdmin.Realtime.TypeMap reads a deleted meeting's service_id and
  # group_id to update its service or group.
  def change do
    execute(
      "alter table history.meetings replica identity full",
      "alter table history.meetings replica identity default"
    )
  end
end
