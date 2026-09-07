# Seeds — provisional plan

`seeds/default/*.sql` is applied by the `seed` service in `server/docker-compose.yml`, in
filename order, by `server/scripts/apply-seeds.sh`. Until ENG-209 nothing applied them: the
Hasura Dockerfile copies `migrations/` and `metadata/` only, and `cli-migrations-v3` has no
seed step.

Owner: Andrew — the seed content below is a checklist to write, not finished work.

## What exists

- `1780874533476_enums_seed.sql` — `auth.permissions`, `public.work_status`,
  `public.study_years`, `public.shammas_levels`, `public.person_types`,
  `public.martial_statuses`.

## What a fresh database still needs to be usable

- [ ] Services / meetings scaffolding — a fresh database has no service to attach a class or
      person to, so most of the app has nothing to render.
- [ ] At least one `auth.users_data` row with `approved` plus the permissions needed to see the
      admin surfaces, so the stack can be driven without hand-editing rows.
- [ ] A handful of `persons` across several study years, enough to exercise the attendance and
      roster screens and the study year roll.
- [ ] Config rows for anything read at startup from a settings/config table.

## Rules

- Idempotent: every insert ends in `ON CONFLICT DO NOTHING`, so re-running the seed service is
  safe.
- Deterministic ids where a later seed or test needs to reference a row.
- Seeds are local and CI fixtures. They never run against production.
