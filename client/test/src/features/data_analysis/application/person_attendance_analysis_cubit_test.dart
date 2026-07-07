import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockMeetingsDAO extends Mock implements MeetingsDAO {}

void main() {
  group('PersonAttendanceAnalysisCubit', () {
    late _MockMeetingsDAO dao;

    final range = DateTimeRange(
      start: DateTime(2026, 6),
      end: DateTime(2026, 7),
    );
    const meeting = Meeting(
      id: 'm1',
      name: 'اجتماع',
      audience: MeetingAudience.onlyPersons,
      isArchived: false,
    );
    final options = PersonAnalysisOptions(
      dateRange: range,
      meetings: const [meeting],
    );

    final analysis = PersonMeetingAttendanceAnalysis(
      personId: 'p1',
      meeting: meeting,
      asServant: false,
      heldDays: [DateTime(2026, 6, 7)],
      attendedDays: {DateTime(2026, 6, 7)},
    );

    setUpAll(() {
      registerFallbackValue(
        DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
      );
      registerFallbackValue(<Meeting>[]);
    });

    setUp(() => dao = _MockMeetingsDAO());

    void stubAnalysis(List<PersonMeetingAttendanceAnalysis> result) {
      when(
        () => dao.getPersonAttendanceAnalysis(
          personId: any(named: 'personId'),
          range: any(named: 'range'),
          meetings: any(named: 'meetings'),
          asServant: any(named: 'asServant'),
        ),
      ).thenAnswer((_) async => result);
    }

    blocTest<PersonAttendanceAnalysisCubit, PersonAttendanceAnalysisState>(
      'emits Loaded with the analyses on initial load',
      setUp: () => stubAnalysis([analysis]),
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: options,
        dao: dao,
      ),
      expect: () => [
        isA<PersonAttendanceAnalysisLoaded>().having(
          (s) => s.analyses,
          'analyses',
          [analysis],
        ),
      ],
    );

    blocTest<PersonAttendanceAnalysisCubit, PersonAttendanceAnalysisState>(
      'emits Empty and skips the DAO when no meetings are selected',
      setUp: () => stubAnalysis([analysis]),
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: PersonAnalysisOptions(dateRange: range),
        dao: dao,
      ),
      verify: (cubit) {
        expect(cubit.state, isA<PersonAttendanceAnalysisEmpty>());
        verifyNever(
          () => dao.getPersonAttendanceAnalysis(
            personId: any(named: 'personId'),
            range: any(named: 'range'),
            meetings: any(named: 'meetings'),
            asServant: any(named: 'asServant'),
          ),
        );
      },
    );

    blocTest<PersonAttendanceAnalysisCubit, PersonAttendanceAnalysisState>(
      'emits Error when the DAO throws',
      setUp: () {
        when(
          () => dao.getPersonAttendanceAnalysis(
            personId: any(named: 'personId'),
            range: any(named: 'range'),
            meetings: any(named: 'meetings'),
            asServant: any(named: 'asServant'),
          ),
        ).thenAnswer((_) async => throw Exception('boom'));
      },
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: options,
        dao: dao,
      ),
      errors: () => [isA<Exception>()],
      expect: () => [isA<PersonAttendanceAnalysisError>()],
    );

    blocTest<PersonAttendanceAnalysisCubit, PersonAttendanceAnalysisState>(
      'passes the servant scope and meeting filter through to the DAO',
      setUp: () => stubAnalysis(const []),
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: PersonAnalysisOptions(
          dateRange: range,
          meetings: [analysis.meeting],
        ),
        asServant: true,
        dao: dao,
      ),
      verify: (_) {
        verify(
          () => dao.getPersonAttendanceAnalysis(
            personId: 'p1',
            range: range,
            meetings: [meeting],
            asServant: true,
          ),
        ).called(1);
      },
    );

    blocTest<PersonAttendanceAnalysisCubit, PersonAttendanceAnalysisState>(
      'reload re-fetches from the DAO',
      setUp: () => stubAnalysis([analysis]),
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: options,
        dao: dao,
      ),
      act: (cubit) => cubit.load(options),
      verify: (_) {
        verify(
          () => dao.getPersonAttendanceAnalysis(
            personId: any(named: 'personId'),
            range: any(named: 'range'),
            meetings: any(named: 'meetings'),
            asServant: any(named: 'asServant'),
          ),
        ).called(2);
      },
    );
  });
}
