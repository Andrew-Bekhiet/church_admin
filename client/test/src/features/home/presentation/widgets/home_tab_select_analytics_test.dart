import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../utils.dart';
import '../../support/home_screen_harness.dart';

void main() {
  late HomeScreenHarness harness;
  final tabs = HomeMode.sundaySchool.tabs;
  final firstTab = tabs.first;
  final secondTab = tabs[1];

  setUp(() => harness = HomeScreenHarness());

  tearDown(defaultTearDown);

  Iterable<HomeTabSelect> tabSelects() =>
      harness.analytics.trackedEvents.whereType<HomeTabSelect>();

  Matcher isTabSelect(HomeTab tab, HomeTabSelectMethod method) =>
      isA<HomeTabSelect>()
          .having((event) => event.tab, 'tab', tab)
          .having((event) => event.method, 'method', method);

  group('swiping', () {
    testWidgets('a full swipe to the next tab tracks one swipe to that tab', (
      tester,
    ) async {
      await harness.pump(tester);

      await tester.fling(find.byType(PageView), const Offset(400, 0), 1000);
      await tester.pumpAndSettle();

      expect(
        tabSelects(),
        [isTabSelect(secondTab, HomeTabSelectMethod.swipe)],
      );
      await harness.unmount(tester);
    });

    testWidgets('a partial drag that snaps back tracks nothing', (
      tester,
    ) async {
      await harness.pump(tester);

      await tester.drag(find.byType(PageView), const Offset(100, 0));
      await tester.pumpAndSettle();

      expect(harness.selectedIndexOf(tester), 0);
      expect(tabSelects(), isEmpty);
      await harness.unmount(tester);
    });
  });

  group('tapping', () {
    testWidgets('the already-selected destination tracks nothing', (
      tester,
    ) async {
      await harness.pump(tester);

      await tester.tap(
        find.byKey(HomeBottomNavBarKeys.destinationFor(firstTab)),
      );
      await tester.pumpAndSettle();

      expect(tabSelects(), isEmpty);
      await harness.unmount(tester);
    });

    testWidgets('another destination tracks one tap and no swipe', (
      tester,
    ) async {
      await harness.pump(tester);

      await tester.tap(
        find.byKey(HomeBottomNavBarKeys.destinationFor(secondTab)),
      );
      await tester.pumpAndSettle();

      expect(
        tabSelects(),
        [isTabSelect(secondTab, HomeTabSelectMethod.tap)],
      );
      await harness.unmount(tester);
    });
  });
}
