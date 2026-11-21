import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../material_ui_test_app.dart';

void main() {
  Future<void> pumpLineShowing(
    WidgetTester tester,
    FingerprintLastSyncState state,
  ) => tester.pumpWidget(
    MaterialUiTestApp.withThemeAndLocale(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: FingerprintLastSyncLine(state: state),
      ),
    ),
  );

  setUpAll(() => initializeDateFormatting('ar'));

  testWidgets('shows the date and time of the last sync', (tester) async {
    final lastSyncedAt = DateTime.utc(2026, 11, 20, 7, 5);

    await pumpLineShowing(tester, FingerprintLastSyncedAt(lastSyncedAt));

    expect(
      tester
          .widget<Text>(find.byKey(FingerprintLastSyncLineKeys.lastSyncedAt))
          .data,
      contains(lastSyncedAt.toLocalArabicWeekdayDateAndTime()),
    );
  });

  testWidgets('says the fingerprint device has never synced', (tester) async {
    await pumpLineShowing(tester, const FingerprintNeverSynced());

    expect(find.byKey(FingerprintLastSyncLineKeys.neverSynced), findsOneWidget);
  });

  testWidgets('says the last sync time could not be read', (tester) async {
    await pumpLineShowing(
      tester,
      FingerprintLastSyncUnavailable(StateError('offline')),
    );

    expect(find.byKey(FingerprintLastSyncLineKeys.unavailable), findsOneWidget);
  });

  testWidgets('shows no sync time while the server has not answered', (
    tester,
  ) async {
    await pumpLineShowing(tester, const FingerprintLastSyncLoading());

    expect(find.byKey(FingerprintLastSyncLineKeys.loading), findsOneWidget);
  });
}
