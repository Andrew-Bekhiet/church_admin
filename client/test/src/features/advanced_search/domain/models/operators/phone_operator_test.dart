import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Json searchPhone(PhoneOperator operator, String typed) =>
      Filter(PersonFields().mainPhone, operator, typed).queryToJson();

  Json anyOwnOrFamilyAdminNumber(Json phone) => {
    '_or': [
      {
        'contacts': {'phone': phone},
      },
      {
        'familyContacts': {
          '_and': [
            {
              'personType': {
                'isFamilyAdmin': {'_eq': true},
              },
            },
            {'phone': phone},
          ],
        },
      },
    ],
  };

  test('a national fragment finds numbers containing it after the zero', () {
    expect(
      searchPhone(PhoneOperator.contains, '0100'),
      anyOwnOrFamilyAdminNumber({'_ilike': '%100%'}),
    );
  });

  test('excluding a fragment excludes persons with any number holding it', () {
    expect(
      searchPhone(PhoneOperator.doesNotContain, '0100'),
      {
        '_not': anyOwnOrFamilyAdminNumber({'_ilike': '%100%'}),
      },
    );
  });

  test('a national start finds numbers starting with its +20 form', () {
    expect(
      searchPhone(PhoneOperator.startsWith, '0100'),
      anyOwnOrFamilyAdminNumber({'_ilike': '+20100%'}),
    );
  });

  test('an international start finds numbers starting with it as typed', () {
    expect(
      searchPhone(PhoneOperator.startsWith, '+1 202'),
      anyOwnOrFamilyAdminNumber({'_ilike': '+1202%'}),
    );
  });

  test('an ending keeps its leading zero', () {
    expect(
      searchPhone(PhoneOperator.endsWith, '0100'),
      anyOwnOrFamilyAdminNumber({'_ilike': '%0100'}),
    );
  });

  test('an exact national number finds its stored E.164 form', () {
    expect(
      searchPhone(PhoneOperator.eq, '0100 123 4567'),
      anyOwnOrFamilyAdminNumber({'_eq': '+201001234567'}),
    );
  });

  test('excluding an exact number excludes persons with that number', () {
    expect(
      searchPhone(PhoneOperator.neq, '01001234567'),
      {
        '_not': anyOwnOrFamilyAdminNumber({'_eq': '+201001234567'}),
      },
    );
  });

  test('searching for no number finds persons without any number', () {
    expect(
      searchPhone(PhoneOperator.isEmpty, ''),
      {
        '_not': anyOwnOrFamilyAdminNumber({'_isNull': false}),
      },
    );
  });

  test('searching for any number finds persons with at least one', () {
    expect(
      searchPhone(PhoneOperator.isNotEmpty, ''),
      anyOwnOrFamilyAdminNumber({'_isNull': false}),
    );
  });

  test('a saved phone filter searches the same way once restored', () {
    final filter = Filter(
      PersonFields().mainPhone,
      PhoneOperator.contains,
      '0100',
    );

    final restored = Filter.fromJson(filter.toJson());

    expect(restored.queryToJson(), filter.queryToJson());
  });
}
