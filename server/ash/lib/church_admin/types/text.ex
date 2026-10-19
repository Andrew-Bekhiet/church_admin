defmodule ChurchAdmin.Types.Text do
  @moduledoc "Postgres text kept exactly as stored: Ash's string defaults would trim it and turn \"\" into nil."
  use Ash.Type.NewType,
    subtype_of: :string,
    constraints: [allow_empty?: true, trim?: false]
end
