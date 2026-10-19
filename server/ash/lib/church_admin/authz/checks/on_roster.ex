defmodule ChurchAdmin.Authz.Checks.OnRoster do
  @moduledoc """
  Filter check for an attendance record: its meeting's roster has an entry for
  the record's person in the record's role (`as_servant`). Reads the
  resource's private `roster_entry` relationship.
  """

  use Ash.Policy.FilterCheck

  @impl true
  def describe(_opts), do: "the person is on the meeting's roster in that role"

  @impl true
  def filter(_actor, _context, _opts), do: Ash.Query.Exists.new([:roster_entry], true)
end
