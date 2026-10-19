defmodule ChurchAdmin.Repo.Migrations.RemovePersonNationalId do
  use Ecto.Migration

  @columns_before_national_id ~w(
    id name birthdate gender is_shammas shammas_level_id school_id college_id church_id father_id
    is_student job_id job_description qualification_id person_type_id state_id is_servant notes uid
    family_id store_id study_year_id color photo_updated_at blurhash
  )
  @columns_after_national_id ~w(
    work_status martial_status serving_church_id service_type deleted_at deleted_by
  )

  def up do
    execute "drop view deleted.persons"

    alter table(:persons) do
      remove :national_id
    end

    create_deleted_persons_view(@columns_before_national_id ++ @columns_after_national_id)
  end

  def down do
    execute "drop view deleted.persons"

    execute "alter table public.persons add column national_id integer null"

    execute """
    alter table public.persons add constraint check_valid_national_id
      check (national_id is null or national_id >= '20000000000000'::bigint)
    """

    create_deleted_persons_view(
      @columns_before_national_id ++ ["national_id"] ++ @columns_after_national_id
    )
  end

  defp create_deleted_persons_view(columns) do
    execute """
    create view deleted.persons as
    select #{Enum.join(columns, ", ")}
    from public.persons
    where deleted_at is not null
    """
  end
end
