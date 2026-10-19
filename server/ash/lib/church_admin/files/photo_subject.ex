defmodule ChurchAdmin.Files.PhotoSubject do
  @moduledoc "The kinds of record that carry a photo; each is the first segment of its storage object name."

  use Ash.Type.Enum,
    values: [:persons, :families, :areas, :streets, :services, :classes, :groups, :stores, :users]

  def graphql_type(_constraints), do: :photo_subject
end
