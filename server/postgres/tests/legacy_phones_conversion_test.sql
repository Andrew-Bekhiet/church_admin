begin;
create extension if not exists pgtap;

select plan(14);

select is(public.phone_to_e164('1001234567'), '+201001234567', 'a national significant number becomes an Egyptian E.164 number');
select is(public.phone_to_e164('01001234567'), '+201001234567', 'a trunk-zero number becomes an Egyptian E.164 number');
select is(public.phone_to_e164('0020 100 123 4567'), '+201001234567', 'a 0020 prefix becomes a plus sign');
select is(public.phone_to_e164('+20 (100) 123-4567'), '+201001234567', 'spaces, dashes and parentheses are stripped');
select is(public.phone_to_e164('00442071234567'), '+442071234567', 'a 00 prefix of another country becomes a plus sign');
select is(public.phone_to_e164('+442071234567'), '+442071234567', 'a non-Egyptian international number is kept');
select is(public.phone_to_e164('call me'), null, 'a number with letters does not convert');
select is(public.phone_to_e164('123'), null, 'a number that is too short does not convert');
select is(public.phone_to_e164(''), null, 'an empty number does not convert');
select is(public.phone_to_legacy('+201001234567'), '1001234567', 'an Egyptian number is stored without the country code and trunk zero');
select is(public.phone_to_legacy('+442071234567'), '+442071234567', 'a non-Egyptian number stays international');
select is(
    public.phone_to_e164(public.phone_to_legacy('+201001234567')),
    '+201001234567',
    'the legacy form of an Egyptian number converts back to it'
);
select is(public.person_type_phone_label('أب'), 'رقم الهاتف (الأب)', 'a person type name gets the definite article in its phone label');
select is(public.person_type_phone_label('الأم'), 'رقم الهاتف (الأم)', 'a name that already has the article is not prefixed twice');

select * from finish();
rollback;
