import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:rxdart_ext/single.dart';

import '../../utils.dart';
import 'services_hierarchy_list_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<PaginatableStreamBase<Service>>(),
    MockSpec<GoRouter>(),
    MockSpec<ImageUrlCacheService>(),
    MockSpec<UserSettingsService>(),
  ],
)
void main() {
  loadAppFonts();

  setUp(_setUp);

  tearDown(resetGlobalProviderContainer);

  testGoldens(
    'ServicesHierarchyList => Goldens test',
    (tester) async {
      final mock = _createPaginatableStreamMock();

      final viewableObjectListController = ViewableObjectListController(
        objectsPaginatableStream: mock,
      );

      final deviceBuilder = DeviceBuilder(
        wrap: materialAppWrapper(
          theme: ThemingService.getDefault(
            isDarkOverride: false,
            greatFeastThemeOverride: false,
          ),
        ),
      )
        ..addScenario(
          widget: ServicesHierarchyList(
            listController: viewableObjectListController,
          ),
          name: 'collapsed',
        )
        ..addScenario(
          widget: ServicesHierarchyList(
            listController: viewableObjectListController,
          ),
          name: 'service_1_expanded',
          onCreate: (key) async => tester.tap(
            find.descendant(
              of: find.byKey(key),
              matching: find.text('Service 1'),
            ),
          ),
        )
        ..addScenario(
          widget: ServicesHierarchyList(
            listController: viewableObjectListController,
          ),
          name: 'study_year_expanded',
          onCreate: (key) async {
            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('Service 1'),
              ),
            );

            await tester.pumpAndSettle();

            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('First Primary'),
              ),
            );
          },
        )
        ..addScenario(
          widget: ServicesHierarchyList(
            listController: viewableObjectListController,
          ),
          name: 'service_2_expanded',
          onCreate: (key) async {
            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('Service 1'),
              ),
            );

            await tester.pumpAndSettle();

            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('First Primary'),
              ),
            );

            await tester.pumpAndSettle();

            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('Service 2'),
              ),
            );
          },
        );

      await tester.pumpDeviceBuilder(deviceBuilder);

      await screenMatchesGolden(tester, 'services_hierarchy_list');

      // Dispose the main widget:
      await tester.pumpWidget(Container());
      flushVisibilityDetectors();

      unawaited(viewableObjectListController.dispose());
    },
  );

  testWidgets(
    'ServicesHierarchyList => Hierachy Expansion',
    (tester) async {
      final mock = _createPaginatableStreamMock();

      final viewableObjectListController = ViewableObjectListController(
        objectsPaginatableStream: mock,
      );

      await tester.pumpWidgetBuilder(
        ServicesHierarchyList(
          listController: viewableObjectListController,
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
      unawaited(viewableObjectListController.dispose());
    },
  );

  testWidgets(
    'ServicesHierarchyList => Hierachy Expansion => custom builders',
    (tester) async {
      final mock = _createPaginatableStreamMock();

      final viewableObjectListController = ViewableObjectListController(
        objectsPaginatableStream: mock,
      );

      await tester.pumpWidgetBuilder(
        ServicesHierarchyList(
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
          serviceTrailingBuilder: (
            context,
            service, {
            onLongPress,
            onTap,
            subtitle,
            trailing,
          }) =>
              Icon(
            Symbols.ac_unit,
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
          listController: viewableObjectListController,
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
      unawaited(viewableObjectListController.dispose());
    },
  );
}

MockPaginatableStreamBase _createPaginatableStreamMock() {
  final mock = MockPaginatableStreamBase();

  when(mock.hasMore).thenReturn(false);
  when(mock.pageSize).thenReturn(2);
  when(
    mock.listen(
      captureAny,
      onDone: captureAnyNamed('onDone'),
      onError: captureAnyNamed('onError'),
      cancelOnError: captureAnyNamed('cancelOnError'),
    ),
  ).thenAnswer(
    (i) => BehaviorSubject.seeded(
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
          groups: const [
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
          groups: const [
            Group(id: 'id', name: 'Group 1'),
            Group(id: 'id', name: 'Group 2'),
          ],
        ),
      ],
    ).listen(
      i.positionalArguments.first,
      onDone: i.namedArguments[#onDone],
      onError: i.namedArguments[#onError],
      cancelOnError: i.namedArguments[#cancelOnError],
    ),
  );
  when(mock.onLoadingChanged)
      .thenAnswer((_) => Stream.value(false).shareValue());
  return mock;
}

Future<void> _setUp() async {
  final overrides = [
    await _setUpImageUrlCacheService(),
    _setUpUserSettingsService(),
    _setUpCAViewableObjectService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpUserSettingsService() {
  return userSettingsServiceProvider
      .overrideWithValue(MockUserSettingsService());
}

Override _setUpCAViewableObjectService() {
  return viewableObjectServiceProvider.overrideWith(
    (ref) => ViewableObjectService(router: MockGoRouter()),
  );
}

Future<Override> _setUpImageUrlCacheService() async {
  return imageUrlCacheServiceProvider.overrideWithValue(
    MockImageUrlCacheService(),
  );
}
