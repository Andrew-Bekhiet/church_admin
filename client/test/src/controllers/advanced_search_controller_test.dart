import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Advanced Search controller =>',
    () {
      test(
        'Initial state and structure',
        () {
          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          final expectedQuery = AdvancedQuery(
            name: '',
            conditions: [
              Condition(
                type: Person,
                field: 'name',
                operator: Operator.ilike,
              ),
            ],
            orderBy: [
              const OrderBy(field: 'name'),
            ],
          );

          expect(unit.query, expectedQuery);

          expect(unit.conditions, expectedQuery.conditions);
          expect(unit.selectedType, expectedQuery.conditions.first.type);
          expect(unit.limit, expectedQuery.limit);
          expect(unit.orderBy, expectedQuery.orderBy);
        },
      );

      test(
        'Streams',
        () {
          final newConditions = [
            Condition(
              type: Person,
              field: 'mainPhone',
              operator: Operator.eq,
              value: '01234567890',
            ),
            Condition(
              type: Person,
              field: 'address',
              operator: Operator.ilike,
              value: 'address',
            ),
          ];

          final newOrderBy = [
            const OrderBy(field: 'mainPhone'),
            const OrderBy(field: 'address'),
          ];
          const newLimit = 10;
          const newType = Area;

          final newQuery = AdvancedQuery(
            name: 'new query',
            conditions: newConditions,
            orderBy: newOrderBy,
            limit: newLimit,
          );

          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          expect(
            unit.conditionsStream,
            emitsInOrder([unit.conditions, newConditions]),
          );
          expect(unit.orderByStream, emitsInOrder([unit.orderBy, newOrderBy]));
          expect(unit.limitStream, emitsInOrder([unit.limit, newLimit]));
          expect(
            unit.selectedTypeStream,
            emitsInOrder([unit.selectedType, newType]),
          );

          expect(
            unit.queryStream,
            emitsInOrder([
              unit.query,
              unit.query.copyWith(conditions: newConditions),
              unit.query.copyWith(
                conditions: newConditions,
                orderBy: newOrderBy,
              ),
              unit.query.copyWith(
                conditions: newConditions,
                orderBy: newOrderBy,
                limit: newLimit,
              ),
              AdvancedQuery(
                name: unit.query.name,
                conditions: [
                  Condition(
                    type: newType,
                    field: 'name',
                    operator: Operator.eq,
                  ),
                ],
                orderBy: [
                  const OrderBy(field: 'name'),
                ],
              ),
              newQuery,
            ]),
          );

          unit
            ..changeConditions(newConditions)
            ..changeOrderBy(newOrderBy)
            ..changeLimit(newLimit)
            ..changeSelectedType(newType, 'name')
            ..changeQuery(newQuery);
        },
      );

      test(
        'Conditions methods',
        () {
          final newConditions = [
            Condition(
              type: Person,
              field: 'mainPhone',
              operator: Operator.eq,
              value: '01234567890',
            ),
            Condition(
              type: Person,
              field: 'address',
              operator: Operator.ilike,
              value: 'address',
            ),
          ];

          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          expect(
            unit.conditionsStream,
            emitsInOrder([
              unit.conditions,
              newConditions,
              [...newConditions, newConditions.last],
              [newConditions.last, newConditions.last],
              newConditions,
            ]),
          );

          unit
            ..changeConditions(newConditions)
            ..addCondition(newConditions.last)
            ..removeConditionAt(0)
            ..replaceCondition(0, newConditions.first);

          expect(unit.conditions, newConditions);
        },
      );

      test(
        'Conditions type checks',
        () {
          final newConditions = [
            Condition(
              type: Area,
              field: 'mainPhone',
              operator: Operator.eq,
              value: '01234567890',
            ),
            Condition(
              type: Person,
              field: 'address',
              operator: Operator.ilike,
              value: 'address',
            ),
            Condition(
              type: Area,
              field: 'address',
              operator: Operator.ilike,
              value: 'address',
            ),
          ];

          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          expect(
            () => unit.changeConditions(newConditions),
            throwsArgumentError,
          );
          expect(
            () => unit.addCondition(newConditions.last),
            throwsArgumentError,
          );
          expect(
            () => unit.replaceCondition(0, newConditions.first),
            throwsArgumentError,
          );
        },
      );

      test(
        'OrderBy methods',
        () {
          final newOrderBy = [
            const OrderBy(
              field: 'mainPhone',
              direction: Enum_OrderBy.DESC,
            ),
            const OrderBy(
              field: 'address',
              // ignore: avoid_redundant_argument_values
              direction: Enum_OrderBy.ASC,
            ),
          ];

          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          expect(
            unit.orderByStream,
            emitsInOrder([
              unit.orderBy,
              newOrderBy,
              [...newOrderBy, newOrderBy.last],
              [newOrderBy.last, newOrderBy.last],
              newOrderBy,
            ]),
          );

          unit
            ..changeOrderBy(newOrderBy)
            ..addOrderBy(newOrderBy.last)
            ..removeOrderByAt(0)
            ..replaceOrderBy(0, newOrderBy.first);

          expect(unit.orderBy, newOrderBy);
        },
      );
    },
  );
}
