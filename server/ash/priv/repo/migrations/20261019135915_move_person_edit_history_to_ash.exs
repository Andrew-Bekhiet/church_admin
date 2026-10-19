defmodule ChurchAdmin.Repo.Migrations.MovePersonEditHistoryToAsh do
  use Ecto.Migration

  @tables ~w(call_history confession_history kodas_history)

  def up do
    for table <- @tables do
      execute(~s|drop trigger "insert_person_edit_history" on "history"."#{table}"|)
    end

    execute(~s|drop function "history"."insert_person_edit_history"()|)
  end

  def down do
    execute("""
    CREATE FUNCTION "history"."insert_person_edit_history"() RETURNS "trigger"
        LANGUAGE "plpgsql"
        AS $$
    DECLARE hasura_session JSON;
    begin
    insert into history.edit_history ("table", record_id, "time", recorded_by)
    VALUES (
            'persons'::name,
            new.person_id,
            now(),
            new.recorded_by
        );
    return new;
    END;
    $$
    """)

    for table <- @tables do
      execute("""
      CREATE TRIGGER "insert_person_edit_history" AFTER INSERT ON "history"."#{table}" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"()
      """)
    end
  end
end
