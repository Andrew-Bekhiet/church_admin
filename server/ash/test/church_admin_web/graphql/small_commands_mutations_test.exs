defmodule ChurchAdminWeb.Graphql.SmallCommandsMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Accounts.Preferences
  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens}
  alias ChurchAdmin.DataQuality.Override

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp run(conn, document, user, variables) do
    conn =
      if user do
        claims = FirebaseTokens.valid_claims(Factory.firebase_account!(user))
        put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      else
        conn
      end

    conn |> post("/gql", %{"query" => document, "variables" => variables}) |> json_response(200)
  end

  describe "updateMyPreferences" do
    @document """
    mutation($input: UpdateMyPreferencesInput!) {
      updateMyPreferences(input: $input) {
        result { uid darkTheme greatFeastTheme lastHomeMode orderByPreferences secondLinePreferences }
      }
    }
    """

    setup %{world: world} do
      user = world.users.approved_plain

      Ash.Seed.seed!(Preferences, %{
        uid: user.uid,
        order_by_preferences: %{"persons" => [1], "families" => [2]},
        second_line_preferences: %{"persons" => %{"key" => "phone"}}
      })

      {:ok, user: user}
    end

    test "takes scalars and patches, and answers with the merged row", %{conn: conn, user: user} do
      input = %{
        "darkTheme" => true,
        "lastHomeMode" => "churchData",
        "orderByPreferencesPatch" => %{"persons" => [3], "areas" => [4]},
        "secondLinePreferencesPatch" => %{"persons" => nil}
      }

      assert %{"data" => %{"updateMyPreferences" => %{"result" => result}}} =
               run(conn, @document, user, %{"input" => input})

      assert result == %{
               "uid" => user.uid,
               "darkTheme" => true,
               "greatFeastTheme" => true,
               "lastHomeMode" => "churchData",
               "orderByPreferences" => %{"persons" => [3], "families" => [2], "areas" => [4]},
               "secondLinePreferences" => %{}
             }
    end

    test "has no uid to name: only the signed-in user's row is reachable", %{
      conn: conn,
      world: world
    } do
      other = world.users.read_all

      assert %{"errors" => [%{"extensions" => %{"code" => "not_found"}}]} =
               run(conn, @document, other, %{"input" => %{"darkTheme" => true}})
    end

    test "an anonymous call is refused", %{conn: conn} do
      assert %{"errors" => [%{"extensions" => %{"code" => "forbidden"}}]} =
               run(conn, @document, nil, %{"input" => %{"darkTheme" => true}})
    end
  end

  describe "User.preferences" do
    @user_preferences """
    query($uid: ID!) {
      user(id: $uid) { uid preferences { uid darkTheme } }
    }
    """

    setup %{world: world} do
      user = world.users.approved_plain
      Ash.Seed.seed!(Preferences, %{uid: user.uid, dark_theme: true})
      {:ok, user: user}
    end

    test "a user reads their own preferences through their user", %{conn: conn, user: user} do
      assert %{"data" => %{"user" => %{"preferences" => preferences}}} =
               run(conn, @user_preferences, user, %{"uid" => user.uid})

      assert preferences == %{"uid" => user.uid, "darkTheme" => true}
    end

    test "another user's preferences stay hidden", %{conn: conn, user: user, world: world} do
      assert %{"data" => %{"user" => %{"preferences" => nil}}} =
               run(conn, @user_preferences, world.users.read_all, %{"uid" => user.uid})
    end
  end

  describe "registerFcmToken" do
    @document """
    mutation($input: RegisterFcmTokenInput!) {
      registerFcmToken(input: $input) { result { uid token createdAt } }
    }
    """

    test "stores the token for the signed-in user, idempotently", %{conn: conn, world: world} do
      user = world.users.unapproved
      variables = %{"input" => %{"token" => "device-1"}}

      assert %{"data" => %{"registerFcmToken" => %{"result" => first}}} =
               run(conn, @document, user, variables)

      assert %{"data" => %{"registerFcmToken" => %{"result" => ^first}}} =
               run(conn, @document, user, variables)

      assert %{"uid" => uid, "token" => "device-1"} = first
      assert uid == user.uid
    end
  end

  describe "overrideDataCheck and clearDataCheckOverride" do
    @override """
    mutation($input: OverrideDataCheckInput!) {
      overrideDataCheck(input: $input) { result { familyId isComplete updatedBy } }
    }
    """

    @clear """
    mutation($id: ID!) {
      clearDataCheckOverride(id: $id) { result { familyId } }
    }
    """

    test "an editor overrides, flips and clears a family's check", %{conn: conn, world: world} do
      editor = world.users.read_write
      family_id = world.records.f_svc.id

      input = fn complete ->
        %{"input" => %{"familyId" => family_id, "isComplete" => complete}}
      end

      assert %{"data" => %{"overrideDataCheck" => %{"result" => result}}} =
               run(conn, @override, editor, input.(true))

      assert result == %{"familyId" => family_id, "isComplete" => true, "updatedBy" => editor.uid}

      assert %{"data" => %{"overrideDataCheck" => %{"result" => %{"isComplete" => false}}}} =
               run(conn, @override, editor, input.(false))

      assert %{
               "data" => %{"clearDataCheckOverride" => %{"result" => %{"familyId" => ^family_id}}}
             } =
               run(conn, @clear, editor, %{"id" => family_id})

      assert {:error, _gone} = Ash.get(Override, family_id, authorize?: false)
    end

    test "someone without the right is forbidden", %{conn: conn, world: world} do
      input = %{"input" => %{"familyId" => world.records.f_svc.id, "isComplete" => true}}

      assert %{"errors" => [%{"extensions" => %{"code" => "forbidden"}}]} =
               run(conn, @override, world.users.service_open, input)
    end

    test "clearing an override that is not there is not_found", %{conn: conn, world: world} do
      assert %{"errors" => [%{"extensions" => %{"code" => "not_found"}}]} =
               run(conn, @clear, world.users.read_write, %{"id" => world.records.f_svc.id})
    end
  end
end
