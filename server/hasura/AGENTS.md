# Hasura metadata and Postgres migrations

## Migrations

- One directory per migration: `migrations/default/<timestamp>_<name>/{up,down}.sql`.
- **`<timestamp>` is the full Unix time in milliseconds when the migration was created**, as `hasura migrate create` writes it (e.g. `1762641860280`). Never a rounded or hand-picked number such as `1790400000000`: those collide across branches and misstate the order the migrations were written in.
- **Lowercase SQL keywords** and `if exists` / `if not exists` guards, matching recent siblings.
- Write a real `down.sql`. Prefer **failing loudly** over destroying data:

  ```sql
  do $$
  begin
    if exists (select 1 from auth.users_data where auth_id is null) then
      raise exception 'Cannot roll back: % pending invite(s) remain', (select count(*) from auth.users_data where auth_id is null);
    end if;
  end $$;
  ```

- **Production holds real users' data.** Migrations are additive and preserve existing rows; never treat the schema as greenfield or propose dropping what is there.
- Lint/format with `sqlfluff` when it is installed.
- Migrations deploy automatically on merge.

## Auth model

Permissions hang off `auth.users_data.uid` — never `auth_id`. `auth.users_permissions`, `auth.users_admin_on` and `persons.uid` are all keyed on it, and the JWT carries only `x-hasura-user-id = uid`. Anything that changes account identity must preserve that uid.

Before reusing a SQL permission function such as `auth.user_can_edit_user`, check it against the current Hasura metadata permissions for the tables involved. The two are maintained separately and can disagree.

`auth_id` is nullable so an admin can seed a pre-approved user — a `users_data` row plus its permission rows and a `persons` link — before the Firebase account exists. Sign-up and sign-in **claim** that row by attaching `auth_id` to it; they must never insert a second row for an address that already has one, or the seeded permissions are lost.

## Schema the client sees

`client/lib/src/core/graphql/schema.graphql` is the `user`-role schema Hasura serves. After changing migrations or metadata, refresh it and regenerate the client with the `graphql-codegen` skill (`.claude/skills/graphql-codegen/SKILL.md`); CI fails when it drifts.
