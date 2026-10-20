defmodule ChurchAdmin.Authz.ApprovalGateTest do
  @moduledoc """
  Writes gated on a held permission refuse an unapproved holder: a user whose
  approval is pending (or revoked) writes nothing, whatever it holds.
  """

  use ChurchAdmin.OrgCase, async: false

  alias ChurchAdmin.Activity.ActivityDay
  alias ChurchAdmin.Organization.{Class, Service}
  alias ChurchAdmin.Places.{Area, Street}

  @raw_permissions ~w(readAllData writeAllData deleteData)

  setup do
    Factory.study_year!(1)

    unapproved = Factory.user!()
    Factory.permissions!(unapproved, @raw_permissions)

    approved = Factory.user!()
    Factory.permissions!(approved, ["approved" | @raw_permissions])

    {:ok, unapproved: actor_for(unapproved), approved: actor_for(approved)}
  end

  defp creates(ctx) do
    service = Factory.service!()

    [
      {Service, :create_service, %{name: "service"}},
      {Area, :create_area, %{name: "area"}},
      {Street, :create_street, %{name: "street"}},
      {Class, :create_class, %{name: "class", service_id: service.id, service_study_year: 1}},
      {ActivityDay, :ensure_attendance_day, %{day: Date.utc_today()}}
    ]
    |> Enum.map(fn {resource, action, attrs} ->
      {resource, Ash.Changeset.for_create(resource, action, attrs, actor: ctx.unapproved)}
    end)
  end

  defp deletable do
    service = Factory.service!()
    area = Factory.area!()

    [
      service,
      area,
      Factory.street!(area),
      Factory.family!(),
      Factory.class!(service, service_study_year: 1)
    ]
  end

  test "an unapproved holder of writeAllData creates nothing", ctx do
    for {resource, changeset} <- creates(ctx) do
      assert {:error, %Ash.Error.Forbidden{}} = Ash.create(changeset),
             "#{inspect(resource)} was created by an unapproved user"
    end
  end

  test "an unapproved holder of writeAllData and deleteData deletes nothing", ctx do
    for record <- deletable() do
      assert {:error, %Ash.Error.Forbidden{}} =
               record
               |> Ash.Changeset.for_destroy(:destroy, %{}, actor: ctx.unapproved)
               |> Ash.destroy(),
             "#{inspect(record.__struct__)} was deleted by an unapproved user"
    end
  end

  test "the same permissions delete once the user is approved", ctx do
    for record <- deletable() do
      assert :ok =
               record
               |> Ash.Changeset.for_destroy(:destroy, %{}, actor: ctx.approved)
               |> Ash.destroy()
    end
  end
end
