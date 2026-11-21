import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFingerprintIdsDAO extends Mock implements FingerprintIdsDAO {}

void main() {
  group('PersonFingerprintIdsCubit', () {
    const mina = 'mina-person-id';
    const servant = User(uid: 'servant', name: 'Servant');
    final gateFingerprintId = PersonFingerprintId(
      id: 'gate',
      employeeCode: '1042',
      addedAt: DateTime.utc(2026, 11, 6, 9),
      addedBy: servant,
    );
    final hallFingerprintId = PersonFingerprintId(
      id: 'hall',
      employeeCode: '77',
      addedAt: DateTime.utc(2026, 11, 13, 9),
      addedBy: servant,
    );

    late _MockFingerprintIdsDAO dao;
    late StreamController<List<PersonFingerprintId>> serverCodes;

    PersonFingerprintIdsCubit cubitForMina() =>
        PersonFingerprintIdsCubit(personId: mina, fingerprintIdsDao: dao);

    setUp(() {
      dao = _MockFingerprintIdsDAO();
      serverCodes = StreamController();
      addTearDown(serverCodes.close);
      when(() => dao.streamOfPerson(mina))
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
      'has no codes to show until the server answers',
      build: cubitForMina,
      verify: (cubit) => expect(cubit.state.fingerprintIds, isNull),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'shows the codes the person holds',
      build: cubitForMina,
      act: (_) => serverCodes.add([gateFingerprintId, hallFingerprintId]),
      verify: (cubit) => expect(cubit.state.fingerprintIds, [
        gateFingerprintId,
        hallFingerprintId,
      ]),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a failed load is reported and keeps the codes already shown',
      build: cubitForMina,
      act: (_) => serverCodes
        ..add([gateFingerprintId])
        ..addError(StateError('offline')),
      verify: (cubit) {
        expect(cubit.state.loadError, isStateError);
        expect(cubit.state.fingerprintIds, [gateFingerprintId]);
      },
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'an added code is sent trimmed for that person',
      build: cubitForMina,
      act: (cubit) =>
          cubit.addEmployeeCode(' ${gateFingerprintId.employeeCode} '),
      verify: (_) => verify(
        () => dao.addEmployeeCode(
          personId: mina,
          employeeCode: gateFingerprintId.employeeCode,
        ),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'reports the code as added once the server accepts it',
      build: cubitForMina,
      act: (cubit) => cubit.addEmployeeCode(gateFingerprintId.employeeCode),
      verify: (cubit) => expect(
        cubit.state.write,
        FingerprintEmployeeCodeAdded(gateFingerprintId.employeeCode),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a blank code is refused',
      build: cubitForMina,
      act: (cubit) => cubit.addEmployeeCode('   '),
      verify: (cubit) => expect(
        cubit.state.write,
        isA<FingerprintIdsWriteFailed>().having(
          (write) => write.error,
          'error',
          isA<BlankFingerprintEmployeeCodeException>(),
        ),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'every blank code submitted in a row is refused anew',
      build: cubitForMina,
      act: (cubit) async {
        await cubit.addEmployeeCode('   ');
        await cubit.addEmployeeCode('   ');
      },
      expect: () => const [
        PersonFingerprintIdsState(),
        PersonFingerprintIdsState(
          write: FingerprintIdsWriteFailed(
            BlankFingerprintEmployeeCodeException(),
          ),
        ),
        PersonFingerprintIdsState(),
        PersonFingerprintIdsState(
          write: FingerprintIdsWriteFailed(
            BlankFingerprintEmployeeCodeException(),
          ),
        ),
      ],
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a second code can be added after the first one was added',
      build: cubitForMina,
      act: (cubit) async {
        await cubit.addEmployeeCode(gateFingerprintId.employeeCode);
        await cubit.addEmployeeCode(hallFingerprintId.employeeCode);
      },
      verify: (cubit) => expect(
        cubit.state.write,
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
            personId: mina,
            employeeCode: gateFingerprintId.employeeCode,
          ),
        ).thenAnswer((_) => (outcomesOfAttempts..moveNext()).current());
      },
      build: cubitForMina,
      act: (cubit) async {
        await cubit.addEmployeeCode(gateFingerprintId.employeeCode);
        await cubit.addEmployeeCode(gateFingerprintId.employeeCode);
      },
      verify: (cubit) => expect(
        cubit.state.write,
        FingerprintEmployeeCodeAdded(gateFingerprintId.employeeCode),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a code already linked to someone is reported as already linked',
      setUp: () {
        when(
          () => dao.addEmployeeCode(
            personId: mina,
            employeeCode: gateFingerprintId.employeeCode,
          ),
        ).thenThrow(
          FingerprintEmployeeCodeAlreadyLinkedException(
            employeeCode: gateFingerprintId.employeeCode,
            upstreamMessage: 'duplicate',
          ),
        );
      },
      build: cubitForMina,
      act: (cubit) => cubit.addEmployeeCode(gateFingerprintId.employeeCode),
      verify: (cubit) => expect(
        cubit.state.write,
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
            personId: mina,
            employeeCode: gateFingerprintId.employeeCode,
          ),
        ).thenAnswer((_) => firstSave.future);
      },
      build: cubitForMina,
      act: (cubit) async {
        unawaited(cubit.addEmployeeCode(gateFingerprintId.employeeCode));
        await cubit.addEmployeeCode(hallFingerprintId.employeeCode);
      },
      verify: (cubit) {
        expect(cubit.state.write, const FingerprintIdsWriteInProgress());
        verifyNever(
          () => dao.addEmployeeCode(
            personId: mina,
            employeeCode: hallFingerprintId.employeeCode,
          ),
        );
      },
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'removing a code asks the server to remove that code',
      build: cubitForMina,
      act: (cubit) => cubit.remove(hallFingerprintId),
      verify: (_) => verify(() => dao.remove(hallFingerprintId.id)),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'reports the code as removed once the server removes it',
      build: cubitForMina,
      act: (cubit) => cubit.remove(hallFingerprintId),
      verify: (cubit) =>
          expect(cubit.state.write, FingerprintIdRemoved(hallFingerprintId.id)),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a removal the server refuses is reported',
      setUp: () => when(
        () => dao.remove(hallFingerprintId.id),
      ).thenThrow(FingerprintIdNotRemovedException(hallFingerprintId.id)),
      build: cubitForMina,
      act: (cubit) => cubit.remove(hallFingerprintId),
      verify: (cubit) => expect(
        cubit.state.write,
        isA<FingerprintIdsWriteFailed>().having(
          (write) => write.error,
          'error',
          isA<FingerprintIdNotRemovedException>(),
        ),
      ),
    );
  });
}
