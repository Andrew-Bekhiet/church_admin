defmodule ChurchAdmin.TestDomain.GraphqlSchema do
  @moduledoc false

  use Absinthe.Schema
  use AshGraphql, domains: [ChurchAdmin.TestDomain]

  query do
  end

  mutation do
  end
end
