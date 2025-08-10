defmodule ChurchAdmin.Person.Father do
  use ChurchAdmin.Person.Metadata.BaseResource, singular: :father, plural: :fathers

  postgres do
    references do
      reference :church, on_update: :update, on_delete: :nilify
    end
  end

  relationships do
    belongs_to :church, ChurchAdmin.Person.Church, public?: true
  end
end
