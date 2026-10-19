import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

class MockFeatureFlagsRepository extends Mock
    implements FeatureFlagsRepository {}

void main() {
  late MockFeatureFlagsRepository flags;
  late StreamController<void> configChanges;

  setUp(() {
    flags = MockFeatureFlagsRepository();
    configChanges = StreamController<void>.broadcast();
    when(() => flags.enableDataChecks).thenReturn(false);
    when(() => flags.onConfigChanged).thenAnswer((_) => configChanges.stream);
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(flags),
      viewableObjectServiceProvider.overrideWith(
        (ref) => ViewableObjectService(
          router: KaiselRouter<AppRoute>(initial: const HomeScreenRoute()),
        ),
      ),
    ]);
  });

  tearDown(() async {
    await configChanges.close();
    resetGlobalProviderContainer();
  });

  test('disabled data checks remove nested conditions and ordering while retaining the rest of a saved query', () {
    final name = Filter(PersonFields().name, StringOperator.contains, 'مريم');
    final check = Filter(
      PersonFields().dataCheck.redirectTo(DataCheckFields().isComplete),
      BooleanOperator.is$,
      true,
    );
    final query = AdvancedQuery(
      name: 'بحث محفوظ',
      queryableType: AdvancedQueriesMetadata().person,
      logicalOperator: LogicalOperator.or,
      limit: 25,
      filters: [
        Filter(const DotField(), LogicalOperator.and, [name, check]),
        Filter(const DotField(), LogicalOperator.not, [check]),
      ],
      orderBy: [
        OrderBy(field: PersonFields().name, value: OrderByValue.desc),
        OrderBy(field: check.field),
      ],
    );

    expect(
      query.withEnabledFields(),
      query.copyWith(
        filters: [
          Filter(const DotField(), LogicalOperator.and, [name]),
        ],
        orderBy: [query.orderBy.first],
      ),
    );
  });

  test('turning off data checks removes existing conditions before publishing the new query', () async {
    when(() => flags.enableDataChecks).thenReturn(true);
    final controller = AdvancedSearchController();
    addTearDown(controller.dispose);
    final check = PersonFields().dataCheck.redirectTo(
      DataCheckFields().isComplete,
    );
    controller.changeQuery(
      AdvancedQuery(
        queryableType: AdvancedQueriesMetadata().person,
        filters: [Filter(check, BooleanOperator.is$, true)],
        orderBy: [OrderBy(field: check)],
      ),
    );
    final nextQuery = controller.queryStream.skip(1).first;

    when(() => flags.enableDataChecks).thenReturn(false);
    configChanges.add(null);

    expect(
      await nextQuery,
      controller.query.copyWith(filters: [], orderBy: []),
    );
    expect(controller.query.filters, isEmpty);
    expect(controller.query.orderBy, isEmpty);
  });

  test('config changes publish enabled choices even when selected conditions remain unchanged', () async {
    final controller = AdvancedSearchController();
    addTearDown(controller.dispose);
    final nextQuery = controller.queryStream.skip(1).first;

    when(() => flags.enableDataChecks).thenReturn(true);
    configChanges.add(null);

    final query = await nextQuery;
    expect(
      query.queryableType.filterableFields,
      contains(PersonFields().dataCheck),
    );
  });

  test('data check child fields and redirected fields are disabled when data checks are off', () {
    final redirect = PersonFields().dataCheck.redirectTo(
      DataCheckFields().isComplete,
    );

    expect(AdvancedQueriesMetadata().dataCheck.filterableFields, isEmpty);
    expect(
      AdvancedQueriesMetadata().person.orderableFields,
      isNot(contains(PersonFields().dataCheck)),
    );
    expect(redirect.isEnabled, isFalse);
  });
}
