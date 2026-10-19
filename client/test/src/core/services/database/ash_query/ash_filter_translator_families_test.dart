import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const filterTranslator = AshFilterTranslator();
  const sortTranslator = AshSortTranslator();
  final recorded = LastRecordedByInfoFields();

  String sortFieldOf(FieldMetadata field) =>
      sortTranslator.toSortInput([OrderBy(field: field)]).single['field']!
          as String;

  group('the related families of a family', () {
    test('its parents are filtered by the id of the parent family', () {
      expect(
        filterTranslator.toFilterInput([
          Filter(
            FamilyFields().parents.redirectTo(FamilyFields().id),
            PrimitiveOperator.eq,
            'family-1',
          ),
        ]),
        {
          'parents': {
            'id': {'eq': 'family-1'},
          },
        },
      );
    });

    test('its children are filtered by the id of the child family', () {
      expect(
        filterTranslator.toFilterInput([
          Filter(
            FamilyFields().children.redirectTo(FamilyFields().id),
            PrimitiveOperator.eq,
            'family-2',
          ),
        ]),
        {
          'children': {
            'id': {'eq': 'family-2'},
          },
        },
      );
    });
  });

  group('the sort fields of a family', () {
    final cases = <String, (FieldMetadata, String)>{
      'last edit': (
        FamilyFields().lastEdit.redirectTo<Object>(recorded.time),
        'LAST_EDIT',
      ),
      'last visit': (
        FamilyFields().lastVisit.redirectTo<Object>(recorded.time),
        'LAST_VISIT',
      ),
      'last father visit': (
        FamilyFields().lastFatherVisit.redirectTo<Object>(recorded.time),
        'LAST_FATHER_VISIT',
      ),
      'church name': (
        FamilyFields().church.redirectTo<Object>(ChurchFields().name),
        'CHURCH_NAME',
      ),
      'street name': (
        FamilyFields().address.redirectTo<Object>(
          AddressFields().street.redirectTo<Object>(StreetFields().name),
        ),
        'ADDRESS_STREET_NAME',
      ),
    };

    for (final MapEntry(key: name, value: (field, sortField))
        in cases.entries) {
      test('the $name is the $sortField', () {
        expect(sortFieldOf(field), sortField);
      });
    }
  });
}
