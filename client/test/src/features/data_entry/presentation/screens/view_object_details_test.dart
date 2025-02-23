import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/src/framework.dart';

import './view_object_details_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<UserSettingsService>(),
    MockSpec<ImageUrlCacheService>(),
    MockSpec<ViewableObjectService>(),
    MockSpec<AuthService>(),
  ],
)
void main() {
  group(
    'ViewObjectDetails =>',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      final area = Area(id: 'id', name: 'name', color: Colors.purple);

      group(
        'Structure',
        () {
          testWidgets(
            'Normal',
            (tester) async {
              await _pumpWidget(tester, area);

              expect(find.byKey(const ValueKey('notFound')), findsNothing);
              expect(
                find.descendant(
                  of: find.byType(ViewableObjectAppBar),
                  matching: find.text(area.name),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewableObjectAppBar),
                  matching: find.byType(ImageObjectWidget),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('editButton')),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('details')),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byType(ChipTabBar),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('personsTab')),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('floatingActionButton')),
                ),
                findsOneWidget,
              );
            },
          );

          testWidgets(
            'Deleted/Not Found',
            (tester) async {
              final streamController = StreamController<Area?>()..add(null);
              addTearDown(streamController.close);

              await _pumpWidget(
                tester,
                area,
                streamController: streamController,
              );

              expect(find.byKey(const ValueKey('notFound')), findsOneWidget);
              expect(
                find.descendant(
                  of: find.byType(ViewableObjectAppBar),
                  matching: find.text(area.name),
                ),
                findsNothing,
              );
              expect(
                find.widgetWithIcon(ViewableObjectAppBar, Symbols.person),
                findsNothing,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('editButton')),
                ),
                findsNothing,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('details')),
                ),
                findsNothing,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byType(ChipTabBar),
                ),
                findsNothing,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('personsTab')),
                ),
                findsNothing,
              );
              expect(
                find.descendant(
                  of: find.byType(ViewObjectDetails<Area>),
                  matching: find.byKey(const ValueKey('floatingActionButton')),
                ),
                findsNothing,
              );
            },
          );
        },
      );

      testGoldens(
        'Snapping',
        (tester) async {
          const size = Size(1080, 1920);
          final expandedHeight = size.width - kToolbarHeight;

          await _pumpWidget(tester, area, size: size);

          await screenMatchesGolden(
            tester,
            'view_object_details/structure/expanded',
          );

          for (final percent in ViewObjectDetails.snapPositions) {
            await tester.drag(
              find.byType(ViewObjectDetails<Area>),
              Offset(0, -expandedHeight * percent),
            );
            await tester.pump(ViewObjectDetails.snapDuration);

            await screenMatchesGolden(
              tester,
              'view_object_details/structure/collapsed_$percent',
            );

            await tester.drag(
              find.byType(ViewObjectDetails<Area>),
              Offset(0, expandedHeight),
            );
          }

          // Snaps to predefined positions
          const threshold = 15;
          for (final percent in ViewObjectDetails.snapPositions) {
            await tester.drag(
              find.byType(ViewObjectDetails<Area>),
              Offset(0, -expandedHeight * percent + threshold),
            );
            await tester.pump(ViewObjectDetails.snapDuration);

            await screenMatchesGolden(
              tester,
              'view_object_details/structure/collapsed_$percent',
            );

            await tester.drag(
              find.byType(ViewObjectDetails<Area>),
              Offset(0, expandedHeight),
            );
          }
        },
      );
    },
  );
}

Future<void> _pumpWidget(
  WidgetTester tester,
  Area area, {
  StreamController<Area?>? streamController,
  Size? size,
}) async {
  size ??= const Size(1080, 1920);
  if (streamController == null) {
    streamController = StreamController<Area?>()..add(area);
    addTearDown(streamController.close);
  }
  await tester.pumpWidgetBuilder(
    ViewObjectDetails<Area>(
      object: area,
      objectId: area.id,
      objectStream: streamController.stream,
      notFoundBuilder: (context) =>
          const Placeholder(key: ValueKey('notFound')),
      editButtonBuilder: (context, person) => const Icon(
        Symbols.edit,
        key: ValueKey('editButton'),
      ),
      detailsBuilder: (context, person) => const SliverToBoxAdapter(
        child: Placeholder(
          key: ValueKey('details'),
          fallbackHeight: 70,
        ),
      ),
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        tabs: [
          (
            label: 'المخدومين',
            icon: Symbols.person,
          ),
        ],
      ),
      childrenTypes: const [Person],
      tabsContentBuilders: {
        Person: (context) => const Placeholder(key: ValueKey('personsTab')),
      },
      floatingActionButtonBuilder: (context, tabController, person) =>
          FloatingActionButton(
        key: const ValueKey('floatingActionButton'),
        child: const Icon(Symbols.add),
        onPressed: () {},
      ),
    ),
    surfaceSize: size,
    wrapper: materialAppWrapper(
      localeOverrides: [const Locale('ar', 'EG')],
      localizations: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemingService.getDefault(
        isDarkOverride: false,
        greatFeastThemeOverride: false,
      ),
    ),
  );
}

void _setUp() {
  initGlobalProviderContainer([
    _mockUserSettingsService(),
    _mockImageUrlCacheService(),
    _mockViewableObjectService(),
    _mockAuthService(),
  ]);
}

Override _mockUserSettingsService() {
  final mock = MockUserSettingsService();

  when(mock.darkTheme).thenReturn(false);
  when(mock.greatFeastTheme).thenReturn(false);

  return userSettingsServiceProvider.overrideWithValue(mock);
}

Override _mockImageUrlCacheService() {
  final mock = MockImageUrlCacheService();

  when(mock.getImageUrl(any)).thenAnswer((_) async => 'url');

  return imageUrlCacheServiceProvider.overrideWithValue(mock);
}

Override _mockViewableObjectService() {
  final mock = MockViewableObjectService();

  when(mock.getDefaultIconFor<Person>(any)).thenReturn(Symbols.person);

  return viewableObjectServiceProvider.overrideWithValue(mock);
}

Override _mockAuthService() {
  final mock = MockAuthService();

  when(mock.currentUser).thenReturn(
    User(
      uid: 'id',
      name: 'name',
      permissions: const PermissionsSet.fromSet({UserPermission.writeAllData}),
    ),
  );

  return authServiceProvider.overrideWithValue(mock);
}
