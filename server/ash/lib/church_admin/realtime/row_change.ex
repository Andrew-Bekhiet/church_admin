defmodule ChurchAdmin.Realtime.RowChange do
  @moduledoc """
  One replicated row change. Rows map column names to their text values;
  `old` is nil for inserts and for updates of tables that replicate only
  their key, and both rows are nil for a truncate. `old_complete?` tells a
  full old row from one that holds only the key, whose other columns are nil.
  """

  @enforce_keys [:relation, :op]
  defstruct [:relation, :op, :old, :new, old_complete?: false]

  @type row :: %{String.t() => String.t() | nil | :unchanged_toast}
  @type t :: %__MODULE__{
          relation: {schema :: String.t(), table :: String.t()},
          op: :insert | :update | :delete | :truncate,
          old: row() | nil,
          new: row() | nil,
          old_complete?: boolean()
        }

  @doc "The columns a change touched; `:all` when the old row cannot tell."
  @spec changed_columns(t()) :: MapSet.t(String.t()) | :all
  def changed_columns(%__MODULE__{op: :update, old_complete?: true, old: %{} = old, new: new}) do
    for {column, value} <- new,
        value != :unchanged_toast,
        Map.get(old, column) != value,
        into: MapSet.new(),
        do: column
  end

  def changed_columns(%__MODULE__{}), do: :all
end
