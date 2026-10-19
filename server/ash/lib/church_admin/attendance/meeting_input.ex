defmodule ChurchAdmin.Attendance.MeetingInput do
  @moduledoc "The default meeting `createService` creates for the new service."

  use Ash.TypedStruct
  use AshGraphql.Type

  alias ChurchAdmin.Attendance.MeetingAudience
  alias ChurchAdmin.Types.Text

  typed_struct do
    field :name, Text, allow_nil?: false
    field :audience, MeetingAudience, default: :persons_and_servants
    field :color, :integer
    field :is_archived, :boolean, default: false
    field :show_kodas_checkbox, :boolean, default: true
    field :service_study_year, :integer
    field :service_gender, :boolean
  end

  @impl true
  def graphql_type(_constraints), do: :default_meeting

  @impl true
  def graphql_input_type(_constraints), do: :meeting_input
end
