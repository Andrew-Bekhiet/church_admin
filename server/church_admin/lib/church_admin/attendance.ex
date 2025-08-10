defmodule ChurchAdmin.Attendance do
  alias ChurchAdmin.Attendance.{Service, Class, Group, PersonService, PersonGroup}

  use Ash.Domain,
    extensions: [AshGraphql.Domain]

  @moduledoc """
  Attendance context: services, classes, groups, and history (attendance, visits, edits).
  """

  graphql do
  end

  resources do
    resource Service
    resource Class
    resource Group
    resource PersonService
    resource PersonGroup
  end
end
