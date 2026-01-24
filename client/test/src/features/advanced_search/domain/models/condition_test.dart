import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Condition Serialization Consistency =>',
    () {
      test(
        'String',
        () {
          final Filter<Object> unit = Filter(
            AreaFields().name,
            StringOperator.eq,
            'kkmkmk',
          );

          expect(unit, Filter.fromJson(unit.toJson()));
        },
      );

      test(
        'int',
        () {
          final Filter<Object> unit = Filter(
            StudyYearFields().order,
            PrimitiveOperator.eq,
            4,
          );

          expect(unit, Filter.fromJson(unit.toJson()));
        },
      );

      test(
        'id field',
        () {
          final Filter<Object> unit = Filter(
            AreaFields().id,
            MultiSelectOperator.anyOf,
            [const Area(id: 'asdasdsad', name: 'area name')],
          );

          expect(unit, Filter.fromJson(unit.toJson()));
        },
      );

      test(
        'isNull',
        () {
          final Filter<Object> unit = Filter(
            AreaFields().photoUpdatedAt,
            PrimitiveOperator.isNull,
            null,
          );

          expect(unit, Filter.fromJson(unit.toJson()));
        },
      );

      test(
        'isNotNull',
        () {
          final Filter<Object> unit = Filter(
            AreaFields().photoUpdatedAt,
            PrimitiveOperator.isNotNull,
            null,
          );

          expect(unit, Filter.fromJson(unit.toJson()));
        },
      );

      test(
        'Nested conditions',
        () {
          final Filter<Object> unit = Filter(
            PersonFields().address
                .redirectTo<Object>(AddressFields().street)
                .redirectTo<Object>(StreetFields().name),
            StringOperator.contains,
            'name',
          );

          expect(unit, Filter.fromJson(unit.toJson()));
        },
      );
    },
  );
}
