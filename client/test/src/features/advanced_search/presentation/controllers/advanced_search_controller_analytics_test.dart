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
  final byPhone = OrderBy(field: PersonFields().mainPhone);
  const limit = 100;
  const typedLimit = 50;
  const resultsSearchText = 'ab';

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

      expect(f.analytics.trackedEventsOf<AdvancedSearchFilterAdd>(), [
        isA<AdvancedSearchFilterAdd>()
            .having(
              (event) => event.fieldPath,
              'fieldPath',
              [PersonFields().mainPhone.name],
            )
            .having(
              (event) => event.operatorId,
              'operatorId',
              PhoneOperator.eq.serializationId,
            )
            .having((event) => event.filterCount, 'filterCount', 2),
      ]);
    });

    test('removing a condition is tracked as a removal', () {
      unit.removeFilterAt(0);

      expect(f.analytics.trackedEvents, [isA<AdvancedSearchFilterRemove>()]);
    });

    test(
      'picking another field for a condition is tracked as a field change',
      () {
        unit.replaceFilter(0, phoneFilter);

        expect(f.analytics.trackedEvents, [
          isA<AdvancedSearchFilterFieldChange>(),
        ]);
      },
    );

    test('picking another operator is tracked as an operator change', () {
      unit.replaceFilter(0, nameFilter.copyWith(operator: StringOperator.eq));

      expect(f.analytics.trackedEvents, [
        isA<AdvancedSearchFilterOperatorChange>(),
      ]);
    });

    test('a typed text value is tracked once it settles, without the text', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..replaceFilter(0, nameFilter.copyWith(value: 'm'))
          ..replaceFilter(0, nameFilter.copyWith(value: 'mi'))
          ..replaceFilter(0, nameFilter.copyWith(value: 'min')),
      );

      expect(f.analytics.trackedEventsOf<AdvancedSearchFilterValueSet>(), [
        isA<AdvancedSearchFilterValueSet>()
            .having(
              (event) => event.fieldPath,
              'fieldPath',
              [PersonFields().name.name],
            )
            .having(
              (event) => event.operatorId,
              'operatorId',
              StringOperator.contains.serializationId,
            )
            .having((event) => event.filterCount, 'filterCount', 1)
            .having((event) => event.valueCount, 'valueCount', 1)
            .having((event) => event.isFreeText, 'isFreeText', isTrue),
      ]);
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
            limit: limit,
          ),
        )
        ..trackQuerySubmit(isAutoExecuted: true);

      expect(f.analytics.trackedEventsOf<AdvancedSearchQuerySubmit>(), [
        isA<AdvancedSearchQuerySubmit>()
            .having(
              (event) => event.queryableType,
              'queryableType',
              AdvancedQueriesMetadata().person.name,
            )
            .having(
              (event) => event.logicalOperator,
              'logicalOperator',
              LogicalOperator.and,
            )
            .having(
              (event) => event.fieldNames,
              'fieldNames',
              [PersonFields().name.name, PersonFields().mainPhone.name],
            )
            .having(
              (event) => event.operatorIds,
              'operatorIds',
              [
                StringOperator.contains.serializationId,
                PhoneOperator.eq.serializationId,
              ],
            )
            .having((event) => event.orderCount, 'orderCount', 1)
            .having((event) => event.hasLimit, 'hasLimit', isTrue)
            .having((event) => event.isAutoExecuted, 'isAutoExecuted', isTrue),
      ]);
    });

    test('choosing another result type is tracked from and to', () {
      unit.changeSelectedQueryableType(AdvancedQueriesMetadata().family);

      expect(f.analytics.trackedEventsOf<AdvancedSearchQueryableTypeChange>(), [
        isA<AdvancedSearchQueryableTypeChange>()
            .having(
              (event) => event.fromQueryableType,
              'fromQueryableType',
              AdvancedQueriesMetadata().person.name,
            )
            .having(
              (event) => event.toQueryableType,
              'toQueryableType',
              AdvancedQueriesMetadata().family.name,
            ),
      ]);
    });

    test('choosing the current result type again is not tracked', () {
      unit.changeSelectedQueryableType(AdvancedQueriesMetadata().person);

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('adding a limit is tracked with its value', () {
      unit.changeLimit(limit);

      expect(f.analytics.trackedEventsOf<AdvancedSearchLimitSet>(), [
        isA<AdvancedSearchLimitSet>().having(
          (event) => event.limitValue,
          'limitValue',
          limit,
        ),
      ]);
    });

    test('a typed limit is tracked once as the value it settles on', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(limit)
          ..changeLimit(5)
          ..changeLimit(typedLimit),
      );

      expect(f.analytics.trackedEventsOf<AdvancedSearchLimitChange>(), [
        isA<AdvancedSearchLimitChange>().having(
          (event) => event.limitValue,
          'limitValue',
          typedLimit,
        ),
      ]);
    });

    test('deleting the typed limit digits is not tracked as a clear', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(limit)
          ..changeLimit(1)
          ..changeLimit(null),
      );

      expect(f.analytics.trackedEvents, [isA<AdvancedSearchLimitSet>()]);
    });

    test('pressing clear on the limit is tracked as a clear', () {
      unit
        ..changeLimit(limit)
        ..clearLimit();

      expect(
        f.analytics.trackedEvents.last,
        isA<AdvancedSearchLimitClear>(),
      );
    });

    test('a limit digit typed just before pressing clear is not tracked', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(limit)
          ..changeLimit(5)
          ..clearLimit(),
      );

      expect(f.analytics.trackedEvents, [
        isA<AdvancedSearchLimitSet>(),
        isA<AdvancedSearchLimitClear>(),
      ]);
    });

    test('adding a sort is tracked with its direction and the new count', () {
      unit.addOrderBy(byPhone);

      expect(f.analytics.trackedEventsOf<AdvancedSearchOrderByAdd>(), [
        isA<AdvancedSearchOrderByAdd>()
            .having(
              (event) => event.fieldName,
              'fieldName',
              PersonFields().mainPhone.name,
            )
            .having(
              (event) => event.sortDirection,
              'sortDirection',
              byPhone.value,
            )
            .having((event) => event.orderCount, 'orderCount', 2),
      ]);
    });

    test('re-sorting the same field is tracked as a direction toggle', () {
      unit.replaceOrderBy(0, byName.copyWith(value: OrderByValue.desc));

      expect(f.analytics.trackedEvents, [
        isA<AdvancedSearchOrderByDirectionToggle>(),
      ]);
    });

    test('picking the sort a condition already has is not tracked', () {
      unit.replaceOrderBy(0, byName);

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('sorting by another field is tracked as a sort change', () {
      unit.replaceOrderBy(0, byPhone);

      expect(f.analytics.trackedEvents, [isA<AdvancedSearchOrderByChange>()]);
    });

    test('removing a sort is tracked with the remaining count', () {
      unit.removeOrderByAt(0);

      expect(f.analytics.trackedEventsOf<AdvancedSearchOrderByRemove>(), [
        isA<AdvancedSearchOrderByRemove>().having(
          (event) => event.orderCount,
          'orderCount',
          0,
        ),
      ]);
    });

    test('a results search cleared before it settles is not tracked', () {
      f.typeUntilSettled((controller, _) {
        final searches = BehaviorSubject<String?>.seeded(resultsSearchText);
        controller.trackResultsSearchesIn(searches);
        searches.add('');
      });

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('repeating a settled results search is tracked again', () {
      f.typeUntilSettled((controller, time) {
        final searches = BehaviorSubject<String?>.seeded(resultsSearchText);
        controller.trackResultsSearchesIn(searches);
        time.elapse(AdvancedSearchController.typingSettleDuration);
        searches
          ..add('$resultsSearchText-more')
          ..add(resultsSearchText);
      });

      expect(f.analytics.trackedEvents, [
        isA<AdvancedSearchResultsSearchRun>().having(
          (event) => event.queryLength,
          'queryLength',
          resultsSearchText.length,
        ),
        isA<AdvancedSearchResultsSearchRun>().having(
          (event) => event.queryLength,
          'queryLength',
          resultsSearchText.length,
        ),
      ]);
    });
  });
}
