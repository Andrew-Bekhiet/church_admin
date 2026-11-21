import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';
import 'package:timeago/timeago.dart';

import '../../../../material_ui_test_app.dart';

void main() {
  Future<void> pumpIndicatorShowing(
    WidgetTester tester,
    FingerprintLastSyncState state,
  ) => tester.pumpWidget(
    MaterialUiTestApp.withThemeAndLocale(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(children: [FingerprintLastSyncIndicator(state: state)]),
      ),
    ),
  );

  String? shownElapsedSinceLastSync(WidgetTester tester) => tester
      .widget<Text>(
        find.byKey(FingerprintLastSyncIndicatorKeys.elapsedSinceLastSync),
      )
      .data;

  setUpAll(() async {
    await initializeDateFormatting('ar');
    setLocaleMessages('ar', ArMessages());
  });

  testWidgets('shows how long ago the last sync was', (tester) async {
    final lastSyncedAt = DateTime.utc(2026, 11, 20, 7, 5);
    final now = lastSyncedAt.add(const Duration(minutes: 3));

    await withClock(Clock.fixed(now), () async {
      await pumpIndicatorShowing(
        tester,
        FingerprintLastSyncKnown(lastSyncedAt),
      );

      expect(
        shownElapsedSinceLastSync(tester),
        'منذ 3 دقائق',
      );
    });
  });

  testWidgets('the elapsed time grows while no new sync arrives', (
    tester,
  ) async {
    final lastSyncedAt = DateTime.utc(2026, 11, 20, 7, 5);
    DateTime now = lastSyncedAt.add(const Duration(minutes: 3));

    await withClock(Clock(() => now), () async {
      await pumpIndicatorShowing(
        tester,
        FingerprintLastSyncKnown(lastSyncedAt),
      );

      now = lastSyncedAt.add(const Duration(minutes: 4));
      await tester.pump(const Duration(minutes: 1));

      expect(
        shownElapsedSinceLastSync(tester),
        'منذ 4 دقائق',
      );
    });
  });

  testWidgets('a newer sync replaces the elapsed time of the older one', (
    tester,
  ) async {
    final olderSync = DateTime.utc(2026, 11, 20, 7, 5);
    final newerSync = DateTime.utc(2026, 11, 20, 7, 15);
    final now = DateTime.utc(2026, 11, 20, 7, 17);

    await withClock(Clock.fixed(now), () async {
      await pumpIndicatorShowing(tester, FingerprintLastSyncKnown(olderSync));
      await pumpIndicatorShowing(tester, FingerprintLastSyncKnown(newerSync));

      expect(
        shownElapsedSinceLastSync(tester),
        'منذ دقيقتين',
      );
    });
  });

  testWidgets('offers the exact date and time of the last sync as a tooltip', (
    tester,
  ) async {
    final lastSyncedAt = DateTime.utc(2026, 11, 20, 7, 5);

    await withClock(
      Clock.fixed(lastSyncedAt.add(const Duration(minutes: 3))),
      () async {
        await pumpIndicatorShowing(
          tester,
          FingerprintLastSyncKnown(lastSyncedAt),
        );

        expect(
          tester
              .widget<Tooltip>(
                find.byKey(FingerprintLastSyncIndicatorKeys.self),
              )
              .message,
          contains(lastSyncedAt.toLocalArabicWeekdayDateAndTime()),
        );
      },
    );
  });

  testWidgets('is tall enough to tap comfortably', (tester) async {
    const smallestComfortableTapTargetHeight = 40.0;

    await pumpIndicatorShowing(tester, const FingerprintLastSyncNever());

    expect(
      tester.getSize(find.byKey(FingerprintLastSyncIndicatorKeys.self)).height,
      greaterThanOrEqualTo(smallestComfortableTapTargetHeight),
    );
  });

  testWidgets('says the fingerprint device has never synced', (tester) async {
    await pumpIndicatorShowing(tester, const FingerprintLastSyncNever());

    expect(
      find.byKey(FingerprintLastSyncIndicatorKeys.neverSynced),
      findsOneWidget,
    );
  });

  testWidgets('marks the last sync time as unreadable when reading it fails', (
    tester,
  ) async {
    await pumpIndicatorShowing(
      tester,
      FingerprintLastSyncUnavailable(StateError('offline')),
    );

    expect(
      find.byKey(FingerprintLastSyncIndicatorKeys.unavailable),
      findsOneWidget,
    );
  });

  testWidgets('shows no elapsed time while the server has not answered', (
    tester,
  ) async {
    await pumpIndicatorShowing(tester, const FingerprintLastSyncLoading());

    expect(
      find.byKey(FingerprintLastSyncIndicatorKeys.loading),
      findsOneWidget,
    );
  });
}
