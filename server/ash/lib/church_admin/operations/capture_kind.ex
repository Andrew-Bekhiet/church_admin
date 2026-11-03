defmodule ChurchAdmin.Operations.CaptureKind do
  @moduledoc "What a user did to the screen when the app reported it; stored as the lower-case value text."
  use Ash.Type.Enum, values: [:screenshot, :screen_recording]
  use AshGraphql.Type

  @impl AshGraphql.Type
  def graphql_type(_), do: :screen_capture_kind
end
