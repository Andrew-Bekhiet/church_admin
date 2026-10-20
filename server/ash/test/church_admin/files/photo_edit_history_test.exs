defmodule ChurchAdmin.Files.PhotoEditHistoryTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Activity.Edit
  alias ChurchAdmin.Files.Photos.{Record, Target}

  @photo_updated_at ~U[2026-10-19 08:30:15.123456Z]

  # The Firebase function wrote photo fields as the Hasura admin, so the
  # edit_history trigger recorded one edit with role admin and no recorder.
  @kinds [
    {:areas, ChurchAdmin.Places.Area, :a1, "areas"},
    {:streets, ChurchAdmin.Places.Street, :st1, "streets"},
    {:stores, ChurchAdmin.Places.Store, :store1, "stores"},
    {:services, ChurchAdmin.Organization.Service, :s1, "services"},
    {:classes, ChurchAdmin.Organization.Class, :c_y1, "classes"},
    {:groups, ChurchAdmin.Organization.Group, :g1, "groups"},
    {:families, ChurchAdmin.People.Family, :f_svc, "families"},
    {:persons, ChurchAdmin.People.Person, :m1, "persons"}
  ]

  defp edits_of(table, record_id) do
    Edit
    |> Ash.Query.filter(table == ^table and record_id == ^record_id)
    |> Ash.read!(authorize?: false, page: false)
  end

  defp edits_written_by_recording_photo(subject, resource, table, record_id) do
    before_ids = table |> edits_of(record_id) |> MapSet.new(& &1.audit_id)
    target = Target.new(subject, record_id, resource, record_id)
    assert :ok = Record.record(target, @photo_updated_at, "blurhash")

    table |> edits_of(record_id) |> Enum.reject(&MapSet.member?(before_ids, &1.audit_id))
  end

  for {subject, resource, name, table} <- @kinds do
    test "recording a #{subject} photo writes one admin edit without a recorder", %{world: world} do
      record_id = Map.fetch!(world.records, unquote(name)).id

      new_edits =
        edits_written_by_recording_photo(
          unquote(subject),
          unquote(resource),
          unquote(table),
          record_id
        )

      assert [%{user_role: "admin", recorded_by: nil}] = new_edits
    end
  end

  test "recording a linked person's photo writes no edit for the user row", %{world: world} do
    person = Map.fetch!(world.records, :self)

    before_ids = "users" |> edits_of(person.uid) |> MapSet.new(& &1.audit_id)
    target = Target.new(:persons, person.id, ChurchAdmin.People.Person, person.id)
    assert :ok = Record.record(target, @photo_updated_at, "blurhash")

    assert "users"
           |> edits_of(person.uid)
           |> Enum.reject(&MapSet.member?(before_ids, &1.audit_id)) ==
             []
  end
end
