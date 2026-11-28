import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'message_run_cubit_fixture.dart';

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  final peter = MessageRunCubitFixture.peter;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const markPhone = MessageRunCubitFixture.markPhone;

  late MessageRunCubitFixture fixture;

  setUp(() => fixture = MessageRunCubitFixture());

  blocTest<MessageRunCubit, MessageRunState>(
    'loading keeps the selected order, takes the fetched phones and keeps '
    'the phones of a person the fetch left out',
    build: () {
      fixture.personsDAO.personsWithPhoneContacts = [
        peter,
        mina.copyWith(contacts: [minaPhone]),
      ];

      return fixture.buildCubit(
        persons: {
          mina,
          mark.copyWith(contacts: [markPhone]),
          peter,
        },
      );
    },
    act: (cubit) => cubit.load(),
    verify: (cubit) => expect(
      (cubit.state as MessageRunComposing).recipients.map(
        (recipient) => (recipient.person.id, recipient.selectedPhone),
      ),
      [(mina.id, minaPhone), (mark.id, markPhone), (peter.id, null)],
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    "a person without a phone of their own is reached on their family's phone",
    build: () {
      fixture.personsDAO.personsWithPhoneContacts = [
        peter.copyWith(
          familyContacts: [
            const FamilyPhoneContact(
              contact: markPhone,
              role: PersonType(id: 'father', name: 'الاب'),
            ),
          ],
        ),
      ];

      return fixture.buildCubit(persons: {peter});
    },
    act: (cubit) => cubit.load(),
    verify: (cubit) => expect(
      (cubit.state as MessageRunComposing).recipients.single.selectedPhone,
      markPhone,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    "loading keeps the selected persons' other details",
    build: () {
      fixture.personsDAO.personsWithPhoneContacts = [
        mina.copyWith(contacts: [minaPhone]),
      ];

      return fixture.buildCubit(
        persons: {mina.copyWith(birthdate: DateTime(2000, 1, 2))},
      );
    },
    act: (cubit) => cubit.load(),
    verify: (cubit) => expect(
      (cubit.state as MessageRunComposing).recipients.single.person.birthdate,
      DateTime(2000, 1, 2),
    ),
  );

  final loadError = Exception('offline');

  blocTest<MessageRunCubit, MessageRunState>(
    'a failed load shows and logs the error',
    build: () {
      fixture.personsDAO.phoneContactsError = loadError;

      return fixture.buildCubit(persons: {mina});
    },
    act: (cubit) => cubit.load(),
    expect: () => [
      const MessageRunLoading(),
      MessageRunLoadFailure(loadError),
    ],
    verify: (_) => expect(
      fixture.logging.reportedExceptions.map((record) => record.error),
      [loadError],
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'closing while the phones load ends quietly',
    build: () {
      fixture.personsDAO.phoneContactsGate = Completer();

      return fixture.buildCubit(persons: {mina});
    },
    act: (cubit) async {
      final loading = cubit.load();
      await cubit.close();
      fixture.personsDAO.phoneContactsGate?.complete();
      await loading;
    },
    verify: (cubit) => expect(cubit.state, isA<MessageRunLoading>()),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'closing while a failing phone load is pending ends quietly',
    build: () {
      fixture.personsDAO
        ..phoneContactsGate = Completer()
        ..phoneContactsError = loadError;

      return fixture.buildCubit(persons: {mina});
    },
    act: (cubit) async {
      final loading = cubit.load();
      await cubit.close();
      fixture.personsDAO.phoneContactsGate?.complete();
      await loading;
    },
    verify: (cubit) => expect(cubit.state, isA<MessageRunLoading>()),
  );
}
