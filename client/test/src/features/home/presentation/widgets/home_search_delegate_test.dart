import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_search_delegate_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<HomeDAO>(),
  MockSpec<ViewableObjectService>(),
  MockSpec<ImageUrlCacheService>(),
  MockSpec<UserPreferencesService>(),
])
void main() {
  setUp(
    () => initGlobalProviderContainer([
      goRouterRefreshStreamProvider.overrideWithValue(
        GoRouterRefreshStream(const Stream.empty()),
      ),
      viewableObjectServiceProvider.overrideWith(
        (ref) => ViewableObjectService(router: GoRouter(routes: [])),
      ),
      userPreferencesServiceProvider.overrideWithValue(
        MockUserPreferencesService(),
      ),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  group('HomeSearchDelegate', () {
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
