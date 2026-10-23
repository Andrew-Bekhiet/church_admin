defmodule ChurchAdmin.Files.HttpHeader do
  @moduledoc "One HTTP header a client sends with a request, such as the upload of a photo."

  use Ash.Type.NewType,
    subtype_of: :map,
    constraints: [
      fields: [
        name: [type: :string, allow_nil?: false],
        value: [type: :string, allow_nil?: false]
      ]
    ]

  def graphql_type(_constraints), do: :http_header
end
