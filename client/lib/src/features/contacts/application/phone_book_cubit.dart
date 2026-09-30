import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class PhoneBookCubit extends Cubit<PhoneBookState> {
  late final StreamSubscription<PersonPhoneBook> _subscription;

  PhoneBookCubit._(Stream<PersonPhoneBook> books)
    : super(const PhoneBookLoading()) {
    _subscription = books.listen((book) => emit(PhoneBookLoaded(book)));
  }

  factory PhoneBookCubit.forPerson({
    required String personId,
    required String? familyId,
    ContactsDAO? dao,
  }) {
    final contacts = dao ?? DatabaseService.I.contacts;
    final own = contacts.watchOwnContacts(personId: personId);

    return PhoneBookCubit._(switch (familyId) {
      final familyId? => Rx.combineLatest2(
        own,
        contacts.watchFamilyContacts(
          familyId: familyId,
          excludedPersonId: personId,
        ),
        (own, family) => PersonPhoneBook(own: own, family: family),
      ),
      null => own.map((own) => PersonPhoneBook(own: own)),
    });
  }

  factory PhoneBookCubit.forFamily({
    required String familyId,
    ContactsDAO? dao,
  }) => PhoneBookCubit._(
    (dao ?? DatabaseService.I.contacts)
        .watchFamilyContacts(familyId: familyId)
        .map((family) => PersonPhoneBook(family: family)),
  );

  @override
  Future<void> close() async {
    await _subscription.cancel();

    return super.close();
  }
}
