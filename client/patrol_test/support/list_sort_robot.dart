import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'e2e_backend.dart';
import 'e2e_widget_tester.dart';

class ListSortRobot {
  static const _storedSortTimeout = Duration(seconds: 30);
  static const _storedSortPollInterval = Duration(milliseconds: 500);

  static Map<String, List<Object?>> withFirstKeysReversed(
    Map<String, List<Object?>> sorts,
  ) => {
    for (final MapEntry(:key, :value) in sorts.entries)
      key: [
        {...value.first! as Map, 'value': 'desc'},
        ...value.skip(1),
      ],
  };

  final WidgetTester tester;

  const ListSortRobot(this.tester);

  Future<void> openArea(String id) => _push(
    ViewAreaRoute(id: id).location,
    find.byWidgetPredicate(
      (widget) => widget is ViewArea && widget.areaId == id,
    ),
  );

  Future<void> openService(String id) => _push(
    ViewServiceRoute(id: id).location,
    find.byWidgetPredicate(
      (widget) => widget is ViewService && widget.serviceId == id,
    ),
  );

  Future<void> openStreet(String id) => _push(
    ViewStreetRoute(id: id).location,
    find.byWidgetPredicate(
      (widget) => widget is ViewStreet && widget.streetId == id,
    ),
  );

  Future<void> openFamily(String id) => _push(
    ViewFamilyRoute(id: id).location,
    find.byWidgetPredicate(
      (widget) => widget is ViewFamily && widget.familyId == id,
    ),
  );

  Future<void> openClass(String id) => _push(
    ViewClassRoute(id: id).location,
    find.byWidgetPredicate(
      (widget) => widget is ViewClass && widget.classId == id,
    ),
  );

  Future<void> showTab(int index) async {
    await tester.tapOn(_onTopScreen(find.byKey(ChipTabBarKeys.tab(index))));
  }

  Future<void> reverseFirstSortKey() async {
    final sheet = find.byType(ListArrangementSheet);

    await tester.tapOn(_onTopScreen(find.byKey(TabAwareSortButtonKeys.button)));
    await tester.tapOn(find.byKey(OrderByWidgetKeys.directionToggle));
    await tester.tapOn(find.byKey(ListArrangementSheetKeys.save));
    await tester.waitForAbsent(sheet);
  }

  /// Waits for the list on the selected tab to show exactly [ids], in order.
  Future<void> expectListOrder(List<String> ids) async {
    final deadline = DateTime.now().add(E2eWidgetTester.defaultTimeout);
    List<String>? shownIds;

    while (!const ListEquality<String>().equals(shownIds, ids)) {
      if (DateTime.now().isAfter(deadline)) {
        throw tester.failureShowingScreen(
          'The list showed $shownIds instead of $ids',
        );
      }
      await tester.pump(E2eWidgetTester.pollInterval);
      shownIds = _shownIdsOfListContaining(ids.first);
    }
  }

  Future<void> expectEachTabOrder(List<List<String>> idsByTab) async {
    for (final (tab, ids) in idsByTab.indexed) {
      await showTab(tab);
      await expectListOrder(ids);
    }
  }

  /// Reverses the first sort key of every tab, checking the order before and
  /// after, and leaves each tab sorted as [idsByTab] reversed.
  Future<void> reverseEachTab(List<List<String>> idsByTab) async {
    for (final (tab, ids) in idsByTab.indexed) {
      await showTab(tab);
      await expectListOrder(ids);
      await reverseFirstSortKey();
      await expectListOrder(ids.reversed.toList());
    }
  }

  /// The sort each list of [lists] has stored for the user, by storage key.
  Future<Map<String, List<Object?>>> storedSorts(
    String uid,
    List<OrderByPreferenceKey> lists,
  ) async {
    final stored = await E2eBackend.orderByPreferencesOf(uid);

    return {
      for (final list in lists)
        list.storageKey: switch (stored[list.storageKey]) {
          final List<Object?> sort => sort,
          final missing => throw TestFailure(
            'No stored sort for ${list.storageKey}: $missing',
          ),
        },
    };
  }

  Future<void> expectStoredSorts(
    String uid,
    Map<String, List<Object?>> expected,
  ) async {
    final deadline = DateTime.now().add(_storedSortTimeout);
    var stored = <String, dynamic>{};

    while (!_storesAll(stored, expected)) {
      if (DateTime.now().isAfter(deadline)) {
        throw TestFailure('Stored sorts $stored do not include $expected');
      }
      await Future<void>.delayed(_storedSortPollInterval);
      stored = await E2eBackend.orderByPreferencesOf(uid);
    }
  }

  bool _storesAll(Map<String, dynamic> stored, Map<String, dynamic> expected) =>
      expected.entries.every(
        (entry) => const DeepCollectionEquality().equals(
          stored[entry.key],
          entry.value,
        ),
      );

  List<String>? _shownIdsOfListContaining(String id) {
    final rows = _onTopScreen(
      find.byWidgetPredicate(
        (widget) =>
            widget is ViewableObjectListIndexedItem &&
            widget.items.any((item) => _idOf(item) == id),
      ),
    );

    return switch (rows.evaluate().firstOrNull?.widget) {
      final ViewableObjectListIndexedItem row => [
        for (final item in row.items) ?_idOf(item),
      ],
      _ => null,
    };
  }

  /// While a pushed screen animates in, the screen below it is still on
  /// stage with the same keys; the route pushed last is built last.
  Finder _onTopScreen(Finder finder) => find.descendant(
    of: find.byWidgetPredicate((widget) => widget is ViewObjectDetails).last,
    matching: finder,
  );

  String? _idOf(Viewable item) => item is ViewableWithID ? item.id : null;

  Future<void> _push(String location, Finder screen) async {
    unawaited($appRouter.push(location));
    await tester.waitFor(screen);
    await _scrollTabsIntoView();
  }

  /// The tabs sit below the expanded app bar and the screen's details, out of
  /// the built area on screens with long details. Jumping the outer scroll to
  /// its end pins them under the app bar, past the screen's scroll snapping.
  Future<void> _scrollTabsIntoView() async {
    final screenBody = await tester.waitFor(
      _onTopScreen(find.byType(NestedScrollView)),
    );
    final outerScroll = tester
        .state<NestedScrollViewState>(screenBody.first)
        .outerController;

    final firstTab = _onTopScreen(
      find.byKey(ChipTabBarKeys.tab(0)),
    ).hitTestable();
    final deadline = DateTime.now().add(E2eWidgetTester.defaultTimeout);
    bool isScrolledToTabs() =>
        firstTab.evaluate().isNotEmpty &&
        outerScroll.position.pixels == outerScroll.position.maxScrollExtent;

    while (!isScrolledToTabs()) {
      if (DateTime.now().isAfter(deadline)) {
        throw tester.failureShowingScreen(
          'The screen tabs never came into view',
        );
      }
      outerScroll.jumpTo(outerScroll.position.maxScrollExtent);
      await tester.pump(E2eWidgetTester.pollInterval);
    }
  }
}
