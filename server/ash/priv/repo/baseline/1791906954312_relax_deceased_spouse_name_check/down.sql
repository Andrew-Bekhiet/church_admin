do $$
begin
  if exists (
    select 1 from "public"."families"
    where ("status" = 'widowed' and "deceased_spouse_name" is null)
       or ("status" <> 'widowed' and "deceased_spouse_name" is not null)
  ) then
    raise exception 'Cannot roll back: % famil(ies) have a widowed status without a deceased spouse name, or a name without the widowed status', (
      select count(*) from "public"."families"
      where ("status" = 'widowed' and "deceased_spouse_name" is null)
         or ("status" <> 'widowed' and "deceased_spouse_name" is not null)
    );
  end if;
end $$;

alter table "public"."families" drop constraint if exists "check_deceased_spouse_name";

alter table "public"."families" add constraint "check_deceased_spouse_name"
check (
    "status" = 'widowed' and "deceased_spouse_name" is not null
    or "status" <> 'widowed' and "deceased_spouse_name" is null
) not valid;

alter table "public"."families" validate constraint "check_deceased_spouse_name";
