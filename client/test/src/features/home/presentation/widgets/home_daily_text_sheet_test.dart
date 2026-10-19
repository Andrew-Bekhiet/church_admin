import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../utils.dart';
import '../../support/fake_home_daily_data_repository.dart';
import '../../support/home_screen_harness.dart';

void main() {
  const smallScreen = Size(320, 480);

  late HomeScreenHarness harness;

  setUp(() => harness = HomeScreenHarness());

  tearDown(defaultTearDown);

  group('verse', () {
    testWidgets('shows the verse', (tester) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.verseButtonKey);

      expect(
        find.descendant(
          of: find.byType(HomeDailyTextSheet),
          matching: find.text(harness.dailyData.verse),
        ),
        findsOneWidget,
      );

      await harness.unmount(tester);
    });

    testWidgets('shows the verse title', (tester) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.verseButtonKey);

      expect(
        find.descendant(
          of: find.byType(HomeDailyTextSheet),
          matching: find.text(HomeDailyDataType.verse.title),
        ),
        findsOneWidget,
      );

      await harness.unmount(tester);
    });

    testWidgets('offers sharing and another verse', (tester) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.verseButtonKey);

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
      await harness.openSheet(tester, HomeDailyTextCardsKeys.verseButtonKey);

      await tester.tap(find.byKey(HomeDailyTextSheetKeys.newItemButtonKey));
      await tester.pumpAndSettle();

      expect(
        find.descendant(
          of: find.byType(HomeDailyTextSheet),
          matching: find.text(harness.dailyData.refreshedVerse),
        ),
        findsOneWidget,
      );

      await harness.unmount(tester);
    });

    testWidgets('sharing hands the shown verse to the share sheet', (
      tester,
    ) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.verseButtonKey);

      await tester.tap(find.byKey(HomeDailyTextSheetKeys.shareButtonKey));

      expect(harness.share.sharedTexts, [harness.dailyData.verse]);

      await harness.unmount(tester);
    });

    testWidgets('sharing after asking for another verse shares the new one', (
      tester,
    ) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.verseButtonKey);
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
      await harness.openSheet(tester, HomeDailyTextCardsKeys.sayingButtonKey);

      await tester.tap(find.byKey(HomeDailyTextSheetKeys.newItemButtonKey));
      await tester.pumpAndSettle();

      expect(
        find.descendant(
          of: find.byType(HomeDailyTextSheet),
          matching: find.text(harness.dailyData.refreshedSaying),
        ),
        findsOneWidget,
      );

      await harness.unmount(tester);
    });
  });

  group('sneksar', () {
    testWidgets('shows the sneksar', (tester) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.sneksarButtonKey);

      expect(
        find.descendant(
          of: find.byType(HomeDailyTextSheet),
          matching: find.text(harness.dailyData.sneksar),
        ),
        findsOneWidget,
      );

      await harness.unmount(tester);
    });

    testWidgets('has no button for another sneksar', (tester) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.sneksarButtonKey);

      expect(
        find.byKey(HomeDailyTextSheetKeys.newItemButtonKey),
        findsNothing,
      );

      await harness.unmount(tester);
    });
  });

  group('a very long text on a small screen', () {
    testWidgets('does not overflow and keeps the sharing button reachable', (
      tester,
    ) async {
      final longVerse = List.filled(60, 'verse').join(' ');
      harness.dailyData = FakeHomeDailyDataRepository(verse: longVerse);
      await harness.pump(tester);
      tester.view.physicalSize = smallScreen;
      await harness.openSummarySection(
        tester,
        HomeDailyTextCardsKeys.verseButtonKey,
      );

      await tester.ensureVisible(
        find.byKey(HomeDailyTextSheetKeys.shareButtonKey),
      );
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(find.byKey(HomeDailyTextSheetKeys.shareButtonKey), findsOneWidget);

      await harness.unmount(tester);
    });
  });

  group('dismissing', () {
    testWidgets('tapping the scrim closes the sheet', (tester) async {
      await harness.openSheet(tester, HomeDailyTextCardsKeys.verseButtonKey);

      await tester.tapAt(const Offset(10, 10));
      await tester.pumpAndSettle();

      expect(find.byType(HomeDailyTextSheet), findsNothing);

      await harness.unmount(tester);
    });
  });
}
