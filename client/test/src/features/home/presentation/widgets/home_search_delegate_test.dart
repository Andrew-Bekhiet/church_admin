import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../support/fake_home_dao.dart';
import '../../support/home_search_page_harness.dart';

void main() {
  late FakeHomeDao dao;

  setUp(() {
    dao = FakeHomeDao();
  });

  group('HomeSearchDelegate', () {
    testWidgets('does not search while the user is still typing', (
      tester,
    ) async {
      final delegate = await HomeSearchPageHarness.open(tester, dao);

      await HomeSearchPageHarness.type(tester, 'test');
      await tester.pump(HomeSearchCubit.debounceDuration ~/ 3);
      await HomeSearchPageHarness.type(tester, 'test query');
      await tester.pump(HomeSearchCubit.debounceDuration ~/ 3);

      expect(dao.queries, isEmpty);

      unawaited(delegate.searchCubit.close());
      await tester.pump();
    });

    testWidgets('searches once with the latest query after the debounce', (
      tester,
    ) async {
      final delegate = await HomeSearchPageHarness.open(tester, dao);

      await HomeSearchPageHarness.type(tester, 'test');
      await tester.pump(HomeSearchCubit.debounceDuration ~/ 3);
      await HomeSearchPageHarness.type(tester, 'test query');
      await tester.pump(HomeSearchCubit.debounceDuration);

      expect(dao.queries, [delegate.query]);
    });

    testWidgets('an empty query prompts the user to start typing', (
      tester,
    ) async {
      await HomeSearchPageHarness.open(tester, dao);

      expect(find.text('ابدأ بالكتابة للبحث ...'), findsOneWidget);
    });

    testWidgets('a search without matches says nothing was found', (
      tester,
    ) async {
      await HomeSearchPageHarness.open(tester, dao);

      await HomeSearchPageHarness.type(tester, 'nobody');
      await tester.pump(HomeSearchCubit.debounceDuration);
      await tester.pump();

      expect(find.text('لم يتم العثور على أي نتائج'), findsOneWidget);
    });
  });
}
