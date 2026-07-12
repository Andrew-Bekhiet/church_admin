import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockMeetingsDAO extends Mock implements MeetingsDAO {}

class _MockClassesDAO extends Mock implements ClassesDAO {}

void main() {
  group('MeetingsAnalysisCubit', () {
    late _MockMeetingsDAO dao;
    late _MockClassesDAO classesDao;

    final singleDay = DateTimeRange(
      start: DateTime(2026, 7, 12),
      end: DateTime(2026, 7, 12),
    );
    final range = DateTimeRange(
      start: DateTime(2026, 6),
      end: DateTime(2026, 7),
    );

    const service = Service(id: 's1', name: 'خدمة');
    const serviceSubject = ServiceAnalysisSubject(service);

    const class$ = Class(id: 'c1', name: 'فصل');
    const group = Group(id: 'g1', name: 'مجموعة');

    final analysis = MeetingsAttendanceAnalysis(
      title: 'خدمة',
      meetings: const [],
    );
    const rosterMember = SingleDayRosterMember(
      personId: 'p1',
      attended: true,
    );

    setUpAll(() {
      registerFallbackValue(
        DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
      );
      registerFallbackValue(const ServiceAnalysisSubject(service));
      registerFallbackValue(DateTime(2026));
    });

    setUp(() {
      dao = _MockMeetingsDAO();
      classesDao = _MockClassesDAO();
    });

    void stubAnalysis() {
      when(
        () => dao.getMeetingsAttendanceAnalysis(
          subject: any(named: 'subject'),
          range: any(named: 'range'),
        ),
      ).thenAnswer((_) async => analysis);
    }

    void stubRoster() {
      when(
        () => dao.getSingleDayRosterDemographics(
          subject: any(named: 'subject'),
          day: any(named: 'day'),
        ),
      ).thenAnswer((_) async => [rosterMember]);
    }

    void stubClasses(List<Class> classes) {
      when(
        () => classesDao.getClassesForService(
          serviceId: any(named: 'serviceId'),
        ),
      ).thenAnswer((_) async => classes);
    }

    MeetingsAnalysisCubit buildCubit({
      MeetingsAnalysisSubject subject = serviceSubject,
      DateTimeRange? initialRange,
    }) => MeetingsAnalysisCubit(
      subject: subject,
      initialRange: initialRange ?? singleDay,
      dao: dao,
      classesDao: classesDao,
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'emits Loaded with the range analysis on a multi-day range',
      setUp: stubAnalysis,
      build: () => buildCubit(initialRange: range),
      expect: () => [
        isA<MeetingsAnalysisLoaded>().having(
          (s) => s.analysis,
          'analysis',
          analysis,
        ),
      ],
      verify: (_) {
        verifyNever(
          () => dao.getSingleDayRosterDemographics(
            subject: any(named: 'subject'),
            day: any(named: 'day'),
          ),
        );
      },
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'emits SingleDayLoaded with roster and classes on a single day',
      setUp: () {
        stubAnalysis();
        stubRoster();
        stubClasses([class$]);
      },
      build: buildCubit,
      expect: () => [
        isA<MeetingsAnalysisLoaded>()
            .having(
              (s) => s.analysis,
              'analysis',
              isA<SingleDayMeetingsAttendanceAnalysis>(),
            )
            .having(
              (s) => (s.analysis as SingleDayMeetingsAttendanceAnalysis)
                  .rosterMembers,
              'rosterMembers',
              [rosterMember],
            )
            .having(
              (s) =>
                  (s.analysis as SingleDayMeetingsAttendanceAnalysis).classes,
              'classes',
              [class$],
            )
            .having(
              (s) => (s.analysis as SingleDayMeetingsAttendanceAnalysis).title,
              'title',
              service.name,
            ),
      ],
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'a service subject resolves classes through its service id',
      setUp: () {
        stubAnalysis();
        stubRoster();
        stubClasses(const []);
      },
      build: buildCubit,
      verify: (_) {
        verify(
          () => classesDao.getClassesForService(serviceId: service.id),
        ).called(1);
      },
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'a meeting subject with a service id resolves classes through it',
      setUp: () {
        stubAnalysis();
        stubRoster();
        stubClasses(const []);
      },
      build: () => buildCubit(
        subject: const MeetingAnalysisSubject(
          Meeting(
            id: 'm1',
            name: 'اجتماع',
            audience: MeetingAudience.onlyPersons,
            isArchived: false,
            serviceId: 's1',
          ),
        ),
      ),
      verify: (_) {
        verify(
          () => classesDao.getClassesForService(serviceId: 's1'),
        ).called(1);
      },
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'a meeting subject without a service id loads no classes',
      setUp: () {
        stubAnalysis();
        stubRoster();
      },
      build: () => buildCubit(
        subject: const MeetingAnalysisSubject(
          Meeting(
            id: 'm1',
            name: 'اجتماع',
            audience: MeetingAudience.onlyPersons,
            isArchived: false,
          ),
        ),
      ),
      verify: (cubit) {
        verifyNever(
          () => classesDao.getClassesForService(
            serviceId: any(named: 'serviceId'),
          ),
        );
        expect(
          ((cubit.state as MeetingsAnalysisLoaded).analysis
                  as SingleDayMeetingsAttendanceAnalysis)
              .classes,
          isEmpty,
        );
      },
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'a class subject resolves to itself without hitting the classes DAO',
      setUp: () {
        stubAnalysis();
        stubRoster();
      },
      build: () => buildCubit(subject: const ClassAnalysisSubject(class$)),
      verify: (cubit) {
        verifyNever(
          () => classesDao.getClassesForService(
            serviceId: any(named: 'serviceId'),
          ),
        );
        expect(
          ((cubit.state as MeetingsAnalysisLoaded).analysis
                  as SingleDayMeetingsAttendanceAnalysis)
              .classes,
          [class$],
        );
      },
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'a group subject loads no classes',
      setUp: () {
        stubAnalysis();
        stubRoster();
      },
      build: () => buildCubit(subject: const GroupAnalysisSubject(group)),
      verify: (cubit) {
        verifyNever(
          () => classesDao.getClassesForService(
            serviceId: any(named: 'serviceId'),
          ),
        );
        expect(
          ((cubit.state as MeetingsAnalysisLoaded).analysis
                  as SingleDayMeetingsAttendanceAnalysis)
              .classes,
          isEmpty,
        );
      },
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'emits Error when the DAO throws',
      setUp: () {
        when(
          () => dao.getMeetingsAttendanceAnalysis(
            subject: any(named: 'subject'),
            range: any(named: 'range'),
          ),
        ).thenAnswer((_) async => throw Exception('boom'));
      },
      build: () => buildCubit(initialRange: range),
      errors: () => [isA<Exception>()],
      expect: () => [isA<MeetingsAnalysisError>()],
    );

    blocTest<MeetingsAnalysisCubit, MeetingsAnalysisState>(
      'reload re-fetches from the DAO',
      setUp: stubAnalysis,
      build: () => buildCubit(initialRange: range),
      act: (cubit) => cubit.load(range),
      verify: (_) {
        verify(
          () => dao.getMeetingsAttendanceAnalysis(
            subject: any(named: 'subject'),
            range: any(named: 'range'),
          ),
        ).called(2);
      },
    );
  });
}
