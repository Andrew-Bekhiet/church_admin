import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Condition Serialization Consistency =>',
    () {
      test(
        'String',
        () {
          final unit = Condition<dynamic>(
            type: Area,
            field: 'name',
            operator: Operator.eq,
            value: 'kkmkmk',
          );

          expect(unit, Condition.fromJson(unit.toJson()));
        },
      );

      test(
        'int',
        () {
          final unit = Condition<dynamic>(
            type: StudyYear,
            field: 'order',
            operator: Operator.eq,
            value: 4,
          );

          expect(unit, Condition.fromJson(unit.toJson()));
        },
      );

      test(
        'id field',
        () {
          final unit = Condition<dynamic>(
            type: Area,
            field: 'id',
            operator: Operator.eq,
            value: Area(id: 'asdasdsad', name: 'area name'),
          );

          expect(unit, Condition.fromJson(unit.toJson()));
        },
      );

      test(
        'isNull: true',
        () {
          final unit = Condition<dynamic>(
            type: Area,
            field: 'photoUpdatedAt',
            operator: Operator.isNull,
            value: true,
          );

          expect(unit, Condition.fromJson(unit.toJson()));
        },
      );

      test(
        'isNull: false',
        () {
          final unit = Condition<dynamic>(
            type: Area,
            field: 'photoUpdatedAt',
            operator: Operator.isNull,
            value: false,
          );

          expect(unit, Condition.fromJson(unit.toJson()));
        },
      );

      test(
        'Nested conditions',
        () {
          final unit = Condition<dynamic>(
            type: Area,
            field: 'persons',
            operator: null,
            value: [
              Condition<dynamic>(
                type: Person,
                field: 'services',
                operator: null,
                value: [
                  Condition<dynamic>(
                    type: Service,
                    field: 'studyYearFrom',
                    operator: Operator.eq,
                    value: 1,
                  ),
                  Condition<dynamic>(
                    type: Service,
                    field: 'studyYearTo',
                    operator: Operator.eq,
                    value: 6,
                  ),
                ],
              ),
            ],
          );

          expect(unit, Condition.fromJson(unit.toJson()));
        },
      );

      test(
        'Special cases serializers',
        () {
          for (final serializer in serializersByField.entries) {
            if (serializer.key == 'id') continue;

            final unit = Condition<dynamic>(
              type: Area,
              field: 'persons',
              operator: null,
              value: [
                Condition<dynamic>(
                  type: Person,
                  field: serializer.key,
                  operator: null,
                  value: [
                    Condition<dynamic>(
                      type: AdvancedQueriesMetadata.getFieldMetadata(
                        serializer.key,
                        const FieldMetadata(type: Null),
                      ).type,
                      field: 'id',
                      operator: Operator.eq,
                      value: 'qweqq23',
                    ),
                  ],
                ),
              ],
            );

            expect(unit, Condition.fromJson(unit.toJson()));
          }
        },
      );
    },
  );
}
