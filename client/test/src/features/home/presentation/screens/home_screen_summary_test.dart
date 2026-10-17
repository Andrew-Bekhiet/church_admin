import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../utils.dart';
import '../../support/fake_home_daily_data_repository.dart';
import '../../support/home_screen_harness.dart';

void main() {
  late HomeScreenHarness harness;

  setUp(() => harness = HomeScreenHarness());

  tearDown(defaultTearDown);

  Finder inDialog(String text) =>
      find.descendant(of: find.byType(AlertDialog), matching: find.text(text));

  group('birthdays', () {
    testWidgets('are listed on the summary', (tester) async {
      harness.dailyData = FakeHomeDailyDataRepository(
        birthdays: ['ann', 'ben'],
      );
      await harness.pump(tester);

      final [first, second] = harness.dailyData.birthdays;
      expect(find.text('$first، $second'), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('are hidden when nobody has a birthday today', (tester) async {
      await harness.pump(tester);

      expect(
        find.byKey(HomeScreenSummaryKeys.birthdaysButtonKey),
        findsNothing,
      );

      await harness.unmount(tester);
    });

    testWidgets('tapping them opens advanced search with the birthdays query', (
      tester,
    ) async {
      harness.dailyData = FakeHomeDailyDataRepository(birthdays: ['ann']);
      await harness.pump(tester);

      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.birthdaysButtonKey,
      );

      expect(harness.advancedSearchExtras, [harness.dailyData.birthdaysQuery]);

      await harness.unmount(tester);
    });
  });

  group('verse dialog', () {
    testWidgets('shows the verse', (tester) async {
      await harness.pump(tester);

      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.verseButtonKey,
      );

      expect(inDialog(harness.dailyData.verse), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('asking for another verse shows the new verse', (
      tester,
    ) async {
      await harness.pump(tester);
      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.verseButtonKey,
      );

      await tester.tap(find.byKey(HomeScreenSummaryKeys.newItemButtonKey));
      await tester.pumpAndSettle();

      expect(inDialog(harness.dailyData.refreshedVerse), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('sharing hands the shown verse to the share sheet', (
      tester,
    ) async {
      await harness.pump(tester);
      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.verseButtonKey,
      );

      await tester.tap(find.byKey(HomeScreenSummaryKeys.shareButtonKey));

      expect(harness.share.sharedTexts, [harness.dailyData.verse]);

      await harness.unmount(tester);
    });
  });

  group('saying dialog', () {
    testWidgets('asking for another saying shows the new saying', (
      tester,
    ) async {
      await harness.pump(tester);
      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.sayingButtonKey,
      );

      await tester.tap(find.byKey(HomeScreenSummaryKeys.newItemButtonKey));
      await tester.pumpAndSettle();

      expect(inDialog(harness.dailyData.refreshedSaying), findsOneWidget);

      await harness.unmount(tester);
    });
  });

  group('sneksar dialog', () {
    testWidgets('shows the sneksar', (tester) async {
      await harness.pump(tester);

      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.sneksarButtonKey,
      );

      expect(inDialog(harness.dailyData.sneksar), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('has no button for another sneksar', (tester) async {
      await harness.pump(tester);

      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.sneksarButtonKey,
      );

      expect(find.byKey(HomeScreenSummaryKeys.newItemButtonKey), findsNothing);

      await harness.unmount(tester);
    });
  });
}
