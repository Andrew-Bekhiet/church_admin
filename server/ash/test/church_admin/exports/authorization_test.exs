defmodule ChurchAdmin.Exports.AuthorizationTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Exports.{Authorization, Selection, Workbook}
  alias ChurchAdmin.Factory
  alias ChurchAdmin.XlsxReader

  defp selection(world, names_by_type) do
    ids = fn type -> for name <- Map.get(names_by_type, type, []), do: world.records[name].id end

    %Selection{
      areas_ids: ids.(:areas),
      services_ids: ids.(:services),
      classes_ids: ids.(:classes),
      groups_ids: ids.(:groups)
    }
  end

  defp authorize(world, kind, names_by_type),
    do: Authorization.authorize(actor(world, kind), selection(world, names_by_type))

  defp forbidden?(result),
    do: match?({:error, %DomainError{code: "export/forbidden"}}, result)

  # {actor kind, requested records, whether the whole request is exportable}, from
  # authz-and-reads §2.1: `allow_export` on `any`, area, service, class and group rows.
  @cases [
    {:export_all, %{services: [:s1], areas: [:a1, :a2], groups: [:g1], classes: [:c_y1]}, true},
    {:read_all, %{services: [:s1]}, false},
    {:service_open, %{services: [:s1]}, false},
    {:service_open_edit, %{services: [:s1]}, true},
    {:service_open_edit, %{classes: [:c_y1, :c_y12_f]}, true},
    {:service_open_edit, %{services: [:s1], groups: [:g1]}, false},
    {:service_year_edit, %{services: [:s1]}, false},
    {:area_edit, %{areas: [:a1]}, true},
    {:area_edit, %{areas: [:a1, :a2]}, false},
    {:area_edit, %{areas: [:a1], services: [:s1]}, false},
    {:group_edit, %{groups: [:g1]}, false},
    {:unapproved_with_grants, %{services: [:s1]}, false},
    {:anonymous, %{services: [:s1]}, false}
  ]

  for {kind, names, exportable?} <- @cases do
    test "#{kind} #{if exportable?, do: "may", else: "may not"} export #{inspect(names)}",
         %{world: world} do
      result = authorize(world, unquote(kind), unquote(Macro.escape(names)))

      if unquote(exportable?) do
        assert result == :ok
      else
        assert forbidden?(result)
      end
    end
  end

  test "a single id without the right fails the whole request", %{world: world} do
    result = authorize(world, :area_edit, %{areas: [:a1, :a2]})

    assert {:error, %DomainError{code: code}} = result
    assert code == Codes.export_forbidden()
  end

  test "an export-all user may export an id that does not exist", %{world: world} do
    selection = %Selection{areas_ids: [Ash.UUID.generate()]}

    assert Authorization.authorize(actor(world, :export_all), selection) == :ok
  end

  test "nothing selected is invalid, whoever asks", %{world: world} do
    for kind <- [:export_all, :read_all, :anonymous] do
      assert {:error, %DomainError{code: "invalid"}} =
               Workbook.build(actor(world, kind), %Selection{})
    end
  end

  describe "rows of an export" do
    defp person_names(xlsx),
      do: xlsx |> XlsxReader.sheet("persons") |> XlsxReader.records() |> Enum.map(& &1["الاسم"])

    defp user_with_service_export!(world, grant_flags) do
      user = Factory.user!()
      Factory.permissions!(user, ["approved"])
      Factory.grant!(user, :service, world.records.s1.id, [{:export?, true} | grant_flags])
      ActorLoader.load(user.uid)
    end

    test "an export-scoped user gets only the people their read scope shows", %{world: world} do
      %{m1: m1, f2: f2, deleted: deleted} = world.records
      year_one = user_with_service_export!(world, study_year: 1)
      everyone = user_with_service_export!(world, [])
      selection = %Selection{services_ids: [world.records.s1.id]}

      assert {:ok, restricted} = Workbook.build(year_one, selection)
      assert {:ok, whole_service} = Workbook.build(everyone, selection)

      assert person_names(restricted) == [m1.name]
      assert Enum.sort(person_names(whole_service)) == Enum.sort([m1.name, f2.name])
      refute deleted.name in person_names(whole_service)
    end
  end
end
