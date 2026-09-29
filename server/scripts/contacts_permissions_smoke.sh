#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/pgtap_compose.sh"
endpoint="http://localhost:${HASURA_PORT:-28081}/v1/graphql"

psql_q() { "${compose[@]}" exec -T postgres psql -U postgres -d church_admin -At -v ON_ERROR_STOP=1 -c "$1"; }

suffix=$(date +%s)
read -r admin child_a child_b unreachable_child fam_b fam_other father_type fam_a < <(psql_q "
with u as (insert into auth.users_data (name) values ('smoke admin $suffix') returning uid),
p as (insert into auth.users_permissions (uid, permission) select uid, 'approved' from u),
ft as (insert into public.person_types (name, is_family_admin) values ('smoke father $suffix', true) returning id),
ct as (insert into public.person_types (name) values ('smoke child $suffix') returning id),
s as (insert into public.services (name) values ('smoke $suffix') returning id),
ua as (insert into auth.users_admin_on (uid, admin_on_service, service_allow_edit) select u.uid, s.id, true from u, s),
fam as (insert into public.families (name) select 'smoke ' || n from generate_series(1, 3) n returning id, name),
ca as (insert into public.persons (name, family_id, person_type_id) select 'child a', fam.id, ct.id from fam, ct where fam.name = 'smoke 1' returning id, family_id),
cb as (insert into public.persons (name, family_id, person_type_id) select 'child b', fam.id, ct.id from fam, ct where fam.name = 'smoke 2' returning id, family_id),
co as (insert into public.persons (name, family_id, person_type_id) select 'child other', fam.id, ct.id from fam, ct where fam.name = 'smoke 3' returning id, family_id),
fo as (insert into public.persons (name, family_id, person_type_id) select 'father ' || fam.name, fam.id, ft.id from fam, ft where fam.name in ('smoke 1', 'smoke 3') returning id),
ps as (insert into public.persons_services (person_id, service_id) select ca.id, s.id from ca, s union all select cb.id, s.id from cb, s),
c as (insert into public.contacts (person_id, phone, is_main_phone) select id, '+201000000009', true from ca union all select id, '+201000000001', true from cb union all select id, '+2010000000' || (50 + row_number() over ())::text, true from fo)
select u.uid, ca.id, cb.id, co.id, cb.family_id, co.family_id, ft.id, ca.family_id from u, ca, cb, co, ft;" | tr '|' ' ')
f_other=$fam_b
fo_family=$fam_other

token="Bearer x.$(printf '{"x-hasura-user-id":"%s","x-hasura-default-role":"user"}' "$admin" | base64 | tr -d '=\n').y"
gql() { jq -n --arg q "$1" '{query: $q}' | curl -s -H "Authorization: $token" -H 'content-type: application/json' -d @- "$endpoint"; }
show() { echo "== $1"; shift; gql "$1" | jq -c '.errors[0].message // .data'; }

show "insert unclaimed father contact for the family of an editable child (expect row)" \
  "mutation { insertContactsOne(object: {familyId: \"$f_other\", personTypeId: \"$father_type\", phone: \"+201000000002\"}) { id familyId } }"
show "read it back via persons.family.contacts (expect the phone)" \
  "{ persons(where: {id: {_eq: \"$child_b\"}}) { family { contacts { phone personTypeId } } } }"
show "insert unclaimed father contact into family with an unreachable father (expect row, claimed by the father)" \
  "mutation { insertContactsOne(object: {familyId: \"$fam_a\", personTypeId: \"$father_type\", phone: \"+201000000006\"}) { id personId familyId } }"
show "read family contacts as the child's editor (expect the father's numbers, +...51 and +...006 and child a's +...009)" \
  "{ persons(where: {id: {_eq: \"$child_a\"}}) { family { contacts { phone personId } } } }"
show "insert contact for a person the user cannot edit (expect error)" \
  "mutation { insertContactsOne(object: {personId: \"$unreachable_child\", phone: \"+201000000003\"}) { id } }"
show "insert unclaimed contact for an unreachable family (expect error)" \
  "mutation { insertContactsOne(object: {familyId: \"$fo_family\", personTypeId: \"$father_type\", phone: \"+201000000004\"}) { id } }"
show "read contacts of an unreachable family (expect empty)" \
  "{ contacts(where: {_or: [{familyId: {_eq: \"$fo_family\"}}, {person: {familyId: {_eq: \"$fo_family\"}}}]}) { phone } resolvedContacts(where: {effectiveFamilyId: {_eq: \"$fo_family\"}}) { phone } }"
show "order persons by main contact phone (expect ascending 1 then 9)" \
  "{ persons(where: {id: {_in: [\"$child_a\", \"$child_b\"]}}, orderBy: {mainContact: {phone: ASC}}) { name mainContact { phone } } }"
