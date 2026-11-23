insert into auth.permissions (name)
values ('appMaintenance'), ('manageFingerprintIds')
on conflict (name) do nothing;

insert into auth.users_permissions (uid, permission)
select
    maintenance_holders.uid,
    granted_names.permission
from auth.users_permissions as maintenance_holders
cross join (values ('appMaintenance'), ('manageFingerprintIds')) as granted_names (permission)
where maintenance_holders.permission = 'maintenanceNotifications'
on conflict (uid, permission) do nothing;

do $$
begin
  if not exists (
    select 1 from pg_type
    where typname = 'fingerprint_employee_code' and typnamespace = 'public'::regnamespace
  ) then
    create domain public.fingerprint_employee_code as text
    constraint fingerprint_employee_code_not_blank_and_trimmed_check check (value <> '' and value = btrim(value));
  end if;
end $$;

create table if not exists public.persons_fingerprint_ids (
    id uuid primary key default gen_random_uuid(),
    person_id uuid not null references public.persons (id) on update cascade on delete cascade,
    employee_code public.fingerprint_employee_code not null,
    added_at timestamptz not null default now(),
    added_by uuid not null
    default ((current_setting('hasura.user', true)::json ->> 'x-hasura-user-id')::uuid)
    references auth.users_data ("uid") on update cascade on delete restrict,
    constraint persons_fingerprint_ids_employee_code_key unique (employee_code)
);

create index if not exists persons_fingerprint_ids_person_id_idx
on public.persons_fingerprint_ids (person_id);
