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
