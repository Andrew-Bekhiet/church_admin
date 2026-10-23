defmodule ChurchAdmin.UuidV7PrimaryKeysTest do
  use ChurchAdmin.DataCase, async: true

  alias ChurchAdmin.Factory

  test "every uuid primary key the app generates is a UUIDv7" do
    not_v7 =
      for domain <- Application.fetch_env!(:church_admin, :ash_domains),
          resource <- Ash.Domain.Info.resources(domain),
          key <- Ash.Resource.Info.primary_key(resource),
          attribute = Ash.Resource.Info.attribute(resource, key),
          attribute.type in [Ash.Type.UUID, Ash.Type.UUIDv7],
          attribute.default not in [nil, &Ash.UUIDv7.generate/0],
          do: "#{inspect(resource)}.#{key}"

    assert not_v7 == []
  end

  test "a stored person's id is a version 7 uuid" do
    %{id: id} = Factory.person!(family_id: Factory.family!().id)

    assert <<_::binary-size(14), "7", _::binary>> = id
  end
end
