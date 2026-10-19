# The roots `dev/equivalence.exs` compares. A unit that adds read policies
# for a resource adds its root here.

defmodule ChurchAdmin.Equivalence.Roots do
  alias ChurchAdmin.Accounts.{ScopeGrant, User, UserPermission}

  alias ChurchAdmin.Activity.{
    ActivityDay,
    Call,
    Confession,
    Edit,
    Kodas,
    LatestCall,
    LatestConfession,
    LatestEdit,
    LatestFatherVisit,
    LatestKodas,
    LatestVisit,
    Visit
  }

  alias ChurchAdmin.Attendance.{AttendanceRecord, Meeting, MeetingDay, RosterEntry}
  alias ChurchAdmin.Catalog
  alias ChurchAdmin.DataQuality.{DataCheck, Override}
  alias ChurchAdmin.Organization.{Class, Group, Service}

  alias ChurchAdmin.People.{
    ClassMembership,
    Contact,
    Family,
    FamilyRelation,
    GroupMembership,
    MainContact,
    Person,
    PersonHobby,
    PersonTag,
    ResolvedContact,
    ServiceMembership
  }

  alias ChurchAdmin.Places.{Address, Area, AreaStreet, District, Store, Street}

  # `hasura` is master's root field (graphql-default naming); `key` lists
  # Hasura's camelCase key fields and the matching Ash attributes; `page` is
  # the role's select `limit`, which caps every Hasura page; `flag` is a
  # per-row boolean compared with Hasura's NULL read as false; `through` names a
  # resource master's Hasura serves only through a relationship
  # (`query_root_fields: []`): {parent root field, relationship field}.
  def roots do
    [
      %{
        name: "persons",
        hasura: "persons",
        resource: Person,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "families",
        hasura: "families",
        resource: Family,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "serviceMemberships",
        hasura: "personsServices",
        resource: ServiceMembership,
        key: [{"personId", :person_id}, {"serviceId", :service_id}],
        page: 100
      },
      %{
        name: "groupMemberships",
        hasura: "personsGroups",
        resource: GroupMembership,
        key: [{"personId", :person_id}, {"groupId", :group_id}],
        page: 100
      },
      %{name: "addresses", hasura: "addresses", resource: Address, key: [{"id", :id}], page: 100},
      %{
        name: "services",
        hasura: "services",
        resource: Service,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "classes",
        hasura: "classes",
        resource: Class,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "groups",
        hasura: "groups",
        resource: Group,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "classMemberships",
        hasura: "classesPersons",
        resource: ClassMembership,
        key: [{"classId", :class_id}, {"personId", :person_id}]
      },
      %{
        name: "areas",
        hasura: "areas",
        resource: Area,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "streets",
        hasura: "streets",
        resource: Street,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "stores",
        hasura: "stores",
        resource: Store,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{name: "districts", hasura: "districts", resource: District, key: [{"id", :id}]},
      %{
        name: "areaStreets",
        hasura: "areasStreets",
        resource: AreaStreet,
        key: [{"areaId", :area_id}, {"streetId", :street_id}]
      },
      %{
        name: "users",
        hasura: "authUsersData",
        resource: User,
        key: [{"uid", :uid}],
        flag: {"currentUserCanManageThisUser", :current_user_can_manage_this_user}
      },
      %{
        name: "userPermissions",
        hasura: "authUsersPermissions",
        resource: UserPermission,
        key: [{"uid", :uid}, {"permission", :permission}]
      },
      %{
        name: "scopeGrants",
        hasura: "authUsersAdminOn",
        resource: ScopeGrant,
        key: [{"permissionId", :permission_id}]
      },
      %{name: "contacts", hasura: "contacts", resource: Contact, key: [{"id", :id}]},
      %{
        name: "familyContacts",
        hasura: "resolvedContacts",
        resource: ResolvedContact,
        key: [{"id", :id}]
      },
      %{
        name: "mainContacts",
        hasura: "personsMainContacts",
        resource: MainContact,
        key: [{"id", :id}]
      },
      %{
        name: "familyRelations",
        hasura: "familiesFamilies",
        resource: FamilyRelation,
        key: [{"parentFamilyId", :parent_family_id}, {"childFamilyId", :child_family_id}]
      },
      %{
        name: "personHobbies",
        hasura: "personsHobbies",
        resource: PersonHobby,
        key: [{"personId", :person_id}, {"hobbyId", :hobby_id}],
        page: 100
      },
      %{
        name: "personTags",
        hasura: "personsTags",
        resource: PersonTag,
        key: [{"personId", :person_id}, {"tagId", :tag_id}],
        page: 100
      },
      %{
        name: "activityDays",
        hasura: "historyAttendanceDays",
        resource: ActivityDay,
        key: [{"day", :day}]
      },
      %{
        name: "confessions",
        hasura: "historyConfessionHistory",
        resource: Confession,
        key: [{"id", :id}]
      },
      %{name: "kodases", hasura: "historyKodasHistory", resource: Kodas, key: [{"id", :id}]},
      %{
        name: "calls",
        hasura: "historyCallHistory",
        resource: Call,
        key: [{"personId", :person_id}, {"time", :time}]
      },
      %{
        name: "visits",
        hasura: "historyVisitHistory",
        resource: Visit,
        key: [{"visitId", :visit_id}]
      },
      %{
        name: "edits",
        hasura: "historyEditHistory",
        resource: Edit,
        key: [
          {"table", :table},
          {"recordId", :record_id},
          {"time", :time},
          {"recordedBy", :recorded_by}
        ]
      },
      %{
        name: "dataChecks",
        hasura: "dataChecks",
        through: {"families", "dataCheck"},
        resource: DataCheck,
        key: [{"familyId", :family_id}]
      },
      %{
        name: "dataCheckOverrides",
        hasura: "dataCheckOverrides",
        resource: Override,
        key: [{"familyId", :family_id}]
      },
      %{name: "meetings", hasura: "historyMeetings", resource: Meeting, key: [{"id", :id}]},
      %{
        name: "attendanceRecords",
        hasura: "historyAttendanceHistory",
        resource: AttendanceRecord,
        key: [{"id", :id}]
      },
      %{
        name: "rosterEntries",
        hasura: "historyMeetingRoster",
        resource: RosterEntry,
        key: [{"meetingId", :meeting_id}, {"personId", :person_id}, {"asServant", :as_servant}]
      },
      %{
        name: "meetingDays",
        hasura: "historyMeetingDays",
        resource: MeetingDay,
        key: [
          {"meetingId", :meeting_id},
          {"day", :day},
          {"studyYearId", :study_year_id},
          {"gender", :gender}
        ]
      }
    ] ++ catalog_roots() ++ latest_roots()
  end

  defp catalog_roots do
    lookups = [
      {"churches", Catalog.Church},
      {"fathers", Catalog.Father},
      {"schools", Catalog.School},
      {"colleges", Catalog.College},
      {"universities", Catalog.University},
      {"jobs", Catalog.Job},
      {"qualifications", Catalog.Qualification},
      {"hobbies", Catalog.Hobby},
      {"tags", Catalog.Tag},
      {"personStates", Catalog.PersonState},
      {"personTypes", Catalog.PersonType},
      {"shammasLevels", Catalog.ShammasLevel}
    ]

    for {name, resource} <- lookups do
      %{name: name, hasura: name, resource: resource, key: [{"id", :id}]}
    end ++
      [
        %{
          name: "studyYears",
          hasura: "studyYears",
          resource: Catalog.StudyYear,
          key: [{"order", :order}]
        }
      ]
  end

  # Hasura tracks the latest-per-record views without root fields, reachable
  # only through the entity relationships (`persons { lastCall { ... } }`), so
  # these roots page the entity and read the nested row. Ash rows are limited
  # to the entities Hasura showed the user, because the view can hold rows of
  # entities the user cannot read as entities (soft-deleted persons).
  defp latest_roots do
    person_logs =
      for {name, path, resource} <- [
            {"latestCalls", "lastCall", LatestCall},
            {"latestConfessions", "lastConfession", LatestConfession},
            {"latestKodases", "lastKodas", LatestKodas}
          ] do
        %{
          name: name,
          hasura: "persons",
          via: %{path: path, id_attribute: :person_id, table: nil},
          resource: resource,
          key: [{"personId", :person_id}]
        }
      end

    record_logs =
      for {entity, table, paths} <- [
            {"persons", "persons", [{"lastEdit", LatestEdit}, {"lastVisit", LatestVisit}]},
            {"families", "families",
             [
               {"lastEdit", LatestEdit},
               {"lastVisit", LatestVisit},
               {"lastFatherVisit", LatestFatherVisit}
             ]},
            {"services", "services", [{"lastEdit", LatestEdit}]},
            {"classes", "classes", [{"lastEdit", LatestEdit}]},
            {"groups", "groups", [{"lastEdit", LatestEdit}]},
            {"areas", "areas", [{"lastEdit", LatestEdit}]},
            {"streets", "streets", [{"lastEdit", LatestEdit}, {"lastVisit", LatestVisit}]},
            {"stores", "stores", [{"lastEdit", LatestEdit}]}
          ],
          {path, resource} <- paths do
        %{
          name: "#{entity}.#{path}",
          hasura: entity,
          via: %{path: path, id_attribute: :record_id, table: table},
          resource: resource,
          key: [{"table", :table}, {"recordId", :record_id}]
        }
      end

    person_logs ++ record_logs
  end
end
