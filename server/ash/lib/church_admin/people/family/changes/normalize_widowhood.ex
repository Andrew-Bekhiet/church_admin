defmodule ChurchAdmin.People.Family.Changes.NormalizeWidowhood do
  @moduledoc """
  A widowed family (`widowed`, `widowedWithoutChildren`) has no marriage
  date; any other family has no deceased spouse name. Applied to the
  family's resulting status whenever the command writes the status, the
  marriage date or the deceased spouse's name.
  """

  use Ash.Resource.Change

  @widowed ["widowed", "widowedWithoutChildren"]
  @fields [:status, :marriage_date, :deceased_spouse_name]

  @impl true
  def change(changeset, _opts, _context) do
    if changeset.action_type == :create or
         Enum.any?(@fields, &Ash.Changeset.changing_attribute?(changeset, &1)),
       do: clear_the_field_the_status_rules_out(changeset),
       else: changeset
  end

  defp clear_the_field_the_status_rules_out(changeset) do
    if Ash.Changeset.get_attribute(changeset, :status) in @widowed,
      do: Ash.Changeset.force_change_attribute(changeset, :marriage_date, nil),
      else: Ash.Changeset.force_change_attribute(changeset, :deceased_spouse_name, nil)
  end
end
