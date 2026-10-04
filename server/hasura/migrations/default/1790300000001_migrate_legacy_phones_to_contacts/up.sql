create or replace function public.legacy_normalize_phone(raw text)
returns text
language sql
immutable
as $$
    with digits as (
        select regexp_replace(
            translate(raw, '٠١٢٣٤٥٦٧٨٩۰۱۲۳۴۵۶۷۸۹', '01234567890123456789'),
            '[^0-9+]', '', 'g'
        ) as value
    )
    select case
        when btrim(coalesce(raw, '')) = '' then null
        when value like '+%' then value
        when value like '00%' then '+' || substr(value, 3)
        when value like '0%' then '+20' || substr(value, 2)
        when value ~ '^20[0-9]{10}$' then '+' || value
        else '+20' || value
    end
    from digits
$$;

create or replace function public.legacy_phone_label_person_type_name(
    label text
)
returns text
language sql
immutable
as $$
    select coalesce(
        substring(label from '^رقم الهاتف \((.+)\)(?: [0-9]+)?$'),
        case substring(
            regexp_replace(translate(label, 'أإآ', 'ااا'), '[^ء-ي]+', ' ', 'g')
            from '(?:^| )(?:ال|لل|للال)(اب|ام)(?: |$)'
        )
            when 'اب' then 'أب'
            when 'ام' then 'أم'
        end
    )
$$;

create or replace function public.legacy_phone_entries(phones jsonb)
returns table (label text, phone text, role_person_type_id uuid)
language sql
stable
as $$
    select entry.key, public.legacy_normalize_phone(entry.value), role.id
    from jsonb_each_text(
        case when jsonb_typeof(phones) = 'object' then phones else '{}'::jsonb end
    ) as entry
    left join public.person_types as role
        on role.name = public.legacy_phone_label_person_type_name(entry.key)
    where public.legacy_normalize_phone(entry.value) is not null
$$;

do $$
begin
    if exists (
        select 1 from public.persons as p
        where public.legacy_normalize_phone(p.main_phone) !~ '^\+[1-9][0-9]{6,14}$'
            or exists (
                select 1 from public.legacy_phone_entries(p.other_phones) as entry
                where entry.phone !~ '^\+[1-9][0-9]{6,14}$'
            )
    ) then
        raise exception 'Cannot migrate phones: % person(s) hold numbers that do not normalize to E.164',
            (
                select count(*) from public.persons as p
                where public.legacy_normalize_phone(p.main_phone) !~ '^\+[1-9][0-9]{6,14}$'
                    or exists (
                        select 1 from public.legacy_phone_entries(p.other_phones) as entry
                        where entry.phone !~ '^\+[1-9][0-9]{6,14}$'
                    )
            );
    end if;
end $$;

insert into public.contacts (person_id, phone, is_main_phone)
select
    p.id as person_id,
    public.legacy_normalize_phone(p.main_phone)::public.e164_phone as phone,
    true as is_main_phone
from public.persons as p
where public.legacy_normalize_phone(p.main_phone) is not null
on conflict do nothing;

insert into public.contacts (person_id, family_id, person_type_id, label, phone)
select
    case
        when routed.goes_to_family then null else routed.person_id
    end as person_id,
    case when routed.goes_to_family then routed.family_id end as family_id,
    case
        when routed.goes_to_family then routed.role_person_type_id
    end as person_type_id,
    case when routed.goes_to_family then null else routed.label end as label,
    routed.phone::public.e164_phone as phone
from (
    select
        p.id as person_id,
        p.family_id,
        entry.label,
        entry.phone,
        entry.role_person_type_id,
        entry.role_person_type_id is not null
        and p.family_id is not null as goes_to_family
    from public.persons as p
    cross join lateral public.legacy_phone_entries(p.other_phones) as entry
    order by p.deleted_at nulls first, p.id, entry.label
) as routed
on conflict do nothing;
