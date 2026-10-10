import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';

void main() {
  group('DataCheckOverrideCubit', () {
    final incomplete = DataCheck(familyId: 'family', familyCheck: true);
    final markedComplete = incomplete.withUserOverride(true);
    final markedIncomplete = DataCheck(
      familyId: 'family',
      familyCheck: true,
      addressCheck: true,
      isComplete: true,
    ).withUserOverride(false);

    late _MockDataChecksDAO dao;

    setUpAll(() => registerFallbackValue(const LogRecord()));

    setUp(() {
      dao = _MockDataChecksDAO();
      final logging = _MockLoggingService();
      when(() => logging.exception(any())).thenAnswer((_) async {});
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(logging),
      ]);
    });
    tearDown(defaultTearDown);

    DataCheckOverrideCubit cubitFor(DataCheck dataCheck) =>
        DataCheckOverrideCubit(dataCheck: dataCheck, dao: dao);

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'marking complete shows complete immediately and stays complete after the save',
      setUp: () => when(
        () => dao.tryOverride(familyId: 'family', isComplete: true),
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
        () => dao.tryOverride(familyId: 'family', isComplete: true),
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
        () => dao.tryOverride(familyId: 'family', isComplete: true),
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
        () => dao.tryClearOverride(familyId: 'family'),
      ).thenAnswer((_) async => true),
      build: () => cubitFor(markedIncomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.automatic),
      expect: () {
        final automatic = markedIncomplete.withUserOverride(null);

        return [
          DataCheckOverrideState(dataCheck: automatic, isSaving: true),
          DataCheckOverrideState(dataCheck: automatic),
        ];
      },
    );

    blocTest<DataCheckOverrideCubit, DataCheckOverrideState>(
      'a refused clear reverts to the manual verdict and reports notPermitted',
      setUp: () => when(
        () => dao.tryClearOverride(familyId: 'family'),
      ).thenAnswer((_) async => false),
      build: () => cubitFor(markedIncomplete),
      act: (cubit) => cubit.choose(DataCheckOverride.automatic),
      expect: () => [
        DataCheckOverrideState(
          dataCheck: markedIncomplete.withUserOverride(null),
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
        () => dao.tryOverride(familyId: 'family', isComplete: true),
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
