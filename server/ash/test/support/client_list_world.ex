defmodule ChurchAdmin.ClientListWorld do
  @moduledoc """
  One row behind every list the client reads, and the two viewers who read
  them: a full admin and a user scoped to the service holding those rows. A
  window over an empty table issues no nested statement, so what a run
  concludes about its statements needs rows.
  """

  alias ChurchAdmin.Activity.{ActivityDay, Call, Confession, Kodas, Visit}
  alias ChurchAdmin.Attendance.AttendanceRecord
  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Catalog.{Church, College, Father, Job, PersonState}
  alias ChurchAdmin.Catalog.{Qualification, School, ShammasLevel}
  alias ChurchAdmin.Factory
  alias ChurchAdmin.People.Contact
  alias ChurchAdmin.Places.District

  @day ~D[2026-03-01]
  @moment ~U[2026-03-01 10:00:00.000000Z]

  @spec build!() :: %{
          full_admin: ChurchAdmin.Authz.Actor.t(),
          scoped: ChurchAdmin.Authz.Actor.t()
        }
  def build! do
    full_admin = user!(~w(approved readAllData writeAllData manageAllUsers))
    scoped = user!(~w(approved))
    service = Factory.service!()
    group = Factory.group!(service)
    store = Factory.store!()
    family = Factory.family!()
    person = Factory.person!(%{family_id: family.id})

    Factory.grant!(scoped, :service, service.id, edit?: true, manage_users?: true)
    Factory.grant!(scoped, :group, group.id)
    Factory.in_service!(person, service)
    Factory.in_group!(person, group)
    Factory.person!(%{family_id: family.id, uid: scoped.uid})

    Factory.grant!(scoped, :area, seed_places!(family, store).id)
    seed_catalog!()
    seed_class!(service)
    seed_activity!(person, full_admin.uid)
    seed_attendance!(service, person, full_admin.uid)

    %{full_admin: actor!(full_admin), scoped: actor!(scoped)}
  end

  defp user!(permissions) do
    user = Factory.user!()
    Factory.permissions!(user, permissions)
    user
  end

  defp actor!(user) do
    %{
      ActorLoader.load(user.uid)
      | principal: %Principal{uid: user.uid, auth_id: "firebase-#{user.uid}", claims: %{}}
    }
  end

  defp seed_places!(family, store) do
    area = Factory.area!()
    street = Factory.street!(area)
    Factory.address!(%{family_id: family.id, area_id: area.id, street_id: street.id})
    Factory.address!(%{store_id: store.id, area_id: area.id, street_id: street.id})
    seed!(District)

    Ash.Seed.seed!(Contact, %{
      family_id: family.id,
      person_type_id: Factory.person_type!().id,
      phone: "+201000000000"
    })

    area
  end

  defp seed_catalog! do
    Factory.hobby!()
    Factory.tag!()

    for resource <- [Church, College, Father, Job, Qualification, School], do: seed!(resource)

    seed!(PersonState, %{color: 1})
    seed!(ShammasLevel, %{order: 1})
  end

  defp seed_class!(service) do
    year = Factory.study_year!(1)
    Factory.class!(service, service_study_year: year.order)
  end

  defp seed_activity!(person, recorded_by) do
    Ash.Seed.seed!(ActivityDay, %{day: @day})
    logged = %{person_id: person.id, recorded_by: recorded_by}

    Ash.Seed.seed!(Confession, Map.put(logged, :day_id, @day))
    Ash.Seed.seed!(Kodas, Map.put(logged, :day_id, @day))
    Ash.Seed.seed!(Call, Map.put(logged, :time, @moment))

    Ash.Seed.seed!(Visit, %{
      table: "persons",
      record_id: person.id,
      time: @moment,
      recorded_by: recorded_by
    })

    Factory.edit_row!("persons", person.id)
  end

  defp seed_attendance!(service, person, recorded_by) do
    meeting = Factory.meeting!(service_id: service.id)

    Ash.Seed.seed!(AttendanceRecord, %{
      meeting_id: meeting.id,
      person_id: person.id,
      as_servant: false,
      datetime: @moment,
      recorded_by: recorded_by
    })
  end

  defp seed!(resource, attributes \\ %{}) do
    Ash.Seed.seed!(resource, Map.put(attributes, :name, "#{resource}"))
  end
end
