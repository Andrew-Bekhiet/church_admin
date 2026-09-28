create table if not exists public.contacts (
    id uuid primary key default gen_random_uuid(),
    person_id uuid references public.persons (id) on delete cascade,
    family_id uuid references public.families (id) on delete cascade,
    person_type_id uuid references public.person_types (id),
    label text,
    phone text not null,
    is_main_phone boolean not null default false,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    constraint contacts_owner_check check (
        (person_id is not null and family_id is null and person_type_id is null)
        or (person_id is null and family_id is not null and person_type_id is not null)
    ),
    constraint contacts_phone_e164_check check (phone ~ '^\+[1-9][0-9]{6,14}$'),
    constraint contacts_person_id_phone_key unique (person_id, phone)
);

create unique index if not exists contacts_family_type_phone_key
on public.contacts (family_id, person_type_id, phone) where person_id is null;

create unique index if not exists contacts_person_main_key
on public.contacts (person_id) where is_main_phone;

create unique index if not exists contacts_family_type_main_key
on public.contacts (family_id, person_type_id) where is_main_phone and person_id is null;

create index if not exists contacts_person_type_id_idx
on public.contacts (person_type_id);

create or replace trigger set_public_contacts_updated_at
before update on public.contacts
for each row
execute function public.set_current_timestamp_updated_at();
