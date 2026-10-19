defmodule ChurchAdmin.Changes.AtomicAfterActionGuardTest do
  @moduledoc """
  Ash 3.36.1 commits a single atomic update whose `after_action` hook fails
  (see `ChurchAdmin.Changes.AfterActionFailure`). Only changes that implement
  `atomic/3` reach that path, so every such change in `lib/` that adds an
  `after_action` hook must fail it through `AfterActionFailure.roll_back/2`.
  """

  use ExUnit.Case, async: true

  @lib_dir Path.expand("../../../lib", __DIR__)

  defp atomic_change_with_unguarded_after_action?(module) do
    behaviours =
      module.module_info(:attributes) |> Keyword.get_values(:behaviour) |> List.flatten()

    source = File.read!(to_string(module.__info__(:compile)[:source]))

    Ash.Resource.Change in behaviours and module.atomic?() and source =~ "after_action" and
      not (source =~ "AfterActionFailure.roll_back")
  end

  defp app_modules_under_lib do
    Application.spec(:church_admin, :modules)
    |> Enum.filter(&Code.ensure_loaded?/1)
    |> Enum.filter(&String.starts_with?(to_string(&1.__info__(:compile)[:source]), @lib_dir))
  end

  test "every atomic change in lib/ rolls back a failed after_action hook" do
    modules = app_modules_under_lib()

    assert ChurchAdmin.History.Changes.RecordEdit in modules
    assert Enum.filter(modules, &atomic_change_with_unguarded_after_action?/1) == []
  end

  test "the guard rejects an atomic change whose failing hook does not roll back" do
    assert atomic_change_with_unguarded_after_action?(ChurchAdmin.TestDomain.UnguardedAfterAction)
  end

  test "the guard accepts the write building blocks" do
    refute atomic_change_with_unguarded_after_action?(ChurchAdmin.History.Changes.RecordEdit)
    refute atomic_change_with_unguarded_after_action?(ChurchAdmin.Validations.InvariantHolds)
  end
end
