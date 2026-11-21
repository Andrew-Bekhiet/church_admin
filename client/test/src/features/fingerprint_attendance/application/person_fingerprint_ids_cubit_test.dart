import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFingerprintIdsDAO extends Mock implements FingerprintIdsDAO {}

void main() {
  group('PersonFingerprintIdsCubit', () {
    const personId = 'person-id';
    const addedBy = User(uid: 'added-by-id', name: 'Added by');
    final gateFingerprintId = PersonFingerprintId(
      id: 'gate',
      employeeCode: '1042',
      addedAt: DateTime.utc(2026, 11, 6, 9),
      addedBy: addedBy,
    );
    final hallFingerprintId = PersonFingerprintId(
      id: 'hall',
      employeeCode: '77',
      addedAt: DateTime.utc(2026, 11, 13, 9),
      addedBy: addedBy,
    );

    late _MockFingerprintIdsDAO dao;
    late StreamController<List<PersonFingerprintId>> serverCodes;

    PersonFingerprintIdsCubit cubitOfPerson() => PersonFingerprintIdsCubit(
      personId: personId,
      fingerprintIdsDao: dao,
    );

    FingerprintIdsWrite? writeOf(PersonFingerprintIdsState state) =>
        switch (state) {
          PersonFingerprintIdsLoaded(:final write) => write,
          PersonFingerprintIdsLoading() ||
          PersonFingerprintIdsFailedToLoad() => null,
        };

    setUp(() {
      dao = _MockFingerprintIdsDAO();
      serverCodes = StreamController();
      addTearDown(serverCodes.close);
      when(() => dao.streamOfPerson(personId))
          .thenAnswer((_) => serverCodes.stream);
      when(
        () => dao.addEmployeeCode(
          personId: any(named: 'personId'),
          employeeCode: any(named: 'employeeCode'),
        ),
      ).thenAnswer((_) async {});
      when(() => dao.remove(any())).thenAnswer((_) async {});
    });

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'an added code is sent for that person',
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) => cubit.addEmployeeCode(gateFingerprintId.employeeCode),
      verify: (_) => verify(
        () => dao.addEmployeeCode(
          personId: personId,
          employeeCode: gateFingerprintId.employeeCode,
        ),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'reports the code as added once the server accepts it',
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) => cubit.addEmployeeCode(gateFingerprintId.employeeCode),
      verify: (cubit) => expect(
        writeOf(cubit.state),
        FingerprintEmployeeCodeAdded(gateFingerprintId.employeeCode),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'codes that arrive while a code is reported as added keep it reported',
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) async {
        await cubit.addEmployeeCode(gateFingerprintId.employeeCode);
        serverCodes.add([gateFingerprintId]);
      },
      verify: (cubit) => expect(
        cubit.state,
        PersonFingerprintIdsLoaded(
          fingerprintIds: [gateFingerprintId],
          write: FingerprintEmployeeCodeAdded(gateFingerprintId.employeeCode),
        ),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a second code can be added after the first one was added',
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) async {
        await cubit.addEmployeeCode(gateFingerprintId.employeeCode);
        await cubit.addEmployeeCode(hallFingerprintId.employeeCode);
      },
      verify: (cubit) => expect(
        writeOf(cubit.state),
        FingerprintEmployeeCodeAdded(hallFingerprintId.employeeCode),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a code that failed to save can be added on a second attempt',
      setUp: () {
        final outcomesOfAttempts = [
          () => Future<void>.error(Exception('offline')),
          Future<void>.value,
        ].iterator;
        when(
          () => dao.addEmployeeCode(
            personId: personId,
            employeeCode: gateFingerprintId.employeeCode,
          ),
        ).thenAnswer((_) => (outcomesOfAttempts..moveNext()).current());
      },
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) async {
        await cubit.addEmployeeCode(gateFingerprintId.employeeCode);
        await cubit.addEmployeeCode(gateFingerprintId.employeeCode);
      },
      verify: (cubit) => expect(
        writeOf(cubit.state),
        FingerprintEmployeeCodeAdded(gateFingerprintId.employeeCode),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a code already linked to someone is reported as already linked',
      setUp: () {
        when(
          () => dao.addEmployeeCode(
            personId: personId,
            employeeCode: gateFingerprintId.employeeCode,
          ),
        ).thenThrow(
          FingerprintEmployeeCodeAlreadyLinkedException(
            employeeCode: gateFingerprintId.employeeCode,
            upstreamMessage: 'duplicate',
          ),
        );
      },
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) => cubit.addEmployeeCode(gateFingerprintId.employeeCode),
      verify: (cubit) => expect(
        writeOf(cubit.state),
        isA<FingerprintIdsWriteFailed>().having(
          (write) => write.error,
          'error',
          isA<FingerprintEmployeeCodeAlreadyLinkedException>(),
        ),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a second code submitted while the first is still saving is not sent',
      setUp: () {
        final firstSave = Completer<void>();
        addTearDown(firstSave.complete);
        when(
          () => dao.addEmployeeCode(
            personId: personId,
            employeeCode: gateFingerprintId.employeeCode,
          ),
        ).thenAnswer((_) => firstSave.future);
      },
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) async {
        unawaited(cubit.addEmployeeCode(gateFingerprintId.employeeCode));
        await cubit.addEmployeeCode(hallFingerprintId.employeeCode);
      },
      verify: (cubit) {
        expect(writeOf(cubit.state), const FingerprintIdsWriteInProgress());
        verifyNever(
          () => dao.addEmployeeCode(
            personId: personId,
            employeeCode: hallFingerprintId.employeeCode,
          ),
        );
      },
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'removing a code asks the server to remove that code',
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) => cubit.remove(hallFingerprintId),
      verify: (_) => verify(() => dao.remove(hallFingerprintId.id)),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'reports the code as removed once the server removes it',
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) => cubit.remove(hallFingerprintId),
      verify: (cubit) => expect(
        writeOf(cubit.state),
        FingerprintIdRemoved(hallFingerprintId.id),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a removal the server refuses is reported',
      setUp: () => when(
        () => dao.remove(hallFingerprintId.id),
      ).thenThrow(FingerprintIdNotRemovedException(hallFingerprintId.id)),
      build: cubitOfPerson,
      seed: () => const PersonFingerprintIdsLoaded(fingerprintIds: []),
      act: (cubit) => cubit.remove(hallFingerprintId),
      verify: (cubit) => expect(
        writeOf(cubit.state),
        isA<FingerprintIdsWriteFailed>().having(
          (write) => write.error,
          'error',
          isA<FingerprintIdNotRemovedException>(),
        ),
      ),
    );
  });
}
