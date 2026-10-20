defmodule ChurchAdmin.Authz.Checks.MayRecordAttendance do
  @moduledoc """
  Filter check for an attendance record: its meeting is in the actor's
  `:record_persons` scope when the record is a person's attendance, or in the
  `:record_servants` scope when it is a servant's (`as_servant`).
  """

  use Ash.Policy.FilterCheck

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine

  alias ChurchAdmin.Authz.Scope

  @impl Ash.Policy.Check
  def describe(_opts), do: "the actor may record attendance in the record's meeting"

  @impl Ash.Policy.FilterCheck
  def filter(actor, _context, _opts) do
    any_of([
      all_of([expr(not as_servant), meeting_in_scope(actor, :record_persons)]),
      all_of([expr(as_servant), meeting_in_scope(actor, :record_servants)])
    ])
  end

  defp meeting_in_scope(actor, access) do
    case Scope.meeting(actor, access) do
      scope when is_boolean(scope) -> scope
      scope -> Ash.Query.Exists.new([:meeting], scope)
    end
  end
end
