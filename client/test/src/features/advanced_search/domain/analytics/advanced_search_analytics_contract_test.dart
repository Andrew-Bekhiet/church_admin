import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const filterEditCount = 3;
  const limit = 50;
  const resultsSearchLength = 4;
  final nameContains = Filter(
    PersonFields().name,
    StringOperator.contains,
    'mina',
  );
  final addressAreaAnyOf = Filter(
    PersonFields().address.redirectTo(AddressFields().area),
    MultiSelectOperator.anyOf,
    const [Area(id: 'area-1', name: 'منطقة'), Area(id: 'area-2', name: 'ب')],
  );
  const triangle = Polygon([
    Point(30, 31),
    Point(30.1, 31),
    Point(30, 31.1),
  ]);
  final addressInside = Filter(
    PersonFields().address.redirectTo(AddressFields().geolocation),
    SpatialOperator.intersects,
    triangle,
  );
  final byNameDescending = OrderBy(
    field: PersonFields().name,
    value: OrderByValue.desc,
  );

  group('Advanced search analytics contract =>', () {
    for (final (event, expectedName, expectedProperties)
        in <(AnalyticsEvent, String, Json)>[
          (
            const AdvancedSearchOpen(
              hasInitialQuery: true,
              isAutoExecuted: false,
            ),
            'advanced_search:open',
            {'has_initial_query': true, 'is_auto_executed': false},
          ),
          (
            const AdvancedSearchQueryEdit(),
            'advanced_search:query_edit',
            {},
          ),
          (
            AdvancedSearchQuerySubmit(
              AdvancedQuery(
                queryableType: AdvancedQueriesMetadata().person,
                filters: [nameContains, addressAreaAnyOf, addressInside],
                logicalOperator: LogicalOperator.or,
                orderBy: [byNameDescending],
                limit: limit,
              ),
              isAutoExecuted: true,
              filterEditCount: filterEditCount,
            ),
            'advanced_search:query_submit',
            {
              'queryable_type': 'Person',
              'logical_operator': 'or',
              'filter_count': 3,
              'field_names': ['name', 'address.area', 'address.geolocation'],
              'operator_ids': [
                'StringOperator.contains',
                'MultiSelectOperator._in',
                'SpatialOperator.intersects',
              ],
              'order_count': 1,
              'has_limit': true,
              'is_auto_executed': true,
              'filter_edit_count': filterEditCount,
              'max_nested_depth': 1,
              'has_polygon_filter': true,
              'limit_value': limit,
            },
          ),
          (
            AdvancedSearchQuerySubmit(
              AdvancedQuery(queryableType: AdvancedQueriesMetadata().family),
              isAutoExecuted: false,
              filterEditCount: 0,
            ),
            'advanced_search:query_submit',
            {
              'queryable_type': 'Family',
              'logical_operator': 'and',
              'filter_count': 0,
              'field_names': <String>[],
              'operator_ids': <String>[],
              'order_count': 0,
              'has_limit': false,
              'is_auto_executed': false,
              'filter_edit_count': 0,
              'max_nested_depth': 0,
              'has_polygon_filter': false,
            },
          ),
          (
            AdvancedSearchQueryShare(
              AdvancedQuery(queryableType: AdvancedQueriesMetadata().family),
            ),
            'advanced_search:query_share',
            {
              'queryable_type': 'Family',
              'logical_operator': 'and',
              'filter_count': 0,
              'field_names': <String>[],
              'operator_ids': <String>[],
              'order_count': 0,
              'has_limit': false,
            },
          ),
          (
            const AdvancedSearchResultsSearchRun(
              queryLength: resultsSearchLength,
            ),
            'advanced_search:results_search_run',
            {'query_length': resultsSearchLength},
          ),
        ]) {
      test('$expectedName sends $expectedProperties', () {
        expect(
          event,
          isA<AnalyticsEvent>()
              .having((event) => event.name, 'name', expectedName)
              .having(
                (event) => event.properties,
                'properties',
                expectedProperties,
              ),
        );
      });
    }
  });
}
