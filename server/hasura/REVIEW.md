# Review guide: Hasura metadata and migrations

These rules add to the root `REVIEW.md`. The conventions themselves live in `server/hasura/AGENTS.md`. Everything here reaches production when the PR merges.

## Permissions

- For each permission or relationship the PR changes, write out who can select, insert, update, and delete, and compare that with the permissions on the tables it joins. A relationship whose remote table uses `filter: {}` exposes that table to anyone who can see the local row (#258).
- Select means the user can see the parent row, not edit it.
- Deleting from a link table requires edit permission on both sides, unless `all_data_editable` applies. The one exception is a stale study-year link in `persons_services`; `persons_groups` has no such exception.
- Contact access covers a person's own contacts and that person's family-admin contacts. That scope is intended. A trigger that returns `NULL` or rewrites a row skips Hasura's insert check, so check that the target row stays inside that scope (#221).
- Permissions use `auth.users_data.uid`, never `auth_id`.
- Put a global `entity_type: any` branch first because it reads more clearly, not for speed: Postgres may evaluate `_or` branches in any order.
- Each new permission reference on `persons` or `families` raises planner memory on list queries. Ask for `EXPLAIN (MEMORY)` on a list query before accepting another one.

## Migrations

- A migration adds and keeps data: no drops, no rewrites of real rows. `down.sql` fails loudly before it destroys data. The only accepted exception is `data_check_overrides`.
- Hasura runs each migration in a transaction. Add a CHECK or foreign-key constraint on a large table as `NOT VALID`, then `VALIDATE` it in a later migration (#266). Lock the source tables before building an initial cache from them (#261).
- To replace a column, add the new one and keep both in sync temporarily, then remove the old one in a later step. Do not drop and recreate.
- Before a column, permission value, or function is dropped or renamed, check every trigger, function, view, and seed that still refers to it. A rename also has to add the new value wherever a foreign key requires it.
- In `down.sql`, drop dependents before the things they depend on, so triggers go before their functions. Deletes are blocked by `RESTRICT` foreign keys. A setting applied with `ALTER SYSTEM` is reset there too.
- An `UPDATE` that normalises values, such as case or whitespace, can collide with a unique constraint on production data. The PR description names the probe query that was run first.
- Seeds are plain SQL that is safe to rerun: use `on conflict do nothing`, and no psql meta-commands such as `\restrict`.
- Prefer a domain to `text` with a `CHECK`. Index, constraint, function, and trigger names say what they do and which table event fires them.
- Keep business logic out of the database: domains, constraints, and views only. A trigger or function that carries logic needs the maintainer's approval written in the PR description.
- SQL that mirrors a rule in the app, such as ground-floor handling, must match the app's rule exactly.
- Flag pgTAP or SQL tests that only re-check what the table definition already guarantees. They add no value.
- Do not flag `cron.schedule` reusing an existing job name. pg_cron updates the job in place.
