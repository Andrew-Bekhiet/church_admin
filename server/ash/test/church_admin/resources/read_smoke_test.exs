defmodule ChurchAdmin.Resources.ReadSmokeTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.ResourceCatalog

  for resource <- ResourceCatalog.resources() do
    test "#{inspect(resource)} reads against the baseline schema" do
      assert is_list(
               unquote(resource)
               |> Ash.Query.limit(1)
               |> Ash.read!(authorize?: false)
             )
    end
  end
end
