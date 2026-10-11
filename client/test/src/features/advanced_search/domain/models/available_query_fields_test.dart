import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
    ]);
  });

  tearDown(() async {
    await configChanges.close();
    resetGlobalProviderContainer();
  });

  test(
    'disabled data checks remove nested conditions and ordering while retaining the rest of a saved query',
    () {
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
        query.withAvailableFields(),
        query.copyWith(
          filters: [
            Filter(const DotField(), LogicalOperator.and, [name]),
          ],
          orderBy: [query.orderBy.first],
        ),
      );
    },
  );

  test(
    'turning off data checks removes existing conditions before publishing the new query',
    () async {
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
    },
  );

  test(
    'config changes publish available choices even when selected conditions remain unchanged',
    () async {
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
    },
  );

  test(
    'data check child fields and redirected fields are unavailable when disabled',
    () {
      final redirect = PersonFields().dataCheck.redirectTo(
        DataCheckFields().isComplete,
      );

      expect(AdvancedQueriesMetadata().dataCheck.filterableFields, isEmpty);
      expect(
        AdvancedQueriesMetadata().person.orderableFields,
        isNot(contains(PersonFields().dataCheck)),
      );
      expect(redirect.isAvailable, isFalse);
    },
  );
  testWidgets(
    'an open RTL ordering sheet removes unavailable selected fields after a config change',
    (tester) async {
      when(() => flags.enableDataChecks).thenReturn(true);
      final nameOrder = OrderBy(field: PersonFields().name);
      final checkOrder = OrderBy(
        field: PersonFields().dataCheck.redirectTo(
          DataCheckFields().isComplete,
        ),
      );
      List<OrderBy>? changedOrder;
      await tester.pumpWidget(
        MaterialApp(
          home: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              body: OrderByBottomSheet(
                queryableType: AdvancedQueriesMetadata().person,
                initialOrderBy: [nameOrder, checkOrder],
                onChanged: (orderBy) => changedOrder = orderBy,
              ),
            ),
          ),
        ),
      );
      expect(find.byType(OrderByWidget), findsNWidgets(3));

      when(() => flags.enableDataChecks).thenReturn(false);
      configChanges.add(null);
      await tester.pump();
      await tester.pump();

      expect(find.byType(OrderByWidget), findsOneWidget);
      expect(changedOrder, [nameOrder]);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    },
  );
}
