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
  const otherBirthday = '05-12';
  const triangle = Polygon([
    Point(30, 31),
    Point(30.1, 31),
    Point(30, 31.1),
  ]);
  final birthdayFilter = Filter(
    PersonFields().birthday,
    BirthdayOperator.equals,
    '01-01',
  );
  final insideFilter = Filter(
    PersonFields().address.redirectTo(AddressFields().geolocation),
    SpatialOperator.intersects,
    '',
  );

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
    test('adding a condition is tracked as one edit', () {
      unit.addFilter(phoneFilter);

      expect(f.queryEditCount, 1);
    });

    test('removing a condition is tracked as one edit', () {
      unit.removeFilterAt(0);

      expect(f.queryEditCount, 1);
    });

    test('picking another field for a condition is tracked as one edit', () {
      unit.replaceFilter(0, phoneFilter);

      expect(f.queryEditCount, 1);
    });

    test('picking another operator is tracked as one edit', () {
      unit.replaceFilter(0, nameFilter.copyWith(operator: StringOperator.eq));

      expect(f.queryEditCount, 1);
    });

    test('picking a non-text value is tracked at once', () {
      unit
        ..changeQuery(
          AdvancedQuery(
            queryableType: AdvancedQueriesMetadata().person,
            filters: [birthdayFilter],
          ),
        )
        ..replaceFilter(0, birthdayFilter.copyWith(value: otherBirthday));

      expect(f.queryEditCount, 1);
    });

    test('drawing a polygon is tracked as one edit', () {
      unit
        ..changeQuery(
          AdvancedQuery(
            queryableType: AdvancedQueriesMetadata().person,
            filters: [insideFilter],
          ),
        )
        ..replaceFilter(0, insideFilter.copyWith(value: triangle));

      expect(f.queryEditCount, 1);
    });

    test('a typed text value is tracked as one edit once it settles', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..replaceFilter(0, nameFilter.copyWith(value: 'm'))
          ..replaceFilter(0, nameFilter.copyWith(value: 'mi'))
          ..replaceFilter(0, nameFilter.copyWith(value: 'min')),
      );

      expect(f.queryEditCount, 1);
    });

    test('a text value still being typed is not tracked', () {
      unit.replaceFilter(0, nameFilter.copyWith(value: 'm'));

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('putting back the same conditions is not tracked', () {
      unit.changeFilters(unit.filters);

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('choosing another result type is tracked as one edit', () {
      unit.changeSelectedQueryableType(AdvancedQueriesMetadata().family);

      expect(f.queryEditCount, 1);
    });

    test('choosing the current result type again is not tracked', () {
      unit.changeSelectedQueryableType(AdvancedQueriesMetadata().person);

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('adding a limit is tracked as one edit', () {
      unit.changeLimit(limit);

      expect(f.queryEditCount, 1);
    });

    test('a typed limit is tracked once as the value it settles on', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(limit)
          ..changeLimit(5)
          ..changeLimit(typedLimit),
      );

      expect(f.queryEditCount, 2);
    });

    test('deleting the typed limit digits is not tracked as an edit', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(limit)
          ..changeLimit(1)
          ..changeLimit(null),
      );

      expect(f.queryEditCount, 1);
    });

    test('pressing clear on the limit is tracked as one edit', () {
      unit
        ..changeLimit(limit)
        ..clearLimit();

      expect(f.queryEditCount, 2);
    });

    test('a limit digit typed just before pressing clear is not tracked', () {
      f.typeUntilSettled(
        (controller, _) => controller
          ..changeLimit(limit)
          ..changeLimit(5)
          ..clearLimit(),
      );

      expect(f.queryEditCount, 2);
    });

    test('adding a sort is tracked as one edit', () {
      unit.addOrderBy(byPhone);

      expect(f.queryEditCount, 1);
    });

    test('re-sorting the same field is tracked as one edit', () {
      unit.replaceOrderBy(0, byName.copyWith(value: OrderByValue.desc));

      expect(f.queryEditCount, 1);
    });

    test('picking the sort a condition already has is not tracked', () {
      unit.replaceOrderBy(0, byName);

      expect(f.analytics.trackedEvents, isEmpty);
    });

    test('sorting by another field is tracked as one edit', () {
      unit.replaceOrderBy(0, byPhone);

      expect(f.queryEditCount, 1);
    });

    test('removing a sort is tracked as one edit', () {
      unit.removeOrderByAt(0);

      expect(f.queryEditCount, 1);
    });

    test('a search is tracked by its shape, never its values', () {
      unit
        ..changeQuery(
          AdvancedQuery(
            queryableType: AdvancedQueriesMetadata().person,
            filters: [
              nameFilter.copyWith(value: 'mina'),
              insideFilter.copyWith(value: triangle),
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
              [PersonFields().name.name, 'address.geolocation'],
            )
            .having(
              (event) => event.operatorIds,
              'operatorIds',
              [
                StringOperator.contains.serializationId,
                SpatialOperator.intersects.serializationId,
              ],
            )
            .having((event) => event.orderCount, 'orderCount', 1)
            .having((event) => event.hasLimit, 'hasLimit', isTrue)
            .having((event) => event.limitValue, 'limitValue', limit)
            .having((event) => event.hasPolygonFilter, 'hasPolygonFilter', true)
            .having((event) => event.isAutoExecuted, 'isAutoExecuted', isTrue),
      ]);
    });

    test('a search without a limit or polygon says so', () {
      unit.trackQuerySubmit(isAutoExecuted: false);

      expect(f.analytics.trackedEventsOf<AdvancedSearchQuerySubmit>(), [
        isA<AdvancedSearchQuerySubmit>()
            .having((event) => event.limitValue, 'limitValue', isNull)
            .having(
              (event) => event.hasPolygonFilter,
              'hasPolygonFilter',
              false,
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
