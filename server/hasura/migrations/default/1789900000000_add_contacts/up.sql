do $$
begin
    if not exists (select 1 from pg_type where typname = 'e164_phone_number' and typnamespace = 'public'::regnamespace) then
        create domain public.e164_phone_number as text
        constraint e164_phone_number_format check (value ~ '^[+][1-9][0-9]{6,14}$');
    end if;
end $$;

create table if not exists public.contacts (
    id uuid primary key default gen_random_uuid(),
    person_id uuid references public.persons (id) on delete cascade,
    family_id uuid references public.families (id) on delete cascade,
    person_type_id uuid references public.person_types (id),
    "label" text,
    phone public.e164_phone_number not null,
    is_main_phone boolean not null default false,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    constraint contacts_owner_check check (
        (person_id is not null and family_id is null and person_type_id is null)
        or (
            person_id is null
            and family_id is not null
            and person_type_id is not null
        )
    ),
    constraint unique_phone_number_per_person unique (person_id, phone)
);

create unique index if not exists unique_phone_number_per_person_type_and_family
on public.contacts (family_id, person_type_id, phone) where person_id is null;

create unique index if not exists unique_main_phone_per_person
on public.contacts (person_id) where is_main_phone;

create unique index if not exists unique_main_phone_per_person_type_and_family
on public.contacts (family_id, person_type_id)
where is_main_phone and person_id is null;

create index if not exists contacts_by_person_type
on public.contacts (person_type_id);

create or replace trigger set_public_contacts_updated_at
before update on public.contacts
for each row
execute function public.set_current_timestamp_updated_at();
