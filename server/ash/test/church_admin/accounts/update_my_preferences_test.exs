defmodule ChurchAdmin.Accounts.UpdateMyPreferencesTest do
  use ChurchAdmin.AccountsCase, async: false

  alias ChurchAdmin.Accounts.{DefaultPreferences, Preferences}

  @existing_order_by %{"persons" => [%{"field" => "name"}], "families" => [%{"field" => "color"}]}
  @existing_second_line %{"persons" => %{"key" => "phone"}}

  setup do
    user = user_with!(["approved"])
    preferences = seed_preferences!(user)

    {:ok, user: user, actor: actor_for(user), preferences: preferences}
  end

  defp seed_preferences!(user, attrs \\ %{}) do
    Ash.Seed.seed!(
      Preferences,
      Map.merge(
        %{
          uid: user.uid,
          order_by_preferences: @existing_order_by,
          second_line_preferences: @existing_second_line
        },
        attrs
      )
    )
  end

  defp update!(actor, params), do: update(actor, params) |> elem(1)

  defp update(actor, params) do
    {:ok, mine} = Accounts.my_preferences(actor: actor)
    Accounts.update_my_preferences(mine, params, actor: actor)
  end

  defp stored(preferences), do: Ash.get!(Preferences, preferences.uid, authorize?: false)

  describe "my_preferences" do
    test "reads the actor's own row, whoever else has one", ctx do
      other = user_with!(["approved"])
      seed_preferences!(other, %{dark_theme: true})

      assert {:ok, %{uid: uid, dark_theme: nil}} = Accounts.my_preferences(actor: ctx.actor)
      assert uid == ctx.user.uid
    end

    test "a user without a row reads nothing", _ctx do
      no_row = user_with!(["approved"])

      assert {:error, error} = Accounts.my_preferences(actor: actor_for(no_row))
      assert codes(error) == ["not_found"]
    end

    test "a user cannot read another user's row", ctx do
      other = user_with!(["approved"])
      other_row = seed_preferences!(other)

      assert {:error, error} = Ash.get(Preferences, other_row.uid, actor: ctx.actor)
      assert codes(error) == ["not_found"]
    end
  end

  describe "scalars" do
    test "sets the given ones and leaves the rest", ctx do
      updated = update!(ctx.actor, %{dark_theme: true, last_home_mode: "sundaySchool"})

      assert %{dark_theme: true, last_home_mode: "sundaySchool", great_feast_theme: true} =
               updated

      assert updated.order_by_preferences == @existing_order_by
      assert updated.second_line_preferences == @existing_second_line
    end

    test "null clears a nullable one", ctx do
      update!(ctx.actor, %{dark_theme: true, last_home_mode: "sundaySchool"})

      updated = update!(ctx.actor, %{dark_theme: nil, last_home_mode: nil})

      assert %{dark_theme: nil, last_home_mode: nil} = updated
    end

    test "the great-feast theme cannot be null", ctx do
      assert {:error, error} = update(ctx.actor, %{great_feast_theme: nil})
      assert codes(error) == ["required"]
      assert stored(ctx.preferences).great_feast_theme
    end

    test "an unknown home mode is invalid", ctx do
      assert {:error, error} = update(ctx.actor, %{last_home_mode: "nowhere"})
      assert codes(error) == ["invalid_attribute"]
    end

    test "advances updated_at", _ctx do
      long_ago = ~U[2020-01-01 00:00:00.000000Z]
      user = user_with!(["approved"])
      seed_preferences!(user, %{updated_at: long_ago})

      update!(actor_for(user), %{dark_theme: true})

      assert DateTime.compare(stored(%{uid: user.uid}).updated_at, long_ago) == :gt
    end
  end

  describe "jsonb patches" do
    test "merge into the stored map key by key", ctx do
      update!(ctx.actor, %{
        order_by_preferences_patch: %{"persons" => [%{"field" => "birthday"}], "areas" => []},
        second_line_preferences_patch: %{"families" => %{"key" => "address"}}
      })

      row = stored(ctx.preferences)

      assert row.order_by_preferences == %{
               "persons" => [%{"field" => "birthday"}],
               "families" => [%{"field" => "color"}],
               "areas" => []
             }

      assert row.second_line_preferences == %{
               "persons" => %{"key" => "phone"},
               "families" => %{"key" => "address"}
             }
    end

    test "merge into what is stored now, not into the record the caller read", ctx do
      {:ok, stale} = Accounts.my_preferences(actor: ctx.actor)
      update!(ctx.actor, %{order_by_preferences_patch: %{"areas" => [%{"field" => "name"}]}})

      Accounts.update_my_preferences!(
        stale,
        %{order_by_preferences_patch: %{"groups" => [%{"field" => "name"}]}},
        actor: ctx.actor
      )

      assert %{"areas" => _, "groups" => _, "persons" => _} =
               stored(ctx.preferences).order_by_preferences
    end

    test "a null value removes its key", ctx do
      update!(ctx.actor, %{
        order_by_preferences_patch: %{"persons" => nil},
        second_line_preferences_patch: %{"persons" => nil, "families" => %{"key" => "address"}}
      })

      row = stored(ctx.preferences)

      assert row.order_by_preferences == Map.delete(@existing_order_by, "persons")
      assert row.second_line_preferences == %{"families" => %{"key" => "address"}}
    end

    test "an empty patch changes nothing and leaves them untouched when omitted", ctx do
      update!(ctx.actor, %{order_by_preferences_patch: %{}})
      update!(ctx.actor, %{dark_theme: false})

      row = stored(ctx.preferences)

      assert row.order_by_preferences == @existing_order_by
      assert row.second_line_preferences == @existing_second_line
    end

    test "a seeded user's default orderings take a patch", ctx do
      defaults = DefaultPreferences.order_by()
      {key, _value} = Enum.at(defaults, 0)
      seeded = user_with!(["approved"])
      seed_preferences!(seeded, %{order_by_preferences: defaults})

      updated =
        update!(actor_for(seeded), %{order_by_preferences_patch: %{key => [%{"field" => "x"}]}})

      assert updated.order_by_preferences == Map.put(defaults, key, [%{"field" => "x"}])
      assert stored(ctx.preferences).order_by_preferences == @existing_order_by
    end
  end

  describe "ownership" do
    test "another user's row cannot be updated", ctx do
      other = user_with!(["approved"])
      other_row = seed_preferences!(other)

      assert {:error, error} =
               Accounts.update_my_preferences(other_row, %{dark_theme: true}, actor: ctx.actor)

      assert codes(error) == ["forbidden"]
      assert stored(other_row).dark_theme == nil
    end

    test "an anonymous caller is refused", ctx do
      assert {:error, error} =
               Accounts.update_my_preferences(ctx.preferences, %{dark_theme: true}, actor: nil)

      assert codes(error) == ["forbidden"]
    end
  end
end
