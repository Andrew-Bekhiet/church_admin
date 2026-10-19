defmodule ChurchAdmin.Activity.HistoryCommandsTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Activity
  alias ChurchAdmin.Activity.{ActivityDay, Call, Confession, Edit, Kodas, Visit}
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Errors.{Codes, DomainError}

  @day ~D[2026-03-01]
  @time ~U[2026-03-01 09:30:00.000000Z]

  defp rows(resource, field, value) do
    resource
    |> Ash.Query.filter(^Ash.Expr.ref(field) == ^value)
    |> Ash.read!(authorize?: false, page: false)
  end

  setup %{world: world} do
    known = Edit |> Ash.read!(authorize?: false, page: false) |> MapSet.new(& &1.audit_id)
    {:ok, world: Map.put(world, :known_edits, known)}
  end

  defp edits(world, record_id) do
    Edit
    |> rows(:record_id, record_id)
    |> Enum.reject(&MapSet.member?(world.known_edits, &1.audit_id))
  end

  defp uid(world, kind), do: Map.fetch!(world.users, kind).uid

  describe "record_confession" do
    test "writes the day and the record, stamps the actor, and logs a person edit", %{
      world: world
    } do
      person = world.records.m1

      assert {:ok, confession} =
               Activity.record_confession(%{person_id: person.id, day: @day},
                 actor: actor(world, :read_write)
               )

      assert confession.person_id == person.id
      assert confession.day_id == @day
      assert confession.recorded_by == uid(world, :read_write)
      assert [%ActivityDay{day: @day}] = rows(ActivityDay, :day, @day)

      assert [edit] = edits(world, person.id)
      assert edit.table == "persons"
      assert edit.recorded_by == uid(world, :read_write)
      assert edit.user_role == "user"
    end

    test "repeating the same day keeps the one record and logs no second edit", %{world: world} do
      person = world.records.m1
      actor = actor(world, :read_write)

      assert {:ok, first} =
               Activity.record_confession(%{person_id: person.id, day: @day}, actor: actor)

      assert {:ok, again} =
               Activity.record_confession(%{person_id: person.id, day: @day},
                 actor: actor(world, :service_open_edit)
               )

      assert again.id == first.id
      assert again.recorded_by == uid(world, :read_write)
      assert [_one] = rows(Confession, :person_id, person.id)
      assert [_one] = edits(world, person.id)
    end

    test "another day adds a record and keeps the day rows distinct", %{world: world} do
      person = world.records.m1
      actor = actor(world, :read_write)

      for day <- [@day, Date.add(@day, 7)] do
        assert {:ok, _} =
                 Activity.record_confession(%{person_id: person.id, day: day}, actor: actor)
      end

      assert [_, _] = rows(Confession, :person_id, person.id)
      assert [_, _] = edits(world, person.id)
    end

    test "is open to an editor of the person's service and refused to a reader", %{world: world} do
      person = world.records.m1

      assert {:ok, _} =
               Activity.record_confession(%{person_id: person.id, day: @day},
                 actor: actor(world, :service_open_edit)
               )

      for kind <- [:service_open, :approved_plain, :unapproved, :anonymous] do
        assert {:error, %Ash.Error.Forbidden{}} =
                 Activity.record_confession(
                   %{person_id: person.id, day: Date.add(@day, 1)},
                   actor: actor(world, kind)
                 ),
               "#{kind} must not record a confession"
      end

      assert [_one] = rows(Confession, :person_id, person.id)
      assert [_one] = edits(world, person.id)
      assert [] = rows(ActivityDay, :day, Date.add(@day, 1))
    end

    test "is refused for a person outside the editor's scope", %{world: world} do
      assert {:error, %Ash.Error.Forbidden{}} =
               Activity.record_confession(%{person_id: world.records.relative.id, day: @day},
                 actor: actor(world, :service_open_edit)
               )
    end

    test "the system actor must name who recorded it", %{world: world} do
      assert {:error, %Ash.Error.Invalid{errors: errors}} =
               Activity.record_confession(%{person_id: world.records.m1.id, day: @day},
                 actor: Actor.system()
               )

      assert Enum.any?(errors, &match?(%{field: :recorded_by}, &1))
    end
  end

  describe "record_kodas" do
    test "writes the day and the record, stamps the actor, and logs a person edit", %{
      world: world
    } do
      person = world.records.m1

      assert {:ok, kodas} =
               Activity.record_kodas(%{person_id: person.id, day: @day},
                 actor: actor(world, :read_write)
               )

      assert kodas.recorded_by == uid(world, :read_write)
      assert [%ActivityDay{day: @day}] = rows(ActivityDay, :day, @day)
      assert [%{table: "persons", user_role: "user"} = edit] = edits(world, person.id)
      assert edit.recorded_by == uid(world, :read_write)
    end

    test "repeating the same day keeps the one record and logs no second edit", %{world: world} do
      person = world.records.m1
      actor = actor(world, :read_write)

      assert {:ok, first} =
               Activity.record_kodas(%{person_id: person.id, day: @day}, actor: actor)

      assert {:ok, again} =
               Activity.record_kodas(%{person_id: person.id, day: @day}, actor: actor)

      assert again.id == first.id
      assert [_one] = rows(Kodas, :person_id, person.id)
      assert [_one] = edits(world, person.id)
    end

    test "a confession and a kodas on one day are independent records", %{world: world} do
      person = world.records.m1
      actor = actor(world, :read_write)

      assert {:ok, _} =
               Activity.record_confession(%{person_id: person.id, day: @day}, actor: actor)

      assert {:ok, _} = Activity.record_kodas(%{person_id: person.id, day: @day}, actor: actor)

      assert [_one] = rows(Confession, :person_id, person.id)
      assert [_one] = rows(Kodas, :person_id, person.id)
      assert [_one] = rows(ActivityDay, :day, @day)
      assert [_, _] = edits(world, person.id)
    end

    test "is refused to a reader and to anonymous", %{world: world} do
      for kind <- [:service_open, :anonymous] do
        assert {:error, %Ash.Error.Forbidden{}} =
                 Activity.record_kodas(%{person_id: world.records.m1.id, day: @day},
                   actor: actor(world, kind)
                 )
      end

      assert [] = rows(Kodas, :person_id, world.records.m1.id)
    end
  end

  describe "delete_kodas" do
    setup %{world: world} do
      {:ok, kodas} =
        Activity.record_kodas(%{person_id: world.records.m1.id, day: @day},
          actor: actor(world, :read_write)
        )

      {:ok, kodas: kodas}
    end

    test "removes the record and logs no edit", %{world: world, kodas: kodas} do
      assert {:ok, deleted} =
               Activity.delete_kodas(kodas.id,
                 actor: actor(world, :service_open_edit),
                 return_destroyed?: true
               )

      assert deleted.id == kodas.id
      assert [] = rows(Kodas, :person_id, world.records.m1.id)
      assert [_only_the_recording] = edits(world, world.records.m1.id)
    end

    test "is refused to a reader", %{world: world, kodas: kodas} do
      assert {:error, %Ash.Error.Forbidden{}} =
               Activity.delete_kodas(kodas.id, actor: actor(world, :service_open))

      assert [_one] = rows(Kodas, :person_id, world.records.m1.id)
    end
  end

  describe "record_call" do
    test "stamps the actor and role, and logs a person edit", %{world: world} do
      person = world.records.m1

      assert {:ok, call} =
               Activity.record_call(%{person_id: person.id, time: @time},
                 actor: actor(world, :service_open_edit)
               )

      assert call.time == @time
      assert call.recorded_by == uid(world, :service_open_edit)
      assert call.user_role == "user"

      assert [%{table: "persons", user_role: "user"} = edit] = edits(world, person.id)
      assert edit.recorded_by == uid(world, :service_open_edit)
    end

    test "every call is recorded, none is merged", %{world: world} do
      person = world.records.m1
      actor = actor(world, :read_write)

      for minutes <- [0, 5] do
        assert {:ok, _} =
                 Activity.record_call(
                   %{person_id: person.id, time: DateTime.add(@time, minutes, :minute)},
                   actor: actor
                 )
      end

      assert [_, _] = rows(Call, :person_id, person.id)
      assert [_, _] = edits(world, person.id)
    end

    test "the system actor writes as admin without a recorder", %{world: world} do
      assert {:ok, call} =
               Activity.record_call(%{person_id: world.records.m1.id, time: @time},
                 actor: Actor.system()
               )

      assert call.recorded_by == nil
      assert call.user_role == "admin"
      assert [%{recorded_by: nil, user_role: "admin"}] = edits(world, world.records.m1.id)
    end

    test "is refused to a reader, an unapproved user and anonymous", %{world: world} do
      for kind <- [:service_open, :unapproved, :anonymous] do
        assert {:error, %Ash.Error.Forbidden{}} =
                 Activity.record_call(%{person_id: world.records.m1.id, time: @time},
                   actor: actor(world, kind)
                 )
      end

      assert [] = rows(Call, :person_id, world.records.m1.id)
    end
  end

  describe "record_visit" do
    test "records a visit to each kind of subject, stamped with the actor", %{world: world} do
      subjects = [
        persons: world.records.m1.id,
        families: world.records.f_area.id,
        streets: world.records.st1.id,
        areas: world.records.a1.id
      ]

      for {subject, record_id} <- subjects do
        assert {:ok, visit} =
                 Activity.record_visit(
                   %{subject: subject, record_id: record_id, time: @time},
                   actor: actor(world, :read_write)
                 )

        assert visit.table == Atom.to_string(subject)
        assert visit.record_id == record_id
        assert visit.time == @time
        refute visit.is_father_visit
        assert visit.recorded_by == uid(world, :read_write)
      end

      assert length(rows(Visit, :time, @time)) == length(subjects)
    end

    test "a visit logs no edit", %{world: world} do
      assert {:ok, _} =
               Activity.record_visit(
                 %{subject: :persons, record_id: world.records.m1.id, time: @time},
                 actor: actor(world, :read_write)
               )

      assert [] = edits(world, world.records.m1.id)
    end

    test "a father visit is a visit to a family", %{world: world} do
      family = world.records.f_area

      assert {:ok, visit} =
               Activity.record_visit(
                 %{subject: :families, record_id: family.id, time: @time, is_father_visit: true},
                 actor: actor(world, :read_write)
               )

      assert visit.is_father_visit
    end

    test "a father visit to anything else is invalid", %{world: world} do
      assert {:error, %Ash.Error.Invalid{errors: errors}} =
               Activity.record_visit(
                 %{
                   subject: :persons,
                   record_id: world.records.m1.id,
                   time: @time,
                   is_father_visit: true
                 },
                 actor: actor(world, :read_write)
               )

      assert [%DomainError{code: code, fields: [:is_father_visit]}] = errors
      assert code == Codes.validation_invalid()
    end

    test "is open to whoever may edit the subject and refused to anyone else", %{world: world} do
      cases = [
        {:area_edit, :areas, world.records.a1.id, :ok},
        {:area_edit, :streets, world.records.st1.id, :ok},
        {:area_edit, :families, world.records.f_area.id, :ok},
        {:area_edit, :areas, world.records.a2.id, :forbidden},
        {:area_edit, :persons, world.records.m1.id, :forbidden},
        {:area_read, :areas, world.records.a1.id, :forbidden},
        {:service_open_edit, :persons, world.records.m1.id, :ok},
        {:service_open, :persons, world.records.m1.id, :forbidden},
        {:approved_plain, :persons, world.records.self.id, :ok},
        {:approved_plain, :persons, world.records.m1.id, :forbidden},
        {:unapproved, :persons, world.records.m1.id, :forbidden},
        {:anonymous, :persons, world.records.m1.id, :forbidden}
      ]

      for {kind, subject, record_id, expected} <- cases do
        result =
          Activity.record_visit(%{subject: subject, record_id: record_id, time: @time},
            actor: actor(world, kind)
          )

        case {expected, result} do
          {:ok, {:ok, _visit}} -> :ok
          {:forbidden, {:error, %Ash.Error.Forbidden{}}} -> :ok
          other -> flunk("#{kind} on #{subject}: expected #{expected}, got #{inspect(other)}")
        end
      end
    end

    test "the system actor visits without a recorder", %{world: world} do
      assert {:ok, %{recorded_by: nil}} =
               Activity.record_visit(
                 %{subject: :areas, record_id: world.records.a1.id, time: @time},
                 actor: Actor.system()
               )
    end
  end

  describe "realtime" do
    test "the rows the commands write invalidate the person, family and area they feed", %{
      world: world
    } do
      type_map = ChurchAdmin.Realtime.TypeMap.build()
      actor = actor(world, :read_write)
      person = world.records.m1.id
      area = world.records.a1.id

      {:ok, confession} =
        Activity.record_confession(%{person_id: person, day: @day}, actor: actor)

      {:ok, call} = Activity.record_call(%{person_id: person, time: @time}, actor: actor)

      {:ok, visit} =
        Activity.record_visit(%{subject: :areas, record_id: area, time: @time}, actor: actor)

      invalidated = fn relation, record ->
        row =
          record |> Map.from_struct() |> Map.new(fn {key, value} -> {to_string(key), value} end)

        ChurchAdmin.Realtime.TypeMap.changes_for(type_map, %ChurchAdmin.Realtime.RowChange{
          relation: relation,
          op: :insert,
          old: nil,
          new: row
        })
      end

      assert %{type: "Person", id: person, op: "update"} in invalidated.(
               {"history", "confession_history"},
               confession
             )

      assert %{type: "Person", id: person, op: "update"} in invalidated.(
               {"history", "call_history"},
               call
             )

      assert %{type: "Area", id: area, op: "update"} in invalidated.(
               {"history", "visit_history"},
               visit
             )
    end
  end
end
