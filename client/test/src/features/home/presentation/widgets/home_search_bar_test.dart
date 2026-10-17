import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils.dart';
import '../../support/fake_home_dao.dart';
import '../../support/home_search_bar_harness.dart';

void main() {
  late FakeHomeDao dao;
  late HomeSearchBarHarness harness;

  setUp(() {
    dao = FakeHomeDao();
    harness = HomeSearchBarHarness(dao);
  });

  tearDown(defaultTearDown);

  group('HomeSearchBar', () {
    testWidgets('shows the search hint while the query is empty', (
      tester,
    ) async {
      await harness.pump(tester);

      expect(find.text('بحث ...'), findsOneWidget);
    });

    testWidgets('an empty query prompts the user to start typing', (
      tester,
    ) async {
      await harness.pump(tester);

      await harness.openView(tester);

      expect(find.text('ابدأ بالكتابة للبحث ...'), findsOneWidget);
    });

    testWidgets('does not search while the user is still typing', (
      tester,
    ) async {
      await harness.pump(tester);
      await harness.openView(tester);

      await harness.type(tester, 'test');
      await tester.pump(HomeSearchCubit.debounceDuration ~/ 3);
      await harness.type(tester, 'test query');
      await tester.pump(HomeSearchCubit.debounceDuration ~/ 3);

      expect(dao.queries, isEmpty);
    });

    testWidgets('searches once with the latest query after the debounce', (
      tester,
    ) async {
      const latestQuery = 'test query';
      await harness.pump(tester);
      await harness.openView(tester);

      await harness.type(tester, 'test');
      await tester.pump(HomeSearchCubit.debounceDuration ~/ 3);
      await harness.type(tester, latestQuery);
      await tester.pump(HomeSearchCubit.debounceDuration);

      expect(dao.queries, [latestQuery]);
    });

    testWidgets('a search without matches says nothing was found', (
      tester,
    ) async {
      await harness.pump(tester);
      await harness.openView(tester);

      await harness.type(tester, 'nobody');
      await tester.pump(HomeSearchCubit.debounceDuration);
      await tester.pump();

      expect(find.text('لم يتم العثور على أي نتائج'), findsOneWidget);
    });

    testWidgets('a search with matches lists them', (tester) async {
      const family = Family(id: '1', name: 'عائلة مينا');
      dao.results = const HomeSearchResults(families: [family]);
      await harness.pump(tester);
      await harness.openView(tester);

      await harness.type(tester, 'mina');
      await tester.pump(HomeSearchCubit.debounceDuration);
      await tester.pump();

      expect(find.text(family.name), findsOneWidget);
    });
  });
}
