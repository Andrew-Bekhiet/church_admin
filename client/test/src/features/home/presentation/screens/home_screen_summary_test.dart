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

  group('daily texts', () {
    testWidgets('each card shows its title and its text', (tester) async {
      await harness.pump(tester);

      final texts = {
        HomeDailyDataType.verse: harness.dailyData.verse,
        HomeDailyDataType.sneksar: harness.dailyData.sneksar,
        HomeDailyDataType.saying: harness.dailyData.saying,
      };
      for (final MapEntry(key: type, value: text) in texts.entries) {
        final card = find.byKey(HomeScreenSummaryKeys.dailyTextKeyFor(type));
        await tester.ensureVisible(card);

        expect(
          find.descendant(of: card, matching: find.text(type.title)),
          findsOneWidget,
        );
        expect(
          find.descendant(of: card, matching: find.text(text)),
          findsOneWidget,
        );
      }

      await harness.unmount(tester);
    });

    testWidgets('tapping a card opens its sheet', (tester) async {
      await harness.pump(tester);

      await harness.openSummarySection(
        tester,
        HomeScreenSummaryKeys.sneksarButtonKey,
      );

      expect(find.byType(HomeDailyTextSheet), findsOneWidget);

      await harness.unmount(tester);
    });
  });

  group('mode cards', () {
    testWidgets('both modes are offered with their names', (tester) async {
      await harness.pump(tester);

      for (final mode in HomeMode.values) {
        final card = find.byKey(HomeScreenSummaryKeys.modeKeyFor(mode));

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
              of: find.byKey(HomeScreenSummaryKeys.modeKeyFor(mode)),
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
