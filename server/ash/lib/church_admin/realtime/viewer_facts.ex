defmodule ChurchAdmin.Realtime.ViewerFacts do
  @moduledoc """
  Whether a row change can change what `ChurchAdmin.Authz.ActorLoader` reads
  about a connected viewer beyond the permission tables, which `TypeMap`
  already announces: a person row gives its linked user `person_id` and
  `family_id`. A row with no uid and no old row cannot be told from any
  other unlinked person, so unlinking a person goes unnoticed here.
  """

  alias ChurchAdmin.Realtime.RowChange

  @persons {"public", "persons"}
  @columns_read_for_viewers MapSet.new(~w(uid family_id deleted_at))

  @spec touched?(RowChange.t()) :: boolean()
  def touched?(%RowChange{relation: @persons, op: :truncate}), do: true

  def touched?(%RowChange{relation: @persons, op: :delete, old: old}),
    do: is_nil(old) or old["uid"] != nil or not Map.has_key?(old, "uid")

  def touched?(%RowChange{relation: @persons, new: %{"uid" => uid}} = change)
      when is_binary(uid) do
    case RowChange.changed_columns(change) do
      :all -> true
      columns -> not MapSet.disjoint?(columns, @columns_read_for_viewers)
    end
  end

  def touched?(%RowChange{}), do: false
end
