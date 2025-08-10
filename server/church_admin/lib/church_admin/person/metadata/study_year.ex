defmodule ChurchAdmin.Person.StudyYear do
  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Person,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  graphql do
    type :study_years

    queries do
      list :study_years, :read
      get :study_year, :read
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "study_years"
    schema "public"
  end

  actions do
    defaults [:read]
  end

  attributes do
    attribute :id, :integer, primary_key?: true, allow_nil?: false
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :order, :integer, public?: true
  end
end
