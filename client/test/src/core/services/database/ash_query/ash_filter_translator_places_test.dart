import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const filterTranslator = AshFilterTranslator();
  const sortTranslator = AshSortTranslator();
  final moment = DateTime.utc(2024, 5, 6, 7, 8, 9);
  final recorded = LastRecordedByInfoFields();

  Json translate(FieldMetadata field, Operator operator, Object? value) =>
      filterTranslator.toFilterInput([Filter(field, operator, value)]);

  group('an object field tested for presence', () {
    final areaOfStore = StoreFields().address.redirectTo<Object>(
      AddressFields().area,
    );
    final areaHasKey = {
      'address': {
        'area': {
          'id': {'isNil': false},
        },
      },
    };

    test('is null asks that no related row exists', () {
      expect(translate(areaOfStore, PrimitiveOperator.isNull, null), {
        'not': [areaHasKey],
      });
    });

    test('is not null asks that a related row exists', () {
      expect(
        translate(areaOfStore, PrimitiveOperator.isNotNull, null),
        areaHasKey,
      );
    });

    test('a plain field is still tested for nil itself', () {
      expect(translate(AreaFields().color, PrimitiveOperator.isNull, null), {
        'color': {'isNil': true},
      });
    });
  });

  group('the last edit and last visit of a place', () {
    test('the time is the scalar of the same name', () {
      expect(
        translate(
          AreaFields().lastEdit.redirectTo<Object>(recorded.time),
          DateTimeOperator.isAfter,
          moment,
        ),
        {
          'lastEdit': {'greaterThan': moment.toIso8601String()},
        },
      );
    });

    test('the user is under the latest-record relationship', () {
      expect(
        translate(
          StreetFields().lastVisit.redirectTo<Object>(recorded.user),
          MultiSelectOperator.anyOf,
          ['user-1'],
        ),
        {
          'latestVisit': {
            'user': {
              'uid': {
                'in': ['user-1'],
              },
            },
          },
        },
      );
    });

    test('being unrecorded is the scalar being nil', () {
      expect(translate(AreaFields().lastEdit, PrimitiveOperator.isNull, null), {
        'lastEdit': {'isNil': true},
      });
    });

    test('having been recorded is the scalar not being nil', () {
      expect(
        translate(StoreFields().lastEdit, MultiSelectOperator.isNotEmpty, null),
        {
          'lastEdit': {'isNil': false},
        },
      );
    });

    test('sorting by the time is sorting by the scalar', () {
      expect(
        sortTranslator.toSortInput([
          OrderBy(
            field: AreaFields().lastVisit.redirectTo<Object>(recorded.time),
          ),
        ]),
        [
          {'field': 'LAST_VISIT', 'order': 'ASC_NULLS_LAST'},
        ],
      );
    });
  });
}
