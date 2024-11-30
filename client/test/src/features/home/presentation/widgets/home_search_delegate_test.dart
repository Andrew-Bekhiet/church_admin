import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils.dart';
import 'home_search_delegate_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<HomeDAO>(),
  MockSpec<ViewableObjectService>(),
  MockSpec<ImageUrlCacheService>(),
  MockSpec<UserSettingsService>(),
])
Future<void> main() async {
  await loadAppFonts();
  setUp(
    () => initGlobalProviderContainer([
      goRouterRefreshStreamProvider
          .overrideWithValue(GoRouterRefreshStream(const Stream.empty())),
      viewableObjectServiceProvider.overrideWith(
        (ref) => ViewableObjectService(
          router: GoRouter(routes: []),
          userSettingsService: ref.watch(userSettingsServiceProvider),
        ),
      ),
      userSettingsServiceProvider.overrideWithValue(MockUserSettingsService()),
      imageUrlCacheServiceProvider
          .overrideWithValue(MockImageUrlCacheService()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  group('HomeSearchDelegate', () {
    testGoldens('Structure', (tester) async {
      final mockHomeDAO = MockHomeDAO();

      when(mockHomeDAO.searchAll(any)).thenAnswer(
        (_) async => HomeSearchResults(
          areas: [
            Area(id: '1', name: 'Test Area 1'),
            Area(id: '2', name: 'Test Area 2'),
          ],
          families: [
            Family(id: '1', name: 'Test Family'),
          ],
        ),
      );
      when(mockHomeDAO.searchAll('nonexistent')).thenAnswer(
        (_) async => const HomeSearchResults(),
      );

      // final shownDelegates = <HomeSearchDelegate>{};

      final emptySearchDelegate = HomeSearchDelegate(mockHomeDAO);
      final resultsDelegate = HomeSearchDelegate(mockHomeDAO);
      final noResultsDelegate = HomeSearchDelegate(mockHomeDAO);

      resultsDelegate.query = 'test';
      noResultsDelegate.query = 'nonexistent';

      final deviceBuilder = DeviceBuilder(
        wrap: materialAppWithThemeAndLocale(),
      )
        ..overrideDevicesForAllScenarios(
          devices: [Device.iphone11],
        )
        ..addScenario(
          name: 'Empty Search',
          widget: Scaffold(
            body: Builder(
              builder: emptySearchDelegate.buildSuggestions,
            ),
          ),
          onCreate: (key) async {
            await tester.pump(HomeSearchDelegate.debounceDuration);

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Area 1',
                ),
              ),
              findsNothing,
            );

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Area 2',
                ),
              ),
              findsNothing,
            );

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Family',
                ),
              ),
              findsNothing,
            );
          },
        )
        ..addScenario(
          name: 'With Results',
          widget: Material(
            child: Builder(
              builder: resultsDelegate.buildResults,
            ),
          ),
          onCreate: (key) async {
            await tester.pump(HomeSearchDelegate.debounceDuration);

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Area 1',
                ),
              ),
              findsOneWidget,
            );

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Area 2',
                ),
              ),
              findsOneWidget,
            );

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Family',
                ),
              ),
              findsOneWidget,
            );
          },
        )
        ..addScenario(
          name: 'No Results',
          widget: Material(
            child: Builder(
              builder: noResultsDelegate.buildResults,
            ),
          ),
          onCreate: (key) async {
            await tester.pump(HomeSearchDelegate.debounceDuration);

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Area 1',
                ),
              ),
              findsNothing,
            );

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Area 2',
                ),
              ),
              findsNothing,
            );

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.widgetWithText(
                  ViewableObjectWidget,
                  'Test Family',
                ),
              ),
              findsNothing,
            );
          },
        );

      await tester.pumpDeviceBuilder(deviceBuilder);

      await screenMatchesGolden(tester, 'home_search_delegate');

      emptySearchDelegate.dispose();
      resultsDelegate.dispose();
      noResultsDelegate.dispose();
    });

    testWidgets('Search debouncing', (tester) async {
      final mockHomeDAO = MockHomeDAO();
      final delegate = HomeSearchDelegate(mockHomeDAO);

      await tester.pumpWidget(
        MaterialApp(
          home: Material(
            child: Builder(
              builder: delegate.buildResults,
            ),
          ),
        ),
      );

      delegate.query = 'test';
      await tester.pump(HomeSearchDelegate.debounceDuration ~/ 3);
      delegate.query = 'test query';
      await tester.pump(HomeSearchDelegate.debounceDuration ~/ 3);

      verifyNever(mockHomeDAO.searchAll(any));

      await tester.pump(HomeSearchDelegate.debounceDuration);

      verify(mockHomeDAO.searchAll('test query')).called(1);

      delegate.dispose();
    });

    test('NonEmptySections filters correctly', () {
      final results = HomeSearchResults.fromJson(const {
        'areas': [],
        'families': [
          {'id': '1', 'name': 'Test'},
        ],
        'persons': [],
      });

      expect(results.nonEmptySections.length, 1);
      expect(results.nonEmptySections.first.$1, Family);
      expect(results.nonEmptySections.first.$2.length, 1);
      expect(results.nonEmptySections.first.$2.first.id, '1');
      expect(results.nonEmptySections.first.$2.first.name, 'Test');
    });
  });
}
