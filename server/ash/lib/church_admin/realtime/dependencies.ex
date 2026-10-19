defmodule ChurchAdmin.Realtime.Dependencies do
  @moduledoc """
  What a change to a table invalidates beyond its own GraphQL type, one entry
  per table resource. `ChurchAdmin.Realtime.TypeMap` resolves these against
  the resources at boot and raises on a name that no longer exists.
  `ChurchAdmin.Realtime.TypeMapCoverageTest` checks the view sources against
  the database catalog and that every GraphQL resource is covered.
  """

  alias ChurchAdmin.Accounts.ScopeGrant
  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Accounts.UserPermission
  alias ChurchAdmin.Activity
  alias ChurchAdmin.Attendance
  alias ChurchAdmin.Catalog
  alias ChurchAdmin.DataQuality
  alias ChurchAdmin.Organization
  alias ChurchAdmin.People
  alias ChurchAdmin.Places

  @doc """
  The belongs_to relationships whose destination a row change also updates:
  join rows, children shown inside their parent, and history rows that feed
  a parent's derived fields.
  """
  @spec parents() :: %{module() => [atom()]}
  def parents do
    %{
      People.ServiceMembership => [:person],
      People.GroupMembership => [:person],
      People.PersonHobby => [:person],
      People.PersonTag => [:person],
      People.Contact => [:person, :family],
      People.FamilyRelation => [:parent, :child],
      Places.Address => [:family, :store],
      Places.AreaStreet => [:area, :street],
      Activity.Call => [:person],
      Activity.Confession => [:person],
      Activity.Kodas => [:person],
      Attendance.AttendanceRecord => [:person],
      DataQuality.Override => [:family]
    }
  end

  @doc """
  Rows that point at a record of any table: `{table attribute, id attribute}`.
  The record's type is looked up by its table name in the public schema.
  """
  @spec record_references() :: %{module() => {atom(), atom()}}
  def record_references do
    %{Activity.Visit => {:table, :record_id}}
  end

  @doc "Permission tables and the attribute holding the uid whose visibility they change."
  @spec viewer_scope_uids() :: %{module() => atom()}
  def viewer_scope_uids do
    %{User => :uid, UserPermission => :uid, ScopeGrant => :uid}
  end

  @doc "View-backed resources and the table resources their view reads."
  @spec view_sources() :: %{module() => [module()]}
  def view_sources do
    %{
      Activity.LatestCall => [Activity.Call],
      Activity.LatestConfession => [Activity.Confession],
      Activity.LatestEdit => [Activity.Edit],
      Activity.LatestFatherVisit => [Activity.Visit],
      Activity.LatestKodas => [Activity.Kodas],
      Activity.LatestVisit => [Activity.Visit],
      Attendance.MeetingDay => [Attendance.AttendanceRecord, People.Person],
      Attendance.RosterEntry => [
        Attendance.Meeting,
        Catalog.PersonType,
        Catalog.StudyYear,
        People.Contact,
        People.GroupMembership,
        People.Person,
        People.ServiceMembership,
        ScopeGrant,
        UserPermission
      ],
      People.ClassMembership => [Organization.Class, People.Person, People.ServiceMembership],
      People.MainContact => [People.Contact],
      People.ResolvedContact => [People.Contact, People.Person],
      DataQuality.DataCheck => [
        Catalog.PersonType,
        DataQuality.Override,
        People.Family,
        People.Person,
        Places.Address
      ]
    }
  end

  @doc "GraphQL resources deliberately left without realtime invalidation, with the reason."
  @spec excluded() :: %{module() => String.t()}
  def excluded, do: %{}
end
