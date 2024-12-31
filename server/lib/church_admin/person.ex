defmodule ChurchAdmin.Person do
  use Ash.Domain, extensions: [AshJsonApi.Domain]

  resources do
    resource ChurchAdmin.Person.Person
  end
end
