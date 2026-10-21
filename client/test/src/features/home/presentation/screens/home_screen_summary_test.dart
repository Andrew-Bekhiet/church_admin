import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../utils.dart';
import '../../support/fake_home_daily_data_repository.dart';
import '../../support/home_screen_harness.dart';

void main() {
  late HomeScreenHarness harness;

  setUp(() => harness = HomeScreenHarness());

  tearDown(defaultTearDown);

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
        find.byKey(HomeBirthdaysSectionKeys.birthdaysButtonKey),
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
        HomeBirthdaysSectionKeys.birthdaysButtonKey,
      );

      expect(harness.advancedSearchExtras, [harness.dailyData.birthdaysQuery]);

      await harness.unmount(tester);
    });
  });

  group('daily texts', () {
    const verseText = 'a verse';
    const verseReference = '(a book 1: 2)';
    const sneksarDate = 'a coptic date';
    const sneksarFirst = 'first commemoration';
    const sneksarSecond = 'second commemoration';
    const sayingText = 'a saying';
    const sayingReference = '(a father)';

    testWidgets('each section shows its title and its parsed text', (
      tester,
    ) async {
      harness.dailyData = FakeHomeDailyDataRepository(
        verse: '$verseText\n$verseReference',
        sneksar: '$sneksarDate\n\n1-$sneksarFirst\n2-$sneksarSecond',
        saying: '$sayingText\n$sayingReference',
      );
      await harness.pump(tester);

      final expectedTexts = {
        HomeDailyDataType.verse: [verseText, verseReference],
        HomeDailyDataType.sneksar: [sneksarDate, sneksarFirst, sneksarSecond],
        HomeDailyDataType.saying: [sayingText, sayingReference],
      };
      for (final MapEntry(key: type, value: texts) in expectedTexts.entries) {
        final section = find.byKey(
          HomeDailyTextCardsKeys.dailyTextKeyFor(type),
        );
        await tester.ensureVisible(section);

        expect(
          find.descendant(of: section, matching: find.text(type.title)),
          findsOneWidget,
        );
        for (final text in texts) {
          expect(
            find.descendant(of: section, matching: find.text(text)),
            findsOneWidget,
          );
        }
      }

      await harness.unmount(tester);
    });

    testWidgets('tapping a card opens its sheet', (tester) async {
      await harness.pump(tester);

      await harness.openSummarySection(
        tester,
        HomeDailyTextCardsKeys.sneksarButtonKey,
      );

      expect(find.byType(HomeDailyTextSheet), findsOneWidget);

      await harness.unmount(tester);
    });
  });

  group('mode cards', () {
    testWidgets('both modes are offered with their names', (tester) async {
      await harness.pump(tester);

      for (final mode in HomeMode.values) {
        final card = find.byKey(HomeModeCardsKeys.modeKeyFor(mode));

        expect(
          find.descendant(of: card, matching: find.text(mode.label)),
          findsOneWidget,
        );
      }

      await harness.unmount(tester);
    });

    testWidgets('only the current mode is marked selected', (tester) async {
      harness.preferences.lastHomeMode = HomeMode.churchData;
      await harness.pump(tester);

      final checkedModes = HomeMode.values.where(
        (mode) => find
            .descendant(
              of: find.byKey(HomeModeCardsKeys.modeKeyFor(mode)),
              matching: find.byIcon(Symbols.check_circle),
            )
            .evaluate()
            .isNotEmpty,
      );

      expect(checkedModes, [HomeMode.churchData]);

      await harness.unmount(tester);
    });
  });
}
