create table if not exists "public"."home_mode" (
    "name" text not null primary key
);

insert into "public"."home_mode" ("name")
values
('sundaySchool'),
('churchData')
on conflict ("name") do nothing;

create table if not exists "public"."users_preferences" (
    "uid" uuid not null,
    "order_by_preferences" jsonb not null default '{}'::jsonb,
    "dark_theme" boolean,
    "great_feast_theme" boolean not null default true,
    "last_home_mode" text,
    "created_at" timestamptz not null default now(),
    "updated_at" timestamptz not null default now(),
    primary key ("uid"),
    constraint "users_preferences_uid_fkey"
    foreign key ("uid")
    references "auth"."users_data" ("uid")
    on update cascade
    on delete cascade,
    constraint "users_preferences_last_home_mode_fkey"
    foreign key ("last_home_mode")
    references "public"."home_mode" ("name")
    on update cascade
    on delete restrict
);

create table if not exists "public"."users_fcm_tokens" (
    "uid" uuid not null,
    "token" text not null,
    "created_at" timestamptz not null default now(),
    primary key ("uid", "token"),
    constraint "users_fcm_tokens_uid_fkey"
    foreign key ("uid")
    references "auth"."users_data" ("uid")
    on update cascade
    on delete cascade
);

create or replace trigger "set_public_users_preferences_updated_at"
before update on "public"."users_preferences"
for each row
execute function "public"."set_current_timestamp_updated_at"();

create or replace function "public"."default_order_by_preferences"()
returns jsonb
language sql
immutable
as $$
select '{
  "Area": [
    {
      "field": {
        "name": "name",
        "parentQueryableType": "Area"
      },
      "value": "asc"
    }
  ],
  "Class": [
    {
      "field": {
        "name": "studyYear",
        "parentQueryableType": "Class"
      },
      "value": "asc"
    },
    {
      "field": {
        "name": "serviceGender",
        "parentQueryableType": "Class"
      },
      "value": "desc"
    },
    {
      "field": {
        "name": "name",
        "parentQueryableType": "Class"
      },
      "value": "asc"
    }
  ],
  "Group": [
    {
      "field": {
        "name": "name",
        "parentQueryableType": "Group"
      },
      "value": "asc"
    }
  ],
  "Store": [
    {
      "field": {
        "name": "name",
        "parentQueryableType": "Store"
      },
      "value": "asc"
    }
  ],
  "Family": [
    {
      "field": {
        "parentField": {
          "name": "address",
          "parentQueryableType": "Family"
        },
        "targetField": {
          "name": "fullAddressText",
          "parentQueryableType": "Address"
        },
        "isExpandable": false
      },
      "value": "asc"
    }
  ],
  "Person": [
    {
      "field": {
        "name": "personType",
        "parentQueryableType": "Person"
      },
      "value": "asc"
    }
  ],
  "Street": [
    {
      "field": {
        "alias": "time",
        "label": "الوقت",
        "parentField": {
          "name": "lastVisit",
          "parentQueryableType": "Street"
        },
        "targetField": {
          "name": "time",
          "parentQueryableType": "LastRecordedByInfo"
        },
        "isExpandable": true
      },
      "value": "asc"
    }
  ],
  "Person-InService": [
    {
      "field": {
        "name": "name",
        "parentQueryableType": "Person"
      },
      "value": "asc"
    },
    {
      "field": {
        "name": "studyYear",
        "parentQueryableType": "Person"
      },
      "value": "asc"
    }
  ]
}'::jsonb;
$$;

create or replace function "public"."seed_user_preferences"()
returns trigger
language plpgsql
as $$
begin
  insert into "public"."users_preferences" (
    "uid",
    "order_by_preferences",
    "great_feast_theme"
  )
  values (
    new.uid,
    "public"."default_order_by_preferences"(),
    true
  )
  on conflict ("uid") do nothing;
  return new;
end;
$$;

create or replace trigger "seed_user_preferences"
after insert on "auth"."users_data"
for each row
execute function "public"."seed_user_preferences"();

insert into "public"."users_preferences" (
    "uid",
    "order_by_preferences",
    "great_feast_theme"
)
select
    "uid",
    "public"."default_order_by_preferences"(),
    true
from "auth"."users_data"
on conflict ("uid") do nothing;
