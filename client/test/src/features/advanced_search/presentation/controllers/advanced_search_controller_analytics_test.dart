import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

void main() {
  late RecordingAnalyticsProvider analytics;
  late AdvancedSearchController unit;

  final nameFilter = Filter(PersonFields().name, StringOperator.contains, '');
  final phoneFilter = Filter(PersonFields().mainPhone, PhoneOperator.eq, '');

  Iterable<String> trackedNames() =>
      analytics.trackedEvents.map((event) => event.name);

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
    analytics = RecordingAnalyticsProvider();
    unit = AdvancedSearchController(
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
    );
    addTearDown(unit.dispose);
  });
  tearDown(resetGlobalProviderContainer);

  group('Advanced search controller analytics =>', () {
    test('adding a condition is tracked with its field and the new count', () {
      unit.addFilter(phoneFilter);

      expect(analytics.trackedEvents.single.properties, {
        'field_name': PersonFields().mainPhone.name,
        'nested_depth': 0,
        'operator': PhoneOperator.eq.serializationId,
        'filter_count': 2,
      });
    });

    test('removing a condition is tracked as a removal', () {
      unit.removeFilterAt(0);

      expect(trackedNames(), ['advanced_search:filter_remove']);
    });

    test(
      'picking another field for a condition is tracked as a field change',
      () {
        unit.replaceFilter(0, phoneFilter);

        expect(trackedNames(), ['advanced_search:filter_field_change']);
      },
    );

    test('picking another operator is tracked as an operator change', () {
      unit.replaceFilter(0, nameFilter.copyWith(operator: StringOperator.eq));

      expect(trackedNames(), ['advanced_search:filter_operator_change']);
    });

    test('typing a text value is tracked once, without the text', () {
      unit
        ..replaceFilter(0, nameFilter.copyWith(value: 'm'))
        ..replaceFilter(0, nameFilter.copyWith(value: 'mi'))
        ..replaceFilter(0, nameFilter.copyWith(value: 'min'));

      expect(analytics.trackedEvents.single.properties, {
        'field_name': PersonFields().name.name,
        'nested_depth': 0,
        'operator': StringOperator.contains.serializationId,
        'filter_count': 1,
        'operator_family': 'StringOperator',
        'value_count': 1,
      });
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
            orderBy: [OrderBy(field: PersonFields().name)],
            limit: 10,
          ),
        )
        ..trackQuerySubmit(isAutoExecuted: true);

      expect(analytics.trackedEvents.single.properties, {
        'type': AdvancedQueriesMetadata().person.name,
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
  });
}
