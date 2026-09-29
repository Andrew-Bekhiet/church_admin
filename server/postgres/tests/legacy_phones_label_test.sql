begin;
create extension if not exists pgtap;
\ir fixtures/base.psql

select plan(5);

select
    pg_temp.make_person_type('أب', true) as father_type,
    pg_temp.make_person_type('ابن', false) as child_type,
    pg_temp.make_person_type('إخوة', true) as siblings_type \gset

select is(
    public.family_admin_type_of_phone_label('رقم الهاتف (الأب)'),
    :'father_type'::uuid,
    'a label with the article finds the family-admin type'
);

select is(
    public.family_admin_type_of_phone_label('رقم الهاتف (الاب)'),
    :'father_type'::uuid,
    'a label spelled without the hamza finds the family-admin type'
);

select is(
    public.family_admin_type_of_phone_label('رقم الهاتف ( الإخوة )'),
    :'siblings_type'::uuid,
    'a label with padding and another hamza form finds the family-admin type'
);

select is(
    public.family_admin_type_of_phone_label('رقم الهاتف (الابن)'),
    null,
    'a label of a type that is not a family admin matches nothing'
);

select is(
    public.family_admin_type_of_phone_label('رقم الهاتف 2'),
    null,
    'a numbered label matches nothing'
);

select * from finish();
rollback;
