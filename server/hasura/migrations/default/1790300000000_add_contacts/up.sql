create domain public.e164_phone as text
check (value ~ '^\+[1-9][0-9]{6,14}$');

create table if not exists public.contacts (
    id uuid not null default gen_random_uuid() primary key,
    person_id uuid references public.persons (
        id
    ) on update cascade on delete cascade,
    family_id uuid references public.families (
        id
    ) on update cascade on delete cascade,
    person_type_id uuid references public.person_types (
        id
    ) on update cascade on delete restrict,
    label text,
    phone public.e164_phone not null,
    is_main_phone boolean not null default false,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    constraint contacts_has_one_owner check (
        (person_id is not null and family_id is null and person_type_id is null)
        or (
            person_id is null
            and family_id is not null
            and person_type_id is not null
        )
    ),
    constraint contacts_person_id_phone_key unique (person_id, phone)
);

create unique index if not exists contacts_unclaimed_phone_key
on public.contacts (family_id, person_type_id, phone)
where person_id is null;

create unique index if not exists contacts_person_main_phone_key
on public.contacts (person_id)
where is_main_phone;

create unique index if not exists contacts_unclaimed_main_phone_key
on public.contacts (family_id, person_type_id)
where is_main_phone and person_id is null;

create index if not exists contacts_phone_idx on public.contacts (phone);

drop trigger if exists set_public_contacts_updated_at on public.contacts;
create trigger set_public_contacts_updated_at
before update on public.contacts
for each row execute function public.set_current_timestamp_updated_at();

create or replace view public.resolved_contacts as
select
    c.id,
    c.person_id,
    c.family_id,
    c.person_type_id,
    c.label,
    c.phone,
    c.is_main_phone,
    c.created_at,
    c.updated_at,
    coalesce(c.family_id, p.family_id) as effective_family_id,
    coalesce(c.person_type_id, p.person_type_id) as effective_person_type_id
from public.contacts as c
left join public.persons as p on c.person_id = p.id and p.deleted_at is null;

create or replace view public.persons_main_contacts as
select
    id,
    person_id,
    label,
    phone
from public.contacts
where is_main_phone and person_id is not null;

create or replace function public.claim_contact_for_sole_family_member()
returns trigger
language plpgsql
as $$
declare
    sole_member_id uuid;
begin
    select (array_agg(p.id))[1] into sole_member_id
    from public.persons as p
    where p.family_id = new.family_id
        and p.person_type_id = new.person_type_id
        and p.deleted_at is null
    having count(*) = 1;

    if sole_member_id is not null then
        new.person_id := sole_member_id;
        new.family_id := null;
        new.person_type_id := null;
    end if;

    return new;
end;
$$;

drop trigger if exists claim_contact_for_sole_family_member on public.contacts;
create trigger claim_contact_for_sole_family_member
before insert on public.contacts
for each row
when (new.person_id is null)
execute function public.claim_contact_for_sole_family_member();

create or replace function public.claim_family_contacts_for_sole_member()
returns trigger
language plpgsql
as $$
begin
    if new.family_id is null
        or new.person_type_id is null
        or new.deleted_at is not null
        or (
            select count(*) from public.persons as p
            where p.family_id = new.family_id
                and p.person_type_id = new.person_type_id
                and p.deleted_at is null
        ) <> 1 then
        return null;
    end if;

    delete from public.contacts as unclaimed
    where unclaimed.person_id is null
        and unclaimed.family_id = new.family_id
        and unclaimed.person_type_id = new.person_type_id
        and exists (
            select 1 from public.contacts as own
            where own.person_id = new.id and own.phone = unclaimed.phone
        );

    update public.contacts
    set
        person_id = new.id,
        family_id = null,
        person_type_id = null,
        is_main_phone = is_main_phone and not exists (
            select 1 from public.contacts as own
            where own.person_id = new.id and own.is_main_phone
        )
    where person_id is null
        and family_id = new.family_id
        and person_type_id = new.person_type_id;

    return null;
end;
$$;

drop trigger if exists claim_family_contacts_on_insert on public.persons;
create trigger claim_family_contacts_on_insert
after insert on public.persons
for each row
execute function public.claim_family_contacts_for_sole_member();

drop trigger if exists claim_family_contacts_on_update on public.persons;
create trigger claim_family_contacts_on_update
after update of family_id, person_type_id, deleted_at on public.persons
for each row
when (
    old.family_id is distinct from new.family_id
    or old.person_type_id is distinct from new.person_type_id
    or old.deleted_at is distinct from new.deleted_at
)
execute function public.claim_family_contacts_for_sole_member();
