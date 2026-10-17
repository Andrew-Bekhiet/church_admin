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

  group('home cubit lifetime', () {
    testWidgets(
      'unmounting the home screen leaves the shared home cubit open',
      (
        tester,
      ) async {
        await harness.pump(tester, settle: false);
        await tester.pumpWidget(const SizedBox.shrink());

        expect(HomeCubit.I.isClosed, isFalse);
        await harness.unmount(tester);
      },
    );

    testWidgets('disposing the providers after the home screen is unmounted '
        'closes the home cubit cleanly', (tester) async {
      await harness.pump(tester, settle: false);
      await tester.pumpWidget(const SizedBox.shrink());

      final homeCubit = HomeCubit.I;
      resetGlobalProviderContainer();
      await harness.finishAsyncDisposal(tester);

      expect(homeCubit.isClosed, isTrue);
    });
  });

  group('app lifecycle', () {
    testWidgets('resuming the app while unlocked records the user as active', (
      tester,
    ) async {
      await harness.pump(tester);

      harness
        ..moveAppToBackground(tester)
        ..returnAppToInactive(tester);
      harness.persistence.records.clear();
      harness.resumeApp(tester);

      expect(harness.persistence.records, [UserPresenceRecord.active]);
      await harness.unmount(tester);
    });

    testWidgets('resuming the app while locked records last seen', (
      tester,
    ) async {
      harness.isLocked = true;
      await harness.pump(tester);

      harness
        ..moveAppToBackground(tester)
        ..returnAppToInactive(tester);
      harness.persistence.records.clear();
      harness.resumeApp(tester);

      expect(harness.persistence.records, [UserPresenceRecord.lastSeen]);
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

      await tester.tap(find.byKey(HomeModeCardsKeys.churchDataButtonKey));
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

      await tester.tap(find.byKey(HomeModeCardsKeys.sundaySchoolButtonKey));
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Symbols.volunteer_activism));
      await tester.pumpAndSettle();

      expect(find.text('الخدمات'), findsWidgets);
      await harness.unmount(tester);
    });
  });

  group('app bar mode chip', () {
    testWidgets('on a list tab names the current mode', (tester) async {
      await harness.pump(tester);
      await tester.tap(find.byIcon(Symbols.volunteer_activism));
      await tester.pumpAndSettle();

      expect(
        find.widgetWithText(ActionChip, HomeMode.sundaySchool.label),
        findsOneWidget,
      );
      await harness.unmount(tester);
    });

    testWidgets('pressing it switches to the other mode', (tester) async {
      await harness.pump(tester);
      await tester.tap(find.byIcon(Symbols.volunteer_activism));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(HomeModeChip));
      await tester.pumpAndSettle();

      expect(
        find.widgetWithText(ActionChip, HomeMode.churchData.label),
        findsOneWidget,
      );
      await harness.unmount(tester);
    });

    testWidgets('is absent on the summary', (tester) async {
      await harness.pump(tester);

      expect(find.byType(HomeModeChip), findsNothing);
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

      await tester.tap(find.byKey(HomeModeCardsKeys.churchDataButtonKey));
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
    testWidgets('after swiping to the persons tab lands on the persons tab of '
        'the other mode', (tester) async {
      await harness.pump(tester);
      await tester.fling(find.byType(PageView), const Offset(400, 0), 1000);
      await tester.pumpAndSettle();
      await tester.fling(find.byType(PageView), const Offset(400, 0), 1000);
      await tester.pumpAndSettle();

      await harness.openDrawer(tester);
      await tester.tap(find.text('تبديل إلى الافتقاد'));
      await tester.pumpAndSettle();

      expect(find.text('الأفراد'), findsWidgets);
      await harness.unmount(tester);
    });

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

  group('create button', () {
    testWidgets('on the areas tab opens the new area screen', (tester) async {
      harness.preferences.lastHomeMode = HomeMode.churchData;
      await harness.pump(tester);
      await tester.tap(find.byIcon(Symbols.pin_drop));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Symbols.add_location).first);
      await tester.pumpAndSettle();

      expect(harness.currentLocation, const EditAreaRoute().location);
      await harness.unmount(tester);
    });

    testWidgets('is absent on the summary', (tester) async {
      await harness.pump(tester);

      expect(find.byType(FloatingActionButton), findsNothing);
      await harness.unmount(tester);
    });
  });
}
