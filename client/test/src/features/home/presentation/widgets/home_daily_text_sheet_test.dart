import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../utils.dart';
import '../../support/home_screen_harness.dart';

void main() {
  late HomeScreenHarness harness;

  setUp(() => harness = HomeScreenHarness());

  tearDown(defaultTearDown);

  Finder inSheet(String text) => find.descendant(
    of: find.byType(HomeDailyTextSheet),
    matching: find.text(text),
  );

  Future<void> openSheet(WidgetTester tester, Key cardKey) async {
    await harness.pump(tester);
    await harness.openSummarySection(tester, cardKey);
  }

  group('verse', () {
    testWidgets('shows the verse', (tester) async {
      await openSheet(tester, HomeScreenSummaryKeys.verseButtonKey);

      expect(inSheet(harness.dailyData.verse), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('shows the verse title', (tester) async {
      await openSheet(tester, HomeScreenSummaryKeys.verseButtonKey);

      expect(inSheet(HomeDailyDataType.verse.title), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('offers sharing and another verse', (tester) async {
      await openSheet(tester, HomeScreenSummaryKeys.verseButtonKey);

      expect(find.byKey(HomeDailyTextSheetKeys.shareButtonKey), findsOneWidget);
      expect(
        find.byKey(HomeDailyTextSheetKeys.newItemButtonKey),
        findsOneWidget,
      );

      await harness.unmount(tester);
    });

    testWidgets('asking for another verse shows the new verse', (
      tester,
    ) async {
      await openSheet(tester, HomeScreenSummaryKeys.verseButtonKey);

      await tester.tap(find.byKey(HomeDailyTextSheetKeys.newItemButtonKey));
      await tester.pumpAndSettle();

      expect(inSheet(harness.dailyData.refreshedVerse), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('sharing hands the shown verse to the share sheet', (
      tester,
    ) async {
      await openSheet(tester, HomeScreenSummaryKeys.verseButtonKey);

      await tester.tap(find.byKey(HomeDailyTextSheetKeys.shareButtonKey));

      expect(harness.share.sharedTexts, [harness.dailyData.verse]);

      await harness.unmount(tester);
    });

    testWidgets('sharing after asking for another verse shares the new one', (
      tester,
    ) async {
      await openSheet(tester, HomeScreenSummaryKeys.verseButtonKey);
      await tester.tap(find.byKey(HomeDailyTextSheetKeys.newItemButtonKey));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(HomeDailyTextSheetKeys.shareButtonKey));

      expect(harness.share.sharedTexts, [harness.dailyData.refreshedVerse]);

      await harness.unmount(tester);
    });
  });

  group('saying', () {
    testWidgets('asking for another saying shows the new saying', (
      tester,
    ) async {
      await openSheet(tester, HomeScreenSummaryKeys.sayingButtonKey);

      await tester.tap(find.byKey(HomeDailyTextSheetKeys.newItemButtonKey));
      await tester.pumpAndSettle();

      expect(inSheet(harness.dailyData.refreshedSaying), findsOneWidget);

      await harness.unmount(tester);
    });
  });

  group('sneksar', () {
    testWidgets('shows the sneksar', (tester) async {
      await openSheet(tester, HomeScreenSummaryKeys.sneksarButtonKey);

      expect(inSheet(harness.dailyData.sneksar), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('has no button for another sneksar', (tester) async {
      await openSheet(tester, HomeScreenSummaryKeys.sneksarButtonKey);

      expect(
        find.byKey(HomeDailyTextSheetKeys.newItemButtonKey),
        findsNothing,
      );

      await harness.unmount(tester);
    });
  });

  group('dismissing', () {
    testWidgets('tapping the scrim closes the sheet', (tester) async {
      await openSheet(tester, HomeScreenSummaryKeys.verseButtonKey);

      await tester.tapAt(const Offset(10, 10));
      await tester.pumpAndSettle();

      expect(find.byType(HomeDailyTextSheet), findsNothing);

      await harness.unmount(tester);
    });
  });
}
