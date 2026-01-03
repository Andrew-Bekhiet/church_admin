defmodule ChurchAdmin.Person.Metadata.BaseResource do
  @moduledoc """
  Base module for metadata resources.

  Usage:
  	use ChurchAdmin.Person.Metadata.BaseResource, table: "<table_name>", singular: "<singular_name>", plural: "<plural_name>"

  It configures:
  - Ash.Resource with ChurchAdmin.Person domain and AshPostgres data layer
  - AshGraphql.Resource extension (so GraphQL DSL is available)
  - Postgres repo and schema set to "metadata" with the provided table name
  """

  defmacro __using__(opts) do
    singular = Keyword.get(opts, :singular)
    plural = Keyword.get(opts, :plural)
    table = Atom.to_string(plural)

    quote do
      use Ash.Resource,
        domain: ChurchAdmin.Person,
        data_layer: AshPostgres.DataLayer,
        extensions: [AshGraphql.Resource]

      graphql do
        type unquote(plural)

        queries do
          list unquote(plural), :read
          get unquote(singular), :read
        end
      end

      actions do
        defaults [:read]
      end

      postgres do
        repo ChurchAdmin.Repo
        schema "metadata"
        table unquote(table)
      end

      attributes do
        uuid_v7_primary_key :id
        attribute :name, :string, allow_nil?: false, public?: true
      end
    end
  end
end
