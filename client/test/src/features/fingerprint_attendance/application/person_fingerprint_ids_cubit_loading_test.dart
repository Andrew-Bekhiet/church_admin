import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFingerprintIdsDAO extends Mock implements FingerprintIdsDAO {}

void main() {
  group('PersonFingerprintIdsCubit loading', () {
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

    setUp(() {
      dao = _MockFingerprintIdsDAO();
      serverCodes = StreamController();
      addTearDown(serverCodes.close);
      when(
        () => dao.streamOfPerson(personId),
      ).thenAnswer((_) => serverCodes.stream);
    });

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'is loading until the server answers',
      build: cubitOfPerson,
      verify: (cubit) =>
          expect(cubit.state, const PersonFingerprintIdsLoading()),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'shows the codes the person holds',
      build: cubitOfPerson,
      act: (_) => serverCodes.add([gateFingerprintId, hallFingerprintId]),
      expect: () => [
        PersonFingerprintIdsLoaded(
          fingerprintIds: [gateFingerprintId, hallFingerprintId],
        ),
      ],
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a load that fails before any code arrived is reported',
      build: cubitOfPerson,
      act: (_) => serverCodes.addError(StateError('offline')),
      verify: (cubit) => expect(
        cubit.state,
        isA<PersonFingerprintIdsFailedToLoad>().having(
          (state) => state.error,
          'error',
          isStateError,
        ),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a load that fails later keeps the codes already shown',
      build: cubitOfPerson,
      act: (_) => serverCodes
        ..add([gateFingerprintId])
        ..addError(StateError('offline')),
      verify: (cubit) => expect(
        cubit.state,
        PersonFingerprintIdsLoaded(fingerprintIds: [gateFingerprintId]),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'codes that arrive after a failed load are shown',
      build: cubitOfPerson,
      act: (_) => serverCodes
        ..addError(StateError('offline'))
        ..add([gateFingerprintId]),
      verify: (cubit) => expect(
        cubit.state,
        PersonFingerprintIdsLoaded(fingerprintIds: [gateFingerprintId]),
      ),
    );

    blocTest<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      'a code submitted before the codes loaded is not sent',
      build: cubitOfPerson,
      act: (cubit) => cubit.addEmployeeCode(gateFingerprintId.employeeCode),
      verify: (_) => verifyNever(
        () => dao.addEmployeeCode(
          personId: any(named: 'personId'),
          employeeCode: any(named: 'employeeCode'),
        ),
      ),
    );
  });
}
