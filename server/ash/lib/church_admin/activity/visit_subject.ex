defmodule ChurchAdmin.Activity.VisitSubject do
  @moduledoc "The kinds of record a visit can be recorded against; the stored `table` is the plural name."
  use Ash.Type.Enum, values: [:persons, :families, :streets, :areas]
  use AshGraphql.Type

  @impl AshGraphql.Type
  def graphql_type(_), do: :visit_subject
end
