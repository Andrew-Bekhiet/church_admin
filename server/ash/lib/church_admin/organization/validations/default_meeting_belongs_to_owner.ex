defmodule ChurchAdmin.Organization.Validations.DefaultMeetingBelongsToOwner do
  @moduledoc """
  A service's or group's default meeting is one of its own meetings and is not
  archived. Checked on every update of the owner that has a default meeting,
  as the retired constraint triggers did, whether or not the default changed.

      validate {DefaultMeetingBelongsToOwner,
                owner_column: :service_id,
                mismatch: Codes.service_default_meeting_mismatch(),
                archived: Codes.service_default_meeting_archived()}
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Attendance.Meeting
  alias ChurchAdmin.Errors.DomainError

  @options_schema [
    owner_column: [type: :atom, required: true],
    mismatch: [type: :string, required: true],
    archived: [type: :string, required: true]
  ]

  @impl Ash.Resource.Validation
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl Ash.Resource.Validation
  def validate(changeset, opts, _context) do
    case Ash.Changeset.get_attribute(changeset, :default_meeting_id) do
      nil -> :ok
      id -> check(Ash.get(Meeting, id, authorize?: false), changeset.data.id, opts)
    end
  end

  @impl Ash.Resource.Validation
  def atomic(_changeset, _opts, _context),
    do: {:not_atomic, "the default meeting is read from the meetings table"}

  defp check({:ok, %Meeting{is_archived: true}}, _owner_id, opts),
    do: {:error, error(opts[:archived])}

  defp check({:ok, meeting}, owner_id, opts) do
    if Map.fetch!(meeting, opts[:owner_column]) == owner_id,
      do: :ok,
      else: {:error, error(opts[:mismatch])}
  end

  defp check({:error, _not_found}, _owner_id, _opts), do: :ok

  defp error(code), do: DomainError.exception(code: code, fields: [:default_meeting_id])
end
