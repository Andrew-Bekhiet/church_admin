import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttendanceDateChip', () {
    final testDate = DateTime(2026, 7, 30);
    final recordedDates = [DateTime(2026, 7, 10), DateTime(2026, 7, 20)];

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

    testWidgets('day cell indicators match only recorded days', (tester) async {
      await tester.pumpWidget(
        buildSubject(
          date: testDate,
          recordedDays: recordedDates.toSet(),
          onDateSelected: (_) {},
        ),
      );

      await tester.tap(find.byType(AttendanceDateChip));
      await tester.pumpAndSettle();

      final dayCells = tester.widgetList<AttendanceDateSelectorDayCell>(
        find.byType(AttendanceDateSelectorDayCell),
      );
      expect(dayCells, findsNWidgets(recordedDates.length));
      expect(
        dayCells.map((c) => DateUtils.dateOnly(c.date)),
        orderedEquals(recordedDates),
      );

      expect(find.text('${testDate.day}'), findsOneWidget);
    });

    testWidgets('allows selecting any day without records', (tester) async {
      DateTime? selected;
      await tester.pumpWidget(
        buildSubject(
          date: testDate,
          recordedDays: recordedDates.toSet(),
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
      expect(DateUtils.dateOnly(selected!), testDate.copyWith(day: 15));
    });
  });
}
