defmodule ChurchAdmin.Dev.SeedGenerator do
  @moduledoc """
  Deterministic seed data for the baseline schema.

  `generate/1` is a pure function of the scale: the same scale yields byte-identical
  SQL and Auth emulator accounts. The SQL assumes the reference seeds and the
  services seed are loaded, and is written against the baseline schema only, so a
  database that has run just the baseline migrations accepts it.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{
    Accounts,
    Attendance,
    AuthEmulator,
    Clock,
    Contacts,
    Deletions,
    Families,
    History,
    Ids,
    Lookups,
    Memberships,
    Organization,
    People,
    Places,
    Renderer,
    Rng,
    Services,
    Sql,
    Users
  }

  alias ChurchAdmin.Dev.SeedSpec

  @generated_dir Path.join(["priv", "repo", "seeds", "generated"])

  @type output :: %{
          scale: SeedSpec.scale(),
          sql: binary(),
          auth_emulator_json: binary(),
          users: [Users.t()],
          expected_areas_streets: [{String.t(), String.t()}]
        }

  @spec generate(SeedSpec.scale()) :: output()
  def generate(scale) do
    spec = SeedSpec.fetch!(scale)
    Rng.seed()

    users = Users.build(scale)
    actor_uid = Enum.find(users, &(&1.key == "manage_users")).uid
    lookups = Lookups.build()
    places = Places.build(spec)

    %{families: families, stores: stores, addresses: addresses} =
      Families.build(spec, places, lookups, actor_uid)

    %{persons: built_persons, person_tags: person_tags, person_hobbies: person_hobbies} =
      People.build(spec, families, stores, users, lookups, actor_uid)

    memberships = Memberships.services(built_persons, spec)
    groups = Organization.groups(spec, actor_uid)
    group_memberships = Memberships.groups(groups, memberships)

    persons =
      Deletions.soft_delete(
        memberships.persons,
        families,
        memberships.service_members,
        group_memberships.by_group,
        spec,
        actor_uid
      )

    classes = Organization.classes(spec, actor_uid)
    meetings = Organization.meetings(spec, groups)

    accounts =
      Accounts.build(users, spec, %{
        service_ids: service_ids(),
        group_ids: Enum.map(groups, & &1.id),
        area_ids: Enum.map(places.areas, & &1.id)
      })

    contacts = Contacts.build(persons, families, spec)
    recorder_uids = for user <- users, not user.pending?, do: user.uid

    attendance =
      Attendance.build(spec, %{
        meetings: meetings.meetings,
        seed_meetings: meetings.seed_meetings,
        group_members: group_memberships.by_group,
        service_members: memberships.service_members,
        admin_on: accounts.admin_on,
        person_id_by_uid: person_id_by_uid(persons),
        recorder_uids: recorder_uids
      })

    history =
      History.build(spec, %{
        recorder_uids: recorder_uids,
        record_ids: record_ids(places, families, stores, persons, groups, classes, users)
      })

    data = %{
      spec: spec,
      places: places,
      lookups: lookups,
      families: families,
      stores: stores,
      addresses: addresses,
      persons: persons,
      person_tags: person_tags,
      person_hobbies: person_hobbies,
      memberships: memberships,
      groups: groups,
      group_memberships: group_memberships,
      classes: classes,
      meetings: meetings,
      accounts: accounts,
      contacts: contacts,
      attendance: attendance,
      history: history
    }

    %{
      scale: scale,
      sql: Renderer.render("generated seed data, scale #{scale}; do not edit", parts(data)),
      auth_emulator_json: AuthEmulator.build(users),
      users: users,
      expected_areas_streets: places.expected_areas_streets
    }
  end

  @spec write!(SeedSpec.scale(), Path.t()) :: [Path.t()]
  def write!(scale, directory \\ generated_directory()) do
    output = generate(scale)
    File.mkdir_p!(directory)
    sql_path = Path.join(directory, "#{scale}.sql")
    json_path = Path.join(directory, "#{scale}.auth_emulator.json")
    File.write!(sql_path, output.sql)
    File.write!(json_path, output.auth_emulator_json)
    [sql_path, json_path]
  end

  @spec generated_directory() :: Path.t()
  def generated_directory, do: Path.join(File.cwd!(), @generated_dir)

  defp areas_streets_rows(places) do
    Enum.map(places.expected_areas_streets, fn {area_id, street_id} ->
      %{area_id: area_id, street_id: street_id}
    end)
  end

  defp parts(data) do
    lookups = data.lookups
    accounts = data.accounts

    [
      Renderer.insert("public.districts", data.places.districts),
      Renderer.insert("public.churches", lookups.churches),
      Renderer.insert("public.fathers", lookups.fathers),
      Renderer.insert("public.universities", lookups.universities),
      Renderer.insert("public.colleges", lookups.colleges),
      Renderer.insert("public.schools", lookups.schools),
      Renderer.insert("public.jobs", lookups.jobs),
      Renderer.insert("public.qualifications", lookups.qualifications),
      Renderer.insert("public.hobbies", lookups.hobbies),
      Renderer.insert("public.tags", lookups.tags),
      Renderer.insert("public.person_states", lookups.person_states),
      Renderer.insert("auth.users_data", accounts.users_data),
      Renderer.without_trigger_if_present(
        "auth.users_permissions",
        "check_users_permissions_level_consistency",
        Renderer.insert("auth.users_permissions", accounts.permissions)
      ),
      "DELETE FROM public.users_preferences;\n",
      Renderer.insert("public.users_preferences", accounts.preferences),
      Renderer.insert("public.users_fcm_tokens", accounts.fcm_tokens),
      Renderer.insert("auth.invitations", accounts.invitations),
      Renderer.insert("public.areas", data.places.areas),
      Renderer.insert("public.streets", street_rows(data.places.streets, accounts.actor_uid)),
      Renderer.insert("public.areas_streets", areas_streets_rows(data.places),
        skip_duplicates?: true
      ),
      Renderer.insert("public.families", Enum.map(data.families, & &1.row)),
      Renderer.insert("public.stores", Enum.map(data.stores, & &1.row)),
      Renderer.insert("public.addresses", data.addresses),
      Renderer.insert("public.persons", Enum.map(data.persons, & &1.row)),
      Renderer.insert("public.persons_tags", data.person_tags),
      Renderer.insert("public.persons_hobbies", data.person_hobbies),
      Renderer.insert("public.classes", data.classes),
      Renderer.insert("public.groups", Enum.map(data.groups, & &1.row)),
      Renderer.insert("history.meetings", Enum.map(data.meetings.meetings, & &1.row)),
      group_default_meetings(data.meetings.group_default_meetings),
      Renderer.without_trigger_if_present(
        "public.persons_services",
        "check_persons_service_rel",
        Renderer.insert("public.persons_services", data.memberships.persons_services)
      ),
      Renderer.insert("public.persons_groups", data.group_memberships.rows),
      Renderer.insert("auth.users_admin_on", accounts.admin_on),
      Renderer.insert("public.contacts", data.contacts),
      Renderer.insert(
        "history.attendance_days",
        Enum.map(Enum.uniq(data.attendance.days ++ data.history.days), &%{day: &1})
      ),
      Renderer.insert("history.attendance_history", data.attendance.rows),
      archive_meetings(data.meetings.meetings),
      Renderer.insert("history.visit_history", data.history.visits),
      Renderer.insert("history.call_history", data.history.calls),
      Renderer.insert("history.confession_history", data.history.confessions),
      Renderer.insert("history.kodas_history", data.history.kodas),
      Renderer.insert("history.edit_history", data.history.edits),
      Renderer.insert("public.data_check_overrides", data_check_overrides(data)),
      Renderer.insert("operations.study_year_roll_runs", roll_runs(data.spec))
    ]
  end

  defp service_ids do
    primary = Services.primary().id
    [primary | for(service <- Services.all(), service.id != primary, do: service.id)]
  end

  defp street_rows(streets, deleted_by) do
    last = length(streets) - 1

    streets
    |> Enum.with_index()
    |> Enum.map(fn
      {street, ^last} ->
        Map.merge(street, %{deleted_at: Clock.days_ago(15), deleted_by: deleted_by})

      {street, _index} ->
        street
    end)
  end

  defp group_default_meetings(pairs) do
    Enum.map(pairs, fn {group_id, meeting_id} ->
      "UPDATE public.groups SET default_meeting_id = #{Sql.literal(meeting_id)} WHERE id = #{Sql.literal(group_id)};\n"
    end)
  end

  defp archive_meetings(meetings) do
    Renderer.update_where_in(
      "history.meetings",
      "is_archived = true",
      "id",
      for(meeting <- meetings, meeting.archived?, do: meeting.id)
    )
  end

  defp data_check_overrides(data) do
    live = for family <- data.families, family.live?, do: family.id
    step = div(length(live), data.spec.data_check_overrides)

    live
    |> Enum.take_every(step)
    |> Enum.take(data.spec.data_check_overrides)
    |> Enum.with_index()
    |> Enum.map(fn {family_id, position} ->
      %{
        family_id: family_id,
        is_complete: rem(position, 2) == 0,
        updated_by: data.accounts.actor_uid
      }
    end)
  end

  defp roll_runs(spec) do
    for {season, status} <- spec.study_year_roll_seasons do
      %{
        season_year: season,
        status: status,
        recorded_at: season |> Date.new!(9, 11) |> DateTime.new!(~T[06:00:00], "Etc/UTC"),
        error: if(status == "failed", do: "study year roll blocked for season #{season}"),
        step_counts: if(status == "succeeded", do: {:json, %{"persons" => spec.persons}})
      }
    end
  end

  defp person_id_by_uid(persons) do
    for person <- persons, uid = Map.get(person.row, :uid), into: %{}, do: {uid, person.id}
  end

  defp record_ids(places, families, stores, persons, groups, classes, users) do
    %{
      "areas" => Enum.map(places.areas, & &1.id),
      "streets" => Enum.map(places.streets, & &1.id),
      "families" => Enum.map(families, & &1.id),
      "stores" => Enum.map(stores, & &1.id),
      "persons" => Enum.map(persons, & &1.id),
      "groups" => Enum.map(groups, & &1.id),
      "services" => Enum.map(Services.all(), & &1.id),
      "classes" => Enum.map(classes, & &1.id) ++ Enum.map(1..30, &Ids.seed_class/1),
      "users" => Enum.map(users, & &1.uid)
    }
  end
end
