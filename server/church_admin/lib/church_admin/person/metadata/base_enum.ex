defmodule ChurchAdmin.Person.Metadata.BaseEnum do
  defmacro __using__(opts) do
    plural = Keyword.get(opts, :plural)
    table = Atom.to_string(plural)

    quote do
      use Ash.Resource,
        authorizers: [Ash.Policy.Authorizer],
        domain: ChurchAdmin.Person,
        data_layer: AshPostgres.DataLayer,
        extensions: [AshGraphql.Resource]

      graphql do
        type unquote(plural)

        queries do
          list unquote(plural), :read
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
        attribute :name, :string, primary_key?: true, allow_nil?: false, public?: true
      end
    end
  end
end
