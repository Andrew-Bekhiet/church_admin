defmodule ChurchAdmin.Realtime.RowChange do
  @moduledoc """
  One replicated row change. Rows map column names to their text values;
  `old` is nil for inserts and for updates of tables that replicate only
  their key, and both rows are nil for a truncate.
  """

  @enforce_keys [:relation, :op]
  defstruct [:relation, :op, :old, :new]

  @type row :: %{String.t() => String.t() | nil | :unchanged_toast}
  @type t :: %__MODULE__{
          relation: {schema :: String.t(), table :: String.t()},
          op: :insert | :update | :delete | :truncate,
          old: row() | nil,
          new: row() | nil
        }
end
