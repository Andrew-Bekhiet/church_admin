import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../utils.dart';
import '../../support/home_database_fixture.dart';
import '../../support/home_screen_harness.dart';
import '../../support/recording_user_persistence_service.dart';

void main() {
  late HomeScreenHarness harness;

  setUp(() => harness = HomeScreenHarness());

  tearDown(defaultTearDown);

  group('home bloc lifetime', () {
    testWidgets('unmounting the home screen leaves the shared home bloc open', (
      tester,
    ) async {
      await harness.pump(tester, settle: false);
      await tester.pumpWidget(const SizedBox.shrink());

      expect(HomeBloc.I.isClosed, isFalse);
    });

    testWidgets('disposing the providers after the home screen is unmounted '
        'closes the home bloc cleanly', (tester) async {
      await harness.pump(tester, settle: false);
      await tester.pumpWidget(const SizedBox.shrink());

      final homeBloc = HomeBloc.I;
      resetGlobalProviderContainer();

      await tester.pump();

      expect(homeBloc.isClosed, isTrue);
    });
  });

  group('app lifecycle', () {
    testWidgets('resuming the app while unlocked records the user as active', (
      tester,
    ) async {
      await harness.pump(tester);

      harness
        ..moveAppToBackground(tester)
        ..bringAppToForeground(tester);

      expect(harness.persistence.records.last, UserPresenceRecord.active);
      await harness.unmount(tester);
    });

    testWidgets('resuming the app while locked records last seen', (
      tester,
    ) async {
      harness.isLocked = true;
      await harness.pump(tester);

      harness
        ..moveAppToBackground(tester)
        ..bringAppToForeground(tester);

      expect(harness.persistence.records.last, UserPresenceRecord.lastSeen);
      await harness.unmount(tester);
    });

    testWidgets('pausing the app records last seen', (tester) async {
      await harness.pump(tester);

      harness.moveAppToBackground(tester);

      expect(harness.persistence.records.last, UserPresenceRecord.lastSeen);
      await harness.unmount(tester);
    });
  });

  group('mode cards', () {
    testWidgets('tapping the church data card shows the church data tabs', (
      tester,
    ) async {
      await harness.pump(tester);

      await tester.tap(find.byKey(HomeScreenSummaryKeys.churchDataButtonKey));
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Symbols.pin_drop));
      await tester.pumpAndSettle();

      expect(find.text('المناطق'), findsWidgets);
      await harness.unmount(tester);
    });

    testWidgets('tapping the sunday school card shows the sunday school tabs', (
      tester,
    ) async {
      harness.preferences.lastHomeMode = HomeMode.churchData;
      await harness.pump(tester);

      await tester.tap(find.byKey(HomeScreenSummaryKeys.sundaySchoolButtonKey));
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Symbols.volunteer_activism));
      await tester.pumpAndSettle();

      expect(find.text('الخدمات'), findsWidgets);
      await harness.unmount(tester);
    });
  });

  group('swiping', () {
    testWidgets('moves to the next tab and shows its label', (tester) async {
      await harness.pump(tester);

      await tester.fling(find.byType(PageView), const Offset(400, 0), 1000);
      await tester.pumpAndSettle();

      expect(find.text('الخدمات'), findsWidgets);

      await harness.unmount(tester);
    });
  });

  group('tab total', () {
    const totals = {Area: 7, Service: 3};

    testWidgets('a church data list tab shows its total and label', (
      tester,
    ) async {
      harness.database = HomeDatabaseFixture(totals: totals);
      await harness.pump(tester);

      await tester.tap(find.byKey(HomeScreenSummaryKeys.churchDataButtonKey));
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Symbols.pin_drop));
      await tester.pumpAndSettle();

      expect(find.text('${totals[Area]} المناطق'), findsWidgets);
      await harness.unmount(tester);
    });

    testWidgets('the services tab shows its total and label', (tester) async {
      harness.database = HomeDatabaseFixture(totals: totals);
      await harness.pump(tester);

      await tester.tap(find.byIcon(Symbols.volunteer_activism));
      await tester.pumpAndSettle();

      expect(find.text('${totals[Service]} الخدمات'), findsWidgets);
      await harness.unmount(tester);
    });
  });

  group('changing mode from the drawer', () {
    testWidgets('on the persons tab lands on the persons tab of the other '
        'mode', (tester) async {
      await harness.pump(tester);
      await tester.tap(find.byIcon(Symbols.person));
      await tester.pumpAndSettle();

      await harness.openDrawer(tester);
      await tester.tap(find.text('تبديل إلى الافتقاد'));
      await tester.pumpAndSettle();

      expect(find.text('الأفراد'), findsWidgets);
      await harness.unmount(tester);
    });

    testWidgets('on a tab the other mode lacks lands on the second tab', (
      tester,
    ) async {
      harness.preferences.lastHomeMode = HomeMode.churchData;
      await harness.pump(tester);
      await tester.tap(find.byIcon(Symbols.road));
      await tester.pumpAndSettle();

      await harness.openDrawer(tester);
      await tester.tap(find.text('تبديل إلى مدارس الأحد'));
      await tester.pumpAndSettle();

      expect(find.text('الخدمات'), findsWidgets);
      await harness.unmount(tester);
    });
  });
}
