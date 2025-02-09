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
            queryableType: Person.queryableType,
            conditions: [
              Condition(
                queryableType: Person.queryableType,
                field: 'name',
                operator: Operator.ilike,
                value: '%%',
              ),
            ],
            orderBy: [
              OrderBy(fieldName: 'name'),
            ],
          );

          expect(unit.query, expectedQuery);

          expect(unit.conditions, expectedQuery.conditions);
          expect(
            unit.selectedQueryableType,
            expectedQuery.conditions.first.queryableType,
          );
          expect(unit.limit, expectedQuery.limit);
          expect(unit.logicalOperator, expectedQuery.logicalOperator);
          expect(unit.orderBy, expectedQuery.orderBy);
        },
      );

      test(
        'Streams',
        () {
          final newConditions = [
            Condition(
              queryableType: Person.queryableType,
              field: 'mainPhone',
              operator: Operator.eq,
              value: '01234567890',
            ),
            Condition(
              queryableType: Person.queryableType,
              field: 'address',
              operator: Operator.ilike,
              value: 'address',
            ),
          ];

          final newOrderBy = [
            OrderBy(fieldName: 'mainPhone'),
            OrderBy(fieldName: 'address'),
          ];
          const newLimit = 10;
          final newType = Area.queryableType;

          final newQuery = AdvancedQuery(
            name: 'new query',
            queryableType: Person.queryableType,
            conditions: newConditions,
            orderBy: newOrderBy,
            limit: newLimit,
            logicalOperator: LogicalOperator.or,
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
            emitsInOrder([unit.selectedQueryableType, newType]),
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
                queryableType: newType,
                conditions: [
                  Condition(
                    queryableType: newType,
                    field: 'name',
                    operator: Operator.eq,
                  ),
                ],
                orderBy: [
                  OrderBy(fieldName: 'name'),
                ],
              ),
              newQuery,
            ]),
          );

          expect(
            unit.logicalOperatorStream,
            emitsInOrder([
              LogicalOperator.and,
              LogicalOperator.or,
            ]),
          );

          unit
            ..changeConditions(newConditions)
            ..changeOrderBy(newOrderBy)
            ..changeLimit(newLimit)
            ..changeSelectedQueryableType(newType)
            ..changeQuery(newQuery);
        },
      );

      test(
        'Conditions methods',
        () {
          final newConditions = [
            Condition(
              queryableType: AdvancedQueriesMetadata.queryableTypes[Person]!,
              field: 'mainPhone',
              operator: Operator.eq,
              value: '01234567890',
            ),
            Condition(
              queryableType: AdvancedQueriesMetadata.queryableTypes[Person]!,
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
              queryableType: AdvancedQueriesMetadata.queryableTypes[Area]!,
              field: 'mainPhone',
              operator: Operator.eq,
              value: '01234567890',
            ),
            Condition(
              queryableType: AdvancedQueriesMetadata.queryableTypes[Person]!,
              field: 'address',
              operator: Operator.ilike,
              value: 'address',
            ),
            Condition(
              queryableType: AdvancedQueriesMetadata.queryableTypes[Area]!,
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
            OrderBy(
              fieldName: 'mainPhone',
              value: Enum_OrderBy.DESC,
            ),
            OrderBy(
              fieldName: 'address',
              // Ignored to make sure value is ASC
              // ignore: avoid_redundant_argument_values
              value: Enum_OrderBy.ASC,
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
