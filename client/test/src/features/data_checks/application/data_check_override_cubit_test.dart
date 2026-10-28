import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';
import '../../../utils.dart';

void main() {
  group('DataCheckOverrideCubit', () {
    final incomplete = DataCheck(familyId: 'family', familyCheck: true);
    final markedComplete = incomplete.withUserOverride(
      DataCheckOverride.markedComplete,
    );
    final markedIncomplete = DataCheck(
      familyId: incomplete.familyId,
      familyCheck: true,
      addressCheck: true,
      isComplete: true,
    ).withUserOverride(DataCheckOverride.markedIncomplete);

    late _MockDataChecksDAO dao;
    late RecordingAnalyticsProvider analytics;

    setUpAll(() => registerFallbackValue(const LogRecord()));

    setUp(() {
      dao = _MockDataChecksDAO();
      analytics = RecordingAnalyticsProvider();
      final logging = _MockLoggingService();
      when(() => logging.exception(any())).thenAnswer((_) async {});
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(logging),
      ]);
    });
    tearDown(defaultTearDown);

    DataCheckOverrideCubit cubitFor(DataCheck dataCheck) =>
        DataCheckOverrideCubit(
          dataCheck: dataCheck,
          dao: dao,
          analyticsService: AnalyticsService([analytics], FakeLoggingService()),
        );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'a saved override is tracked from the automatic verdict to the chosen one',
      setUp: () => when(
        () => dao.tryOverride(familyId: incomplete.familyId, isComplete: true),
      ).thenAnswer((_) async => true),
      build: () => cubitFor(incomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.markedComplete),
      verify: (_) => expect(
        analytics.trackedEventsOf<DataCheckOverrideSelect>().single,
        isA<DataCheckOverrideSelect>()
            .having((event) => event.familyId, 'familyId', incomplete.familyId)
            .having(
              (event) => event.fromOverride,
              'fromOverride',
              incomplete.userOverride,
            )
            .having(
              (event) => event.toOverride,
              'toOverride',
              DataCheckOverride.markedComplete,
            )
            .having(
              (event) => event.isAutomaticallyComplete,
              'isAutomaticallyComplete',
              incomplete.automaticVerdict,
            )
            .having(
              (event) => event.outcome,
              'outcome',
              isA<AttemptSucceeded>(),
            ),
      ),
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'a refused override is tracked with why it failed',
      setUp: () => when(
        () => dao.tryOverride(familyId: incomplete.familyId, isComplete: true),
      ).thenAnswer((_) async => false),
      build: () => cubitFor(incomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.markedComplete),
      verify: (_) => expect(
        analytics.trackedEventsOf<DataCheckOverrideSelect>().single,
        isA<DataCheckOverrideSelect>().having(
          (event) => event.outcome,
          'outcome',
          isA<AttemptFailed>().having(
            (outcome) => outcome.kind,
            'kind',
            DataCheckOverrideError.notPermitted.name,
          ),
        ),
      ),
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'marking complete shows complete immediately and stays complete after the save',
      setUp: () => when(
        () => dao.tryOverride(familyId: incomplete.familyId, isComplete: true),
      ).thenAnswer((_) async => true),
      build: () => cubitFor(incomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.markedComplete),
      expect: () => [
        DataCheckOverrideState(dataCheck: markedComplete, isSaving: true),
        DataCheckOverrideState(dataCheck: markedComplete),
      ],
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'a refused override reverts and reports that the user is not permitted',
      setUp: () => when(
        () => dao.tryOverride(familyId: incomplete.familyId, isComplete: true),
      ).thenAnswer((_) async => false),
      build: () => cubitFor(incomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.markedComplete),
      expect: () => [
        DataCheckOverrideState(dataCheck: markedComplete, isSaving: true),
        DataCheckOverrideState(
          dataCheck: incomplete,
          error: DataCheckOverrideError.notPermitted,
        ),
      ],
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'a failing save reverts and reports that saving failed',
      setUp: () => when(
        () => dao.tryOverride(familyId: incomplete.familyId, isComplete: true),
      ).thenThrow(Exception('offline')),
      build: () => cubitFor(incomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.markedComplete),
      expect: () => [
        DataCheckOverrideState(dataCheck: markedComplete, isSaving: true),
        DataCheckOverrideState(
          dataCheck: incomplete,
          error: DataCheckOverrideError.saveFailed,
        ),
      ],
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'choosing automatic clears the override and shows the automatic verdict',
      setUp: () => when(
        () => dao.tryClearOverride(familyId: incomplete.familyId),
      ).thenAnswer((_) async => true),
      build: () => cubitFor(markedIncomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.none),
      expect: () {
        final automatic = markedIncomplete.withUserOverride(
          DataCheckOverride.none,
        );

        return [
          DataCheckOverrideState(dataCheck: automatic, isSaving: true),
          DataCheckOverrideState(dataCheck: automatic),
        ];
      },
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'a refused clear reverts to the manual verdict and reports notPermitted',
      setUp: () => when(
        () => dao.tryClearOverride(familyId: incomplete.familyId),
      ).thenAnswer((_) async => false),
      build: () => cubitFor(markedIncomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.none),
      expect: () => [
        DataCheckOverrideState(
          dataCheck: markedIncomplete.withUserOverride(
            DataCheckOverride.none,
          ),
          isSaving: true,
        ),
        DataCheckOverrideState(
          dataCheck: markedIncomplete,
          error: DataCheckOverrideError.notPermitted,
        ),
      ],
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'a second choice while a save is pending is ignored',
      setUp: () => when(
        () => dao.tryOverride(familyId: incomplete.familyId, isComplete: true),
      ).thenAnswer((_) async => true),
      build: () => cubitFor(incomplete),
      act: (cubit) async {
        final firstSave = cubit.choose(DataCheckOverride.markedComplete);
        await cubit.choose(DataCheckOverride.markedIncomplete);
        await firstSave;
      },
      expect: () => [
        DataCheckOverrideState(dataCheck: markedComplete, isSaving: true),
        DataCheckOverrideState(dataCheck: markedComplete),
      ],
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'choosing what is already chosen changes nothing',
      build: () => cubitFor(markedComplete),
      act: (cubit) => cubit.choose(DataCheckOverride.markedComplete),
      expect: () => <DataCheckOverrideState>[],
    );
  });
}

class _MockDataChecksDAO extends Mock implements DataChecksDAO {}

class _MockLoggingService extends Mock implements LoggingService {}
