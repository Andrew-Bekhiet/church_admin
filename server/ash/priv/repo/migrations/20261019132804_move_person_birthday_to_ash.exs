defmodule ChurchAdmin.Repo.Migrations.MovePersonBirthdayToAsh do
  use Ecto.Migration

  def up do
    execute(~s|drop index "public"."persons_birthdays"|)
    execute(~s|drop function "public"."get_person_birthday"("public"."persons")|)
  end

  def down do
    execute("""
    CREATE FUNCTION "public"."get_person_birthday"("person" "public"."persons") RETURNS "text"
        LANGUAGE "sql" IMMUTABLE
        AS $$
    select to_char(person.birthdate, 'MM-DD');
    $$
    """)

    execute(
      ~s|CREATE INDEX "persons_birthdays" ON "public"."persons" USING "btree" ("public"."get_person_birthday"("persons".*))|
    )
  end
end
