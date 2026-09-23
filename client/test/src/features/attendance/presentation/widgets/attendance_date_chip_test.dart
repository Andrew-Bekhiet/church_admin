import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttendanceDateChip', () {
    final testDate = DateTime(2026, 7, 2);
    final recordedDate = DateTime(2026, 7, 10);

    Widget buildSubject({
      required DateTime date,
      required ValueChanged<DateTime> onDateSelected,
      Set<DateTime> recordedDays = const {},
      Color? indicatorColor,
    }) {
      return MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar'),
          Locale('en'),
        ],
        locale: const Locale('ar'),
        home: Scaffold(
          body: Center(
            child: AttendanceDateChip(
              date: date,
              onDateSelected: onDateSelected,
              recordedDays: recordedDays,
              indicatorColor: indicatorColor,
            ),
          ),
        ),
      );
    }

    testWidgets('opens calendar dialog on tap with day cell indicators', (
      tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(
          date: testDate,
          recordedDays: {recordedDate},
          onDateSelected: (_) {},
        ),
      );

      await tester.tap(find.byType(AttendanceDateChip));
      await tester.pumpAndSettle();

      expect(find.byType(AttendanceDatePickerDialog), findsOneWidget);

      final dayCells = tester.widgetList<AttendanceDateSelectorDayCell>(
        find.byType(AttendanceDateSelectorDayCell),
      );
      expect(dayCells, findsOneWidget);
      expect(DateUtils.dateOnly(dayCells.first.date), recordedDate);

      expect(find.text('${testDate.day}'), findsOneWidget);
    });

    testWidgets('allows selecting any day without records', (tester) async {
      DateTime? selected;
      await tester.pumpWidget(
        buildSubject(
          date: testDate,
          recordedDays: {recordedDate},
          onDateSelected: (date) => selected = date,
        ),
      );

      await tester.tap(find.byType(AttendanceDateChip));
      await tester.pumpAndSettle();

      final targetDayFinder = find.text('15');
      expect(targetDayFinder, findsOneWidget);

      await tester.tap(targetDayFinder);
      await tester.pumpAndSettle();

      final okButton = find.byType(TextButton).last;
      expect(okButton, findsOneWidget);
      await tester.tap(okButton);
      await tester.pumpAndSettle();

      expect(selected, isNotNull);
      expect(DateUtils.dateOnly(selected!), DateTime(2026, 7, 15));
    });
  });
}
