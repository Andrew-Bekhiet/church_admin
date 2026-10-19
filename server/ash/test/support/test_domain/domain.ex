defmodule ChurchAdmin.TestDomain do
  @moduledoc """
  Test-only domain for platform tests. It is not in `:ash_domains`, so it never
  reaches the real GraphQL schema or its SDL file.
  """

  use ChurchAdmin.Domain, validate_config_inclusion?: false

  resources do
    resource ChurchAdmin.TestDomain.EditedThing
    resource ChurchAdmin.TestDomain.ErrorProbe
    resource ChurchAdmin.TestDomain.HasuraSessionProbe
    resource ChurchAdmin.TestDomain.StampedNote
    resource ChurchAdmin.TestDomain.ThingMembership
  end
end
