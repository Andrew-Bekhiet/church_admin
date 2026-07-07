import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MockMeetingsDAO extends Mock implements MeetingsDAO {}

class _MockPersonsDAO extends Mock implements PersonsDAO {}

void main() {
  // Regression guard: PersonAnalysis renders the attendance section and the
  // history charts as siblings in one Column. They must carry distinct keys —
  // identical keys throw "Duplicate keys found" at mount.
  testWidgets('PersonAnalysis mounts both sections without duplicate keys', (
    tester,
  ) async {
    final person = Person(id: 'p1', name: 'مخدوم');

    final meetings = _MockMeetingsDAO();
    final persons = _MockPersonsDAO();
    final db = _MockDatabaseService();

    when(() => db.meetings).thenReturn(meetings);
    when(() => db.persons).thenReturn(persons);
    when(
      () => meetings.getPersonMeetings(
        personId: any(named: 'personId'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer(
      (_) async => const [
        Meeting(
          id: 'm1',
          name: 'اجتماع',
          audience: MeetingAudience.onlyPersons,
          isArchived: false,
        ),
      ],
    );
    when(
      () => meetings.getPersonAttendanceAnalysis(
        personId: any(named: 'personId'),
        range: any(named: 'range'),
        meetings: any(named: 'meetings'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer((_) async => const []);
    when(
      () => persons.getPersonAnalysis(
        personId: any(named: 'personId'),
        options: any(named: 'options'),
      ),
    ).thenAnswer((_) async => person);

    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(db),
    ]);

    // The screen opens on defaults with both attendance and history sections
    // enabled → both siblings render.
    await tester.pumpWidget(
      MaterialApp(home: PersonAnalysis(person: person)),
    );

    expect(tester.takeException(), isNull);
  });

  setUpAll(() async {
    await initializeDateFormatting('ar');
    await initializeDateFormatting('ar-EG');
    registerFallbackValue(
      DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
    );
    registerFallbackValue(
      PersonAnalysisOptions(
        dateRange: DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
      ),
    );
  });
}
