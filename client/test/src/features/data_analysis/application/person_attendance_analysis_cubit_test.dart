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

    final reloadedAnalysis = PersonMeetingAttendanceAnalysis(
      personId: 'p1',
      meeting: meeting,
      asServant: false,
      heldDays: [DateTime(2026, 6, 7), DateTime(2026, 6, 14)],
      attendedDays: {DateTime(2026, 6, 14)},
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
      'emits Empty when no meetings are selected',
      setUp: () => stubAnalysis([analysis]),
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: PersonAnalysisOptions(dateRange: range),
        dao: dao,
      ),
      verify: (cubit) {
        expect(cubit.state, isA<PersonAttendanceAnalysisEmpty>());
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
      'loads the servant analyses of the selected meetings',
      setUp: () {
        stubAnalysis(const []);
        when(
          () => dao.getPersonAttendanceAnalysis(
            personId: 'p1',
            range: range,
            meetings: [meeting],
            asServant: true,
          ),
        ).thenAnswer((_) async => [analysis]);
      },
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: PersonAnalysisOptions(
          dateRange: range,
          meetings: [analysis.meeting],
        ),
        asServant: true,
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
      'reload shows the fresh result of the DAO',
      setUp: () {
        final answers = [
          [analysis],
          [reloadedAnalysis],
        ];
        when(
          () => dao.getPersonAttendanceAnalysis(
            personId: any(named: 'personId'),
            range: any(named: 'range'),
            meetings: any(named: 'meetings'),
            asServant: any(named: 'asServant'),
          ),
        ).thenAnswer((_) async => answers.removeAt(0));
      },
      build: () => PersonAttendanceAnalysisCubit(
        personId: 'p1',
        options: options,
        dao: dao,
      ),
      act: (cubit) async {
        await cubit.stream.firstWhere(
          (s) => s is PersonAttendanceAnalysisLoaded,
        );
        await cubit.load(options);
      },
      expect: () => [
        isA<PersonAttendanceAnalysisLoaded>().having(
          (s) => s.analyses,
          'analyses',
          [analysis],
        ),
        isA<PersonAttendanceAnalysisLoading>(),
        isA<PersonAttendanceAnalysisLoaded>().having(
          (s) => s.analyses,
          'analyses',
          [reloadedAnalysis],
        ),
      ],
    );
  });
}
