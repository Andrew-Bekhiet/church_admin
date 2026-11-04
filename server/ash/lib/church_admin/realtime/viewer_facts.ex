defmodule ChurchAdmin.Realtime.ViewerFacts do
  @moduledoc """
  Whether a row change can change what `ChurchAdmin.Authz.ActorLoader` reads
  about a connected viewer beyond the permission tables, which `TypeMap`
  already announces: a person row gives its linked user `person_id` and
  `family_id`. `persons` replicates whole old rows, so an unlink still names
  the user it took the person from, and a person nobody was linked to is
  ignored.
  """

  alias ChurchAdmin.Realtime.RowChange

  @persons {"public", "persons"}
  @columns_read_for_viewers MapSet.new(~w(uid family_id deleted_at))

  @spec touched?(RowChange.t()) :: boolean()
  def touched?(%RowChange{relation: @persons, op: :truncate}), do: true

  def touched?(%RowChange{relation: @persons, op: :delete, old: old}) do
    old_row_hides_the_uid? = is_nil(old) or not Map.has_key?(old, "uid")

    old_row_hides_the_uid? or linked?(old)
  end

  def touched?(%RowChange{relation: @persons, new: %{} = new} = change) do
    if linked?(new) or linked?(change.old) do
      case RowChange.changed_columns(change) do
        :all -> true
        columns -> not MapSet.disjoint?(columns, @columns_read_for_viewers)
      end
    else
      false
    end
  end

  def touched?(%RowChange{}), do: false

  defp linked?(%{"uid" => uid}), do: is_binary(uid)
  defp linked?(_no_row_or_a_key_only_one), do: false
end
