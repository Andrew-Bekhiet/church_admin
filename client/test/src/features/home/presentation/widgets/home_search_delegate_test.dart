import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../support/fake_home_dao.dart';

void main() {
  late FakeHomeDao dao;
  late HomeSearchDelegate delegate;

  setUp(() {
    dao = FakeHomeDao();
    delegate = HomeSearchDelegate(dao);
  });

  group('HomeSearchDelegate', () {
    testWidgets('does not search while the user is still typing', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Material(child: Builder(builder: delegate.buildResults)),
        ),
      );

      delegate.query = 'test';
      await tester.pump(HomeSearchDelegate.debounceDuration ~/ 3);
      delegate.query = 'test query';
      await tester.pump(HomeSearchDelegate.debounceDuration ~/ 3);

      expect(dao.queries, isEmpty);

      delegate.dispose();
    });

    testWidgets('searches once with the latest query after the debounce', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Material(child: Builder(builder: delegate.buildResults)),
        ),
      );

      delegate.query = 'test';
      await tester.pump(HomeSearchDelegate.debounceDuration ~/ 3);
      delegate.query = 'test query';
      await tester.pump(HomeSearchDelegate.debounceDuration);

      expect(dao.queries, [delegate.query]);

      delegate.dispose();
    });

    testWidgets('an empty query prompts the user to start typing', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Material(child: Builder(builder: delegate.buildSuggestions)),
        ),
      );

      expect(find.text('ابدأ بالكتابة للبحث ...'), findsOneWidget);

      delegate.dispose();
    });

    testWidgets('a search without matches says nothing was found', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Material(child: Builder(builder: delegate.buildResults)),
        ),
      );

      delegate.query = 'nobody';
      await tester.pump(HomeSearchDelegate.debounceDuration);
      await tester.pump();

      expect(find.text('لم يتم العثور على أي نتائج'), findsOneWidget);

      delegate.dispose();
    });

    test('result sections keep a fixed order regardless of the response', () {
      const results = HomeSearchResults(
        stores: [Store(id: '1', name: 'store')],
        streets: [Street(id: '2', name: 'street')],
        families: [Family(id: '3', name: 'family')],
        areas: [Area(id: '4', name: 'area')],
      );

      expect(results.nonEmptySections.map((section) => section.$1), [
        Area,
        Family,
        Street,
        Store,
      ]);
    });

    test('nonEmptySections filters correctly', () {
      const family = Family(id: '1', name: 'Test');
      const results = HomeSearchResults(families: [family]);

      expect(results.nonEmptySections.length, 1);
      expect(results.nonEmptySections.first.$1, Family);
      expect(results.nonEmptySections.first.$2.length, 1);
      expect(results.nonEmptySections.first.$2.first.id, family.id);
      expect(results.nonEmptySections.first.$2.first.name, family.name);
    });
  });
}
