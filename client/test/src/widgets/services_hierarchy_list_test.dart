import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show ListControllerBase, PaginatableStreamBase, ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart_ext/single.dart';

import '../utils.dart';
import 'services_hierarchy_list_test.mocks.dart';

@GenerateNiceMocks([MockSpec<PaginatableStreamBase<Service>>()])
Future<void> main() async {
  await loadAppFonts();
  testGoldens(
    'ServicesHierarchyList => Goldens test',
    (tester) async {
      final mock = _createPaginatableStreamMock();

      await tester.pumpWidgetBuilder(
        ServicesHierarchyList(
          autoDisposeController: true,
          listController: ListControllerBase(
            objectsPaginatableStream: mock,
          ),
        ),
        wrapper: materialAppWrapper(
          theme: CAThemingService.getDefault(
            darkTheme: false,
            greatFeastThemeOverride: false,
          ),
        ),
      );

      await screenMatchesGolden(tester, 'services_hierarchy_list_collapsed');

      await tester.tap(find.text('Service 1'));
      await screenMatchesGolden(
        tester,
        'services_hierarchy_list_service_1_expanded',
      );

      await tester.tap(find.text('First Primary'));
      await screenMatchesGolden(
        tester,
        'services_hierarchy_list_study_year_expanded',
      );

      await tester.tap(find.text('Service 2'));
      await screenMatchesGolden(
        tester,
        'services_hierarchy_list_service_2_expanded',
      );

      // Dispose the main widget:
      await tester.pumpWidget(Container());
      flushVisibilityDetectors();
    },
  );

  testWidgets(
    'ServicesHierarchyList => Hierachy Expansion',
    (tester) async {
      final mock = _createPaginatableStreamMock();

      await tester.pumpWidgetBuilder(
        ServicesHierarchyList(
          autoDisposeController: true,
          listController: ListControllerBase(
            objectsPaginatableStream: mock,
          ),
        ),
      );

      expect(find.text('Class 1'), findsNothing);
      expect(find.text('Class 2'), findsNothing);
      expect(find.text('Group 1'), findsNothing);
      expect(find.text('Group 2'), findsNothing);
      expect(find.text('Fisrt Primary'), findsNothing);

      await tester.tap(find.text('Service 1'));
      await tester.pumpAndSettle();

      expect(find.text('Class 1'), findsNothing);
      expect(find.text('Class 2'), findsNothing);
      expect(find.text('Group 1'), findsOneWidget);
      expect(find.text('Group 2'), findsOneWidget);
      expect(find.text('Fisrt Primary'), findsNothing);

      await tester.tap(find.text('Service 1'));
      await tester.pumpAndSettle();

      expect(find.text('Class 1'), findsNothing);
      expect(find.text('Class 2'), findsNothing);
      expect(find.text('Group 1'), findsNothing);
      expect(find.text('Group 2'), findsNothing);
      expect(find.text('Fisrt Primary'), findsNothing);

      await tester.tap(find.text('Service 2'));
      await tester.pumpAndSettle();

      expect(find.text('Class 1'), findsOneWidget);
      expect(find.text('Class 2'), findsNothing);
      expect(find.text('Group 1'), findsOneWidget);
      expect(find.text('Group 2'), findsOneWidget);
      expect(find.text('Fisrt Primary'), findsNothing);

      // Dispose the main widget:
      await tester.pumpWidget(Container());
      flushVisibilityDetectors();
    },
  );

  testWidgets(
    'ServicesHierarchyList => Hierachy Expansion => custom builders',
    (tester) async {
      final mock = _createPaginatableStreamMock();

      await tester.pumpWidgetBuilder(
        ServicesHierarchyList(
          autoDisposeController: true,
          classBuilder: (
            context, {
            required $class,
            required service,
            required studyYear,
          }) =>
              IgnorePointer(
            child: Column(
              key: ValueKey($class.name),
              mainAxisSize: MainAxisSize.min,
              children: [
                ViewableObjectWidget($class),
                ViewableObjectWidget(service),
                ViewableObjectWidget(studyYear),
              ],
            ),
          ),
          groupBuilder: (p0, {required group, required service}) =>
              IgnorePointer(
            child: Column(
              key: ValueKey(group.name),
              mainAxisSize: MainAxisSize.min,
              children: [
                ViewableObjectWidget(group),
                ViewableObjectWidget(service),
              ],
            ),
          ),
          serviceBuilder: (
            context,
            service, {
            onLongPress,
            onTap,
            subtitle,
            trailing,
          }) =>
              Text(
            service.name,
            key: ValueKey(service.name),
          ),
          studyYearBuilder: (p0, {required service, required studyYear}) =>
              IgnorePointer(
            child: Column(
              key: ValueKey(studyYear.name),
              mainAxisSize: MainAxisSize.min,
              children: [
                ViewableObjectWidget(service),
                ViewableObjectWidget(studyYear),
              ],
            ),
          ),
          listController: ListControllerBase(
            objectsPaginatableStream: mock,
          ),
        ),
      );

      expect(find.byKey(const Key('Class 1')), findsNothing);
      expect(find.byKey(const Key('Class 2')), findsNothing);
      expect(find.byKey(const Key('Group 1')), findsNothing);
      expect(find.byKey(const Key('Group 2')), findsNothing);
      expect(find.byKey(const Key('Fisrt Primary')), findsNothing);

      await tester.tap(find.byKey(const Key('Service 1')));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('Class 1')), findsNothing);
      expect(find.byKey(const Key('Class 2')), findsNothing);
      expect(find.byKey(const Key('Group 1')), findsOneWidget);
      expect(find.byKey(const Key('Group 2')), findsOneWidget);
      expect(find.byKey(const Key('Fisrt Primary')), findsNothing);

      await tester.tap(find.byKey(const Key('Service 1')));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('Class 1')), findsNothing);
      expect(find.byKey(const Key('Class 2')), findsNothing);
      expect(find.byKey(const Key('Group 1')), findsNothing);
      expect(find.byKey(const Key('Group 2')), findsNothing);
      expect(find.byKey(const Key('Fisrt Primary')), findsNothing);

      await tester.tap(find.byKey(const Key('Service 2')));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('Class 1')), findsOneWidget);
      expect(find.byKey(const Key('Class 2')), findsNothing);
      expect(find.byKey(const Key('Group 1')), findsOneWidget);
      expect(find.byKey(const Key('Group 2')), findsOneWidget);
      expect(find.byKey(const Key('Fisrt Primary')), findsNothing);

      // Dispose the main widget:
      await tester.pumpWidget(Container());
      flushVisibilityDetectors();
    },
  );
}

MockPaginatableStreamBase _createPaginatableStreamMock() {
  final mock = MockPaginatableStreamBase();

  when(mock.canPaginateForward).thenReturn(false);
  when(mock.limit).thenReturn(2);
  when(mock.stream).thenAnswer(
    (_) => BehaviorSubject.seeded(
      [
        Service(
          id: 'id',
          name: 'Service 1',
          classes: [
            Class(
              id: 'id',
              name: 'Class 1',
              studyYear: StudyYear(order: 1, name: 'First Primary'),
            ),
            Class(
              id: 'id',
              name: 'Class 2',
              studyYear: StudyYear(order: 1, name: 'First Primary'),
            ),
          ],
          groups: [
            Group(id: 'id', name: 'Group 1'),
            Group(id: 'id', name: 'Group 2'),
          ],
        ),
        Service(
          id: 'id',
          name: 'Service 2',
          classes: [
            Class(
              id: 'id',
              name: 'Class 1',
              studyYear: StudyYear(order: 1, name: 'First Primary'),
            ),
          ],
          groups: [
            Group(id: 'id', name: 'Group 1'),
            Group(id: 'id', name: 'Group 2'),
          ],
        ),
      ],
    ),
  );
  return mock;
}
