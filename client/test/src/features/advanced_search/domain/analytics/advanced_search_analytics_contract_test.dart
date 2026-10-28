import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const noOrders = 0;
  const oneFilter = 1;
  const oneOrder = 1;
  const twoFilters = 2;
  const twoOrders = 2;
  const threeFilters = 3;
  const limit = 50;
  const changedLimit = 120;
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
            AdvancedSearchFilterAdd(nameContains, filterCount: twoFilters),
            'advanced_search:filter_add',
            {
              'field_name': 'name',
              'nested_depth': 0,
              'operator_id': 'StringOperator.contains',
              'filter_count': twoFilters,
            },
          ),
          (
            AdvancedSearchFilterRemove(
              addressAreaAnyOf,
              filterCount: oneFilter,
            ),
            'advanced_search:filter_remove',
            {
              'field_name': 'address.area',
              'nested_depth': 1,
              'operator_id': 'MultiSelectOperator._in',
              'filter_count': oneFilter,
            },
          ),
          (
            AdvancedSearchFilterFieldChange(
              nameContains,
              filterCount: threeFilters,
            ),
            'advanced_search:filter_field_change',
            {
              'field_name': 'name',
              'nested_depth': 0,
              'operator_id': 'StringOperator.contains',
              'filter_count': threeFilters,
            },
          ),
          (
            AdvancedSearchFilterOperatorChange(
              Filter(PersonFields().name, StringOperator.isEmpty, null),
              filterCount: oneFilter,
            ),
            'advanced_search:filter_operator_change',
            {
              'field_name': 'name',
              'nested_depth': 0,
              'operator_id': 'StringOperator.isEmpty',
              'filter_count': oneFilter,
            },
          ),
          (
            AdvancedSearchFilterValueSet(nameContains, filterCount: oneFilter),
            'advanced_search:filter_value_set',
            {
              'field_name': 'name',
              'nested_depth': 0,
              'operator_id': 'StringOperator.contains',
              'filter_count': oneFilter,
              'operator_family': 'StringOperator',
              'value_count': 1,
              'is_free_text': true,
            },
          ),
          (
            AdvancedSearchFilterValueSet(
              addressAreaAnyOf,
              filterCount: twoFilters,
            ),
            'advanced_search:filter_value_set',
            {
              'field_name': 'address.area',
              'nested_depth': 1,
              'operator_id': 'MultiSelectOperator._in',
              'filter_count': twoFilters,
              'operator_family': 'MultiSelectOperator',
              'value_count': 2,
              'is_free_text': false,
            },
          ),
          (
            AdvancedSearchFilterValueSet(
              Filter(PersonFields().mainPhone, PhoneOperator.eq, ''),
              filterCount: oneFilter,
            ),
            'advanced_search:filter_value_set',
            {
              'field_name': 'mainPhone',
              'nested_depth': 0,
              'operator_id': 'PhoneOperator.eq',
              'filter_count': oneFilter,
              'operator_family': 'PhoneOperator',
              'value_count': 0,
              'is_free_text': true,
            },
          ),
          (
            AdvancedSearchFilterValueSet(
              Filter(PersonFields().birthday, BirthdayOperator.equals, '05-%'),
              filterCount: oneFilter,
            ),
            'advanced_search:filter_value_set',
            {
              'field_name': 'birthday',
              'nested_depth': 0,
              'operator_id': 'BirthdayOperator.equals',
              'filter_count': oneFilter,
              'operator_family': 'BirthdayOperator',
              'value_count': 1,
              'is_free_text': false,
              'is_any_day': true,
            },
          ),
          (
            AdvancedSearchFilterValueSet(
              Filter(PersonFields().birthday, BirthdayOperator.equals, '05-12'),
              filterCount: oneFilter,
            ),
            'advanced_search:filter_value_set',
            {
              'field_name': 'birthday',
              'nested_depth': 0,
              'operator_id': 'BirthdayOperator.equals',
              'filter_count': oneFilter,
              'operator_family': 'BirthdayOperator',
              'value_count': 1,
              'is_free_text': false,
              'is_any_day': false,
            },
          ),
          (
            AdvancedSearchPolygonFilterDraw(
              addressInside,
              triangle,
              filterCount: oneFilter,
            ),
            'advanced_search:polygon_filter_draw',
            {
              'field_name': 'address.geolocation',
              'nested_depth': 1,
              'operator_id': 'SpatialOperator.intersects',
              'filter_count': oneFilter,
              'point_count': 3,
            },
          ),
          (
            const AdvancedSearchOpen(
              hasInitialQuery: true,
              isAutoExecuted: false,
            ),
            'advanced_search:open',
            {'has_initial_query': true, 'is_auto_executed': false},
          ),
          (
            AdvancedSearchQueryableTypeChange(
              from: AdvancedQueriesMetadata().person,
              to: AdvancedQueriesMetadata().family,
            ),
            'advanced_search:queryable_type_change',
            {'from_queryable_type': 'Person', 'to_queryable_type': 'Family'},
          ),
          (
            AdvancedSearchOrderByAdd(byNameDescending, orderCount: oneOrder),
            'advanced_search:order_by_add',
            {
              'field_name': 'name',
              'sort_direction': 'desc',
              'order_count': oneOrder,
            },
          ),
          (
            AdvancedSearchOrderByChange(
              OrderBy(field: PersonFields().birthday),
              orderCount: twoOrders,
            ),
            'advanced_search:order_by_change',
            {
              'field_name': 'birthday',
              'sort_direction': 'asc',
              'order_count': twoOrders,
            },
          ),
          (
            AdvancedSearchOrderByDirectionToggle(
              byNameDescending,
              orderCount: oneOrder,
            ),
            'advanced_search:order_by_direction_toggle',
            {
              'field_name': 'name',
              'sort_direction': 'desc',
              'order_count': oneOrder,
            },
          ),
          (
            const AdvancedSearchOrderByRemove(orderCount: noOrders),
            'advanced_search:order_by_remove',
            {'order_count': noOrders},
          ),
          (
            const AdvancedSearchLimitSet(limit),
            'advanced_search:limit_set',
            {'limit_value': limit},
          ),
          (
            const AdvancedSearchLimitChange(changedLimit),
            'advanced_search:limit_change',
            {'limit_value': changedLimit},
          ),
          (
            const AdvancedSearchLimitClear(),
            'advanced_search:limit_clear',
            {},
          ),
          (
            AdvancedSearchQuerySubmit(
              AdvancedQuery(
                queryableType: AdvancedQueriesMetadata().person,
                filters: [nameContains, addressAreaAnyOf],
                logicalOperator: LogicalOperator.or,
                orderBy: [byNameDescending],
                limit: limit,
              ),
              isAutoExecuted: true,
            ),
            'advanced_search:query_submit',
            {
              'queryable_type': 'Person',
              'logical_operator': 'or',
              'filter_count': 2,
              'field_names': ['name', 'address.area'],
              'operator_ids': [
                'StringOperator.contains',
                'MultiSelectOperator._in',
              ],
              'order_count': 1,
              'has_limit': true,
              'is_auto_executed': true,
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
