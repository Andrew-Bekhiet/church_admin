import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

import '../../../utils.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);

  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
    owner: PersonPhoneOwner('child'),
  );
  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
    owner: PersonPhoneOwner('child'),
  );
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: 'father-number',
      phone: '+201003333333',
      owner: PersonPhoneOwner('the-father'),
    ),
    role: father,
  );

  late _FakeContactsDAO dao;

  setUp(() {
    dao = _FakeContactsDAO();
    addTearDown(dao.close);
  });
  tearDown(defaultTearDown);

  test("a person's phone book lists their main number first and their "
      "family's numbers apart", () async {
    final cubit = PhoneBookCubit.forPerson(
      personId: 'child',
      familyId: 'family',
      dao: dao,
    );
    addTearDown(cubit.close);

    dao.own.add([ownWork, ownMain]);
    dao.family.add([fatherNumber]);

    await expectLater(
      cubit.stream,
      emits(
        const PhoneBookLoaded(
          PersonPhoneBook(own: [ownWork, ownMain], family: [fatherNumber]),
        ),
      ),
    );
    expect(
      (cubit.state as PhoneBookLoaded).book.ownMainFirst,
      [ownMain, ownWork],
    );
  });

  test('a person without a family has no family numbers', () async {
    final cubit = PhoneBookCubit.forPerson(
      personId: 'child',
      familyId: null,
      dao: dao,
    );
    addTearDown(cubit.close);

    dao.own.add([ownMain]);

    await expectLater(
      cubit.stream,
      emits(const PhoneBookLoaded(PersonPhoneBook(own: [ownMain]))),
    );
  });

  test("a family's phone book follows changes to the family numbers", () async {
    final cubit = PhoneBookCubit.forFamily(familyId: 'family', dao: dao);
    addTearDown(cubit.close);

    dao.family
      ..add([])
      ..add([fatherNumber]);

    await expectLater(
      cubit.stream,
      emitsInOrder([
        const PhoneBookLoaded(PersonPhoneBook()),
        const PhoneBookLoaded(PersonPhoneBook(family: [fatherNumber])),
      ]),
    );
  });
}

class _FakeContactsDAO extends Fake implements ContactsDAO {
  final own = BehaviorSubject<List<PhoneContact>>();
  final family = BehaviorSubject<List<FamilyPhoneContact>>();

  Future<void> close() async {
    await own.close();
    await family.close();
  }

  @override
  Stream<List<PhoneContact>> watchOwnContacts({required String personId}) =>
      own;

  @override
  Stream<List<FamilyPhoneContact>> watchFamilyContacts({
    required String familyId,
    String? excludedPersonId,
  }) => family;
}
