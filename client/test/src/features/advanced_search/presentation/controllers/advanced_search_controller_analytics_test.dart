import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../support/advanced_search_analytics_fixture.dart';

void main() {
  late AdvancedSearchAnalyticsFixture f;
  late AdvancedSearchController unit;

  final nameFilter = Filter(PersonFields().name, StringOperator.contains, '');
  final phoneFilter = Filter(PersonFields().mainPhone, PhoneOperator.eq, '');
  final byName = OrderBy(field: PersonFields().name);

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
    f = AdvancedSearchAnalyticsFixture();
    unit = f.createController();
    addTearDown(unit.dispose);
  });
  tearDown(resetGlobalProviderContainer);

  group('Advanced search controller analytics =>', () {
    test('adding a condition is tracked with its field and the new count', () {
      unit.addFilter(phoneFilter);

      expect(f.trackedPropertiesOf<AdvancedSearchFilterAdd>(), {
        'field_name': PersonFields().mainPhone.name,
        'nested_depth': 0,
        'operator_id': PhoneOperator.eq.serializationId,
        'filter_count': 2,
      });
    });

    test('removing a condition is tracked as a removal', () {
      unit.removeFilterAt(0);

      expect(f.trackedNames, ['advanced_search:filter_remove']);
    });

    test(
      'picking another field for a condition is tracked as a field change',
      () {
        unit.replaceFilter(0, phoneFilter);

        expect(f.trackedNames, ['advanced_search:filter_field_change']);
      },
    );

    test('picking another operator is tracked as an operator change', () {
      unit.replaceFilter(0, nameFilter.copyWith(operator: StringOperator.eq));

      expect(f.trackedNames, ['advanced_search:filter_operator_change']);
    });

    test('a typed text value is tracked once it settles, without the text', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..replaceFilter(0, nameFilter.copyWith(value: 'm'))
          ..replaceFilter(0, nameFilter.copyWith(value: 'mi'))
          ..replaceFilter(0, nameFilter.copyWith(value: 'min')),
      );

      expect(f.trackedPropertiesOf<AdvancedSearchFilterValueSet>(), {
        'field_name': PersonFields().name.name,
        'nested_depth': 0,
        'operator_id': StringOperator.contains.serializationId,
        'filter_count': 1,
        'operator_family': 'StringOperator',
        'value_count': 1,
        'is_free_text': true,
      });
    });

    test('a text value still being typed is not tracked', () {
      unit.replaceFilter(0, nameFilter.copyWith(value: 'm'));

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('a search is tracked by its shape, never its values', () {
      unit
        ..changeQuery(
          AdvancedQuery(
            queryableType: AdvancedQueriesMetadata().person,
            filters: [
              nameFilter.copyWith(value: 'mina'),
              phoneFilter,
            ],
            orderBy: [byName],
            limit: 10,
          ),
        )
        ..trackQuerySubmit(isAutoExecuted: true);

      expect(f.trackedPropertiesOf<AdvancedSearchQuerySubmit>(), {
        'queryable_type': AdvancedQueriesMetadata().person.name,
        'logical_operator': LogicalOperator.and.name,
        'filter_count': 2,
        'field_names': [
          PersonFields().name.name,
          PersonFields().mainPhone.name,
        ],
        'operator_ids': [
          StringOperator.contains.serializationId,
          PhoneOperator.eq.serializationId,
        ],
        'order_count': 1,
        'has_limit': true,
        'is_auto_executed': true,
      });
    });

    test('choosing another result type is tracked from and to', () {
      unit.changeSelectedQueryableType(AdvancedQueriesMetadata().family);

      expect(f.trackedPropertiesOf<AdvancedSearchQueryableTypeChange>(), {
        'from_queryable_type': AdvancedQueriesMetadata().person.name,
        'to_queryable_type': AdvancedQueriesMetadata().family.name,
      });
    });

    test('choosing the current result type again is not tracked', () {
      unit.changeSelectedQueryableType(AdvancedQueriesMetadata().person);

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('adding a limit is tracked with its value', () {
      unit.changeLimit(100);

      expect(f.trackedPropertiesOf<AdvancedSearchLimitSet>(), {
        'limit_value': 100,
      });
    });

    test('a typed limit is tracked once as the value it settles on', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(100)
          ..changeLimit(5)
          ..changeLimit(50),
      );

      expect(f.trackedPropertiesOf<AdvancedSearchLimitChange>(), {
        'limit_value': 50,
      });
    });

    test('deleting the typed limit digits is not tracked as a clear', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(100)
          ..changeLimit(1)
          ..changeLimit(null),
      );

      expect(f.trackedNames, ['advanced_search:limit_set']);
    });

    test('pressing clear on the limit is tracked as a clear', () {
      unit
        ..changeLimit(100)
        ..clearLimit();

      expect(f.trackedNames.last, 'advanced_search:limit_clear');
    });

    test('a limit digit typed just before pressing clear is not tracked', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(100)
          ..changeLimit(5)
          ..clearLimit(),
      );

      expect(f.trackedNames, [
        'advanced_search:limit_set',
        'advanced_search:limit_clear',
      ]);
    });

    test('adding a sort is tracked with its direction and the new count', () {
      unit.addOrderBy(OrderBy(field: PersonFields().mainPhone));

      expect(f.trackedPropertiesOf<AdvancedSearchOrderByAdd>(), {
        'field_name': PersonFields().mainPhone.name,
        'sort_direction': OrderByValue.asc.name,
        'order_count': 2,
      });
    });

    test('re-sorting the same field is tracked as a direction toggle', () {
      unit.replaceOrderBy(0, byName.copyWith(value: OrderByValue.desc));

      expect(f.trackedNames, ['advanced_search:order_by_direction_toggle']);
    });

    test('sorting by another field is tracked as a sort change', () {
      unit.replaceOrderBy(0, OrderBy(field: PersonFields().mainPhone));

      expect(f.trackedNames, ['advanced_search:order_by_change']);
    });

    test('removing a sort is tracked with the remaining count', () {
      unit.removeOrderByAt(0);

      expect(f.trackedPropertiesOf<AdvancedSearchOrderByRemove>(), {
        'order_count': 0,
      });
    });

    test('a results search cleared before it settles is not tracked', () {
      f.typeUntilSettled((controller, _) {
        final searches = BehaviorSubject<String?>.seeded('ab');
        controller.trackResultsSearchesIn(searches);
        searches.add('');
      });

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('repeating a settled results search is tracked again', () {
      f.typeUntilSettled((controller, time) {
        final searches = BehaviorSubject<String?>.seeded('ab');
        controller.trackResultsSearchesIn(searches);
        time.elapse(AdvancedSearchController.typingSettleDuration);
        searches
          ..add('abc')
          ..add('ab');
      });

      expect(f.trackedNames, [
        'advanced_search:results_search_run',
        'advanced_search:results_search_run',
      ]);
    });
  });
}
