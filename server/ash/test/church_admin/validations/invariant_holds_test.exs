defmodule ChurchAdmin.Validations.InvariantHoldsTest do
  use ChurchAdmin.DataCase, async: true

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Errors.DomainError
  alias ChurchAdmin.TestDomain.GuardedThing
  alias ChurchAdmin.TestDomain.WriteBlockFixtures

  setup do
    WriteBlockFixtures.create_tables!()
    :ok
  end

  defp create_guarded(name) do
    GuardedThing
    |> Ash.Changeset.for_create(:create, %{name: name}, actor: Actor.system())
    |> Ash.create()
  end

  defp domain_errors(%{errors: errors}), do: Enum.filter(errors, &is_struct(&1, DomainError))

  test "a write that keeps the invariant succeeds" do
    assert {:ok, thing} = create_guarded("fine")
    assert GuardedThing |> Ash.read!() |> Enum.map(& &1.id) == [thing.id]
  end

  test "a write that breaks the invariant fails with the invariant's code and rolls back" do
    assert {:error, error} = create_guarded("broken")

    assert [%DomainError{code: code, fields: [:name]}] = domain_errors(error)
    assert code == Codes.validation_invalid()
    assert Ash.read!(GuardedThing) == []
  end

  test "an update is checked against the state it wrote" do
    {:ok, thing} = create_guarded("fine")

    assert {:error, error} =
             thing
             |> Ash.Changeset.for_update(:update, %{name: "broken"}, actor: Actor.system())
             |> Ash.update()

    assert [%DomainError{}] = domain_errors(error)
    assert [%{name: "fine"}] = Ash.read!(GuardedThing)
  end

  test "a bulk create that breaks the invariant for one record leaves no rows" do
    result =
      Ash.bulk_create([%{name: "fine"}, %{name: "broken"}], GuardedThing, :create,
        actor: Actor.system(),
        return_errors?: true
      )

    assert result.status == :error
    assert [%DomainError{}] = Enum.flat_map(result.errors, &domain_errors/1)
    assert Ash.read!(GuardedThing) == []
  end

  for strategy <- [:atomic, :stream] do
    test "a bulk update with the #{strategy} strategy is checked and rolled back" do
      {:ok, _thing} = create_guarded("fine")

      result =
        Ash.bulk_update(GuardedThing, :update, %{name: "broken"},
          actor: Actor.system(),
          strategy: unquote(strategy),
          return_errors?: true
        )

      assert result.status == :error
      assert [%{name: "fine"}] = Ash.read!(GuardedThing)
    end
  end
end
