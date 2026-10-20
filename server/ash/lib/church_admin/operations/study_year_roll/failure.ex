defmodule ChurchAdmin.Operations.StudyYearRoll.Failure do
  @moduledoc """
  Why a roll did not happen: a one-line `message` and, for blockers and
  invariant violations, a `detail` with one line per problem. A failed run
  records them as `message`, a newline, then `detail`. `reason` names the
  failures a caller acts on itself (`:academic_year_already_rolled`,
  `:season_not_started`).
  """

  use Splode.Error, fields: [:message, :detail, :reason], class: :invalid

  @type t :: %__MODULE__{}

  @impl true
  def message(%{message: message}), do: message

  @spec recorded_error(t()) :: String.t()
  def recorded_error(%__MODULE__{message: message, detail: detail})
      when detail in [nil, ""],
      do: message

  def recorded_error(%__MODULE__{message: message, detail: detail}),
    do: message <> "\n" <> detail
end
