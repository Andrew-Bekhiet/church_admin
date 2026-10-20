import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'e2e_backend.dart';
import 'e2e_widget_tester.dart';

class ListSortRobot {
  static const _storedSortTimeout = Duration(seconds: 30);
  static const _storedSortPollInterval = Duration(milliseconds: 500);
  static const _collapseHeaderDrag = Offset(0, -600);

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

  Future<void> openStreetFromList(String id) => _openFromList(
    id,
    find.byWidgetPredicate(
      (widget) => widget is ViewStreet && widget.streetId == id,
    ),
  );

  Future<void> openFamilyFromList(String id) => _openFromList(
    id,
    find.byWidgetPredicate(
      (widget) => widget is ViewFamily && widget.familyId == id,
    ),
  );

  Future<void> openClassFromList(String id) => _openFromList(
    id,
    find.byWidgetPredicate(
      (widget) => widget is ViewClass && widget.classId == id,
    ),
  );

  Future<void> showTab(int index) async {
    await tester.tapOn(find.byKey(ChipTabBarKeys.tab(index)));
  }

  Future<void> reverseFirstSortKey() async {
    final sheet = find.byType(ListArrangementSheet);

    await tester.tapOn(find.byKey(TabAwareSortButtonKeys.button));
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

  Future<void> expectStoredSorts(
    String uid,
    Map<OrderByPreferenceKey, List<OrderBy>> sorts,
  ) async {
    final expected = {
      for (final MapEntry(:key, :value) in sorts.entries)
        key.storageKey: jsonDecode(
          jsonEncode([for (final orderBy in value) orderBy.toJson()]),
        ),
    };
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
    final rows = find.byWidgetPredicate(
      (widget) =>
          widget is ViewableObjectListIndexedItem &&
          widget.items.any((item) => _idOf(item) == id),
    );

    return switch (rows.evaluate().firstOrNull?.widget) {
      final ViewableObjectListIndexedItem row => [
        for (final item in row.items) ?_idOf(item),
      ],
      _ => null,
    };
  }

  String? _idOf(Viewable item) => item is ViewableWithID ? item.id : null;

  Future<void> _push(String location, Finder screen) async {
    unawaited($appRouter.push(location));
    await tester.waitFor(screen);
  }

  /// List rows sit below the expanded app bar, so the header is collapsed
  /// first; the list's off-screen prototype row is never hit-testable.
  Future<void> _openFromList(String id, Finder screen) async {
    await tester.drag(
      find.byType(NestedScrollView).hitTestable().first,
      _collapseHeaderDrag,
    );
    await tester.tapOn(tester.viewableObject(id).hitTestable());
    await tester.waitFor(screen);
  }
}
