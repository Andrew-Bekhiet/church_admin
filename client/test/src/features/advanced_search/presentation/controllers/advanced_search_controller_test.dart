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
            queryableType: AdvancedQueriesMetadata().person,
            filters: [
              Filter(PersonFields().name, StringOperator.contains, ''),
            ],
            orderBy: [
              OrderBy(field: PersonFields().name),
            ],
          );

          expect(unit.query, expectedQuery);

          expect(unit.filters, expectedQuery.filters);
          expect(
            unit.selectedQueryableType,
            expectedQuery.queryableType,
          );
          expect(unit.limit, expectedQuery.limit);
          expect(unit.logicalOperator, expectedQuery.logicalOperator);
          expect(unit.orderBy, expectedQuery.orderBy);
        },
      );

      test(
        'Streams',
        () {
          final newFilters = [
            Filter(
              PersonFields().mainPhone,
              StringOperator.eq,
              '01234567890',
            ),
            Filter(
              PersonFields().address,
              StringOperator.contains,
              'address',
            ),
          ];

          final newOrderBy = [
            OrderBy(field: PersonFields().mainPhone),
            OrderBy(field: PersonFields().address),
          ];
          const newLimit = 10;
          final newType = AdvancedQueriesMetadata().area;

          final newQuery = AdvancedQuery(
            name: 'new query',
            queryableType: AdvancedQueriesMetadata().person,
            filters: newFilters,
            orderBy: newOrderBy,
            limit: newLimit,
            logicalOperator: LogicalOperator.or,
          );

          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          expect(
            unit.filtersStream,
            emitsInOrder([unit.filters, newFilters]),
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
              unit.query.copyWith(filters: newFilters),
              unit.query.copyWith(
                filters: newFilters,
                orderBy: newOrderBy,
              ),
              unit.query.copyWith(
                filters: newFilters,
                orderBy: newOrderBy,
                limit: newLimit,
              ),
              AdvancedQuery(
                name: unit.query.name,
                queryableType: newType,
                filters: [
                  Filter(
                    AreaFields().name,
                    StringOperator.contains,
                    '',
                  ),
                ],
                orderBy: [
                  OrderBy(field: AreaFields().name),
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
            ..changeFilters(newFilters)
            ..changeOrderBy(newOrderBy)
            ..changeLimit(newLimit)
            ..changeSelectedQueryableType(newType)
            ..changeQuery(newQuery);
        },
      );

      test(
        'Filters methods',
        () {
          final newFilters = [
            Filter(
              PersonFields().mainPhone,
              StringOperator.eq,
              '01234567890',
            ),
            Filter(
              PersonFields().address,
              StringOperator.contains,
              'address',
            ),
          ];

          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          expect(
            unit.filtersStream,
            emitsInOrder([
              unit.filters,
              newFilters,
              [...newFilters, newFilters.last],
              [newFilters.last, newFilters.last],
              newFilters,
            ]),
          );

          unit
            ..changeFilters(newFilters)
            ..addFilter(newFilters.last)
            ..removeFilterAt(0)
            ..replaceFilter(0, newFilters.first);

          expect(unit.filters, newFilters);
        },
      );

      test(
        'Filters type checks',
        () {
          final invalidFilters = [
            Filter(
              AreaFields().name,
              StringOperator.eq,
              'test',
            ),
            Filter(
              PersonFields().address,
              StringOperator.contains,
              'address',
            ),
          ];

          final unit = AdvancedSearchController();
          addTearDown(unit.dispose);

          expect(
            () => unit.changeFilters(invalidFilters),
            throwsArgumentError,
          );
          expect(
            () => unit.addFilter(invalidFilters.first),
            throwsArgumentError,
          );
          expect(
            () => unit.replaceFilter(0, invalidFilters.first),
            throwsArgumentError,
          );
        },
      );

      test(
        'OrderBy methods',
        () {
          final newOrderBy = [
            OrderBy(
              field: PersonFields().mainPhone,
              value: OrderByValue.desc,
            ),
            OrderBy(
              field: PersonFields().address,
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
