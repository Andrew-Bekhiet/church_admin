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
    final gateCode = PersonFingerprintId(
      id: 'gate',
      employeeCode: '1042',
      addedAt: DateTime.utc(2026, 11, 6, 9),
      addedBy: servant,
    );
    final hallCode = PersonFingerprintId(
      id: 'hall',
      employeeCode: '77',
      addedAt: DateTime.utc(2026, 11, 13, 9),
      addedBy: servant,
    );

    late _MockFingerprintIdsDAO dao;
    late StreamController<List<PersonFingerprintId>> serverCodes;

    PersonFingerprintIdsCubit cubitForMina() =>
        PersonFingerprintIdsCubit(personId: mina, fingerprintIds: dao);

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
      act: (_) => serverCodes.add([gateCode, hallCode]),
      verify: (cubit) =>
          expect(cubit.state.fingerprintIds, [gateCode, hallCode]),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a failed load is reported and keeps the codes already shown',
      build: cubitForMina,
      act: (_) => serverCodes
        ..add([gateCode])
        ..addError(StateError('offline')),
      verify: (cubit) {
        expect(cubit.state.loadError, isStateError);
        expect(cubit.state.fingerprintIds, [gateCode]);
      },
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'an added code is sent trimmed for that person',
      build: cubitForMina,
      act: (cubit) => cubit.addEmployeeCode(' ${gateCode.employeeCode} '),
      verify: (_) => verify(
        () => dao.addEmployeeCode(
          personId: mina,
          employeeCode: gateCode.employeeCode,
        ),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'reports the code as added once the server accepts it',
      build: cubitForMina,
      act: (cubit) => cubit.addEmployeeCode(gateCode.employeeCode),
      verify: (cubit) => expect(
        cubit.state.write,
        FingerprintEmployeeCodeAdded(gateCode.employeeCode),
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
      'a code the server rejects is reported with the server error',
      setUp: () {
        when(
          () => dao.addEmployeeCode(
            personId: mina,
            employeeCode: gateCode.employeeCode,
          ),
        ).thenThrow(
          FingerprintEmployeeCodeAlreadyLinkedException(
            employeeCode: gateCode.employeeCode,
            upstreamMessage: 'duplicate',
          ),
        );
      },
      build: cubitForMina,
      act: (cubit) => cubit.addEmployeeCode(gateCode.employeeCode),
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
            employeeCode: gateCode.employeeCode,
          ),
        ).thenAnswer((_) => firstSave.future);
      },
      build: cubitForMina,
      act: (cubit) async {
        unawaited(cubit.addEmployeeCode(gateCode.employeeCode));
        await cubit.addEmployeeCode(hallCode.employeeCode);
      },
      verify: (cubit) {
        expect(cubit.state.write, const FingerprintIdsWriteInProgress());
        verifyNever(
          () => dao.addEmployeeCode(
            personId: mina,
            employeeCode: hallCode.employeeCode,
          ),
        );
      },
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'removing a code asks the server to remove that code',
      build: cubitForMina,
      act: (cubit) => cubit.remove(hallCode),
      verify: (_) => verify(() => dao.remove(hallCode.id)),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'reports the code as removed once the server removes it',
      build: cubitForMina,
      act: (cubit) => cubit.remove(hallCode),
      verify: (cubit) =>
          expect(cubit.state.write, FingerprintIdRemoved(hallCode.id)),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a removal the server refuses is reported',
      setUp: () => when(
        () => dao.remove(hallCode.id),
      ).thenThrow(FingerprintIdNotRemovedException(hallCode.id)),
      build: cubitForMina,
      act: (cubit) => cubit.remove(hallCode),
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
