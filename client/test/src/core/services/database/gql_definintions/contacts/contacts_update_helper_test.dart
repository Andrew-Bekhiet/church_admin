import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/contacts_update_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const personId = '00000000-0000-4000-8000-000000000001';
  const familyId = '00000000-0000-4000-8000-000000000002';
  const fatherTypeId = '00000000-0000-4000-8000-000000000003';
  const dadId = '00000000-0000-4000-8000-0000000000d1';
  const idA = '00000000-0000-4000-8000-00000000000a';
  const idB = '00000000-0000-4000-8000-00000000000b';

  const first = PhoneContact(
    id: idA,
    phone: '+201001234567',
    personId: personId,
    isMainPhone: true,
  );
  const second = PhoneContact(
    id: idB,
    phone: '+201112223334',
    personId: personId,
  );

  ContactsUpdateHelper helper({
    required List<PhoneContact> from,
    required List<PhoneContact> to,
  }) => ContactsUpdateHelper(
    personId: personId,
    oldContacts: from,
    newContacts: to,
  );

  List<String> ids(Iterable<UuidValue>? values) => [
    for (final v in values ?? <UuidValue>[]) v.uuid,
  ];

  test('saving unchanged contacts has nothing to send', () {
    final unchanged = helper(from: [first, second], to: [first, second]);

    expect(unchanged.hasChanges, isFalse);
  });

  test("a new number is inserted as one of the person's own", () {
    final added = helper(from: [first], to: [first, second]).variables;

    expect(ids(added.deleteIds), isEmpty);
    expect(ids(added.unsetMainIds), isEmpty);
    expect(added.upserts?.single.id?.uuid, idB);
    expect(added.upserts?.single.personId?.uuid, personId);
    expect(added.upserts?.single.phone, '+201112223334');
  });

  test('a removed number is deleted and nothing else is written', () {
    final removed = helper(from: [first, second], to: [first]).variables;

    expect(ids(removed.deleteIds), [idB]);
    expect(removed.upserts, isEmpty);
    expect(removed.upsertContacts, isFalse);
  });

  test('an edited number is upserted without being deleted', () {
    final edited = helper(
      from: [first],
      to: [first.copyWith(phone: '+201009998887')],
    ).variables;

    expect(ids(edited.deleteIds), isEmpty);
    expect(edited.upserts?.single.phone, '+201009998887');
  });

  test('moving the main number unsets the old one and upserts the new', () {
    final moved = helper(
      from: [first, second],
      to: [
        first.copyWith(isMainPhone: false),
        second.copyWith(isMainPhone: true),
      ],
    ).variables;

    expect(ids(moved.unsetMainIds), [idA]);
    expect(moved.upserts?.map((u) => u.id?.uuid), [idB]);
    expect(moved.upserts?.single.isMainPhone, isTrue);
  });

  test(
    'turning an own number into a family role deletes and re-inserts it',
    () {
      final asFather = second.copyWith(
        personId: null,
        familyId: familyId,
        personTypeId: fatherTypeId,
      );

      final changed = helper(
        from: [first, second],
        to: [first, asFather],
      ).variables;

      expect(ids(changed.deleteIds), [idB]);
      expect(changed.upserts?.single.id?.uuid, idB);
      expect(changed.upserts?.single.personId, isNull);
      expect(changed.upserts?.single.familyId?.uuid, familyId);
      expect(changed.upserts?.single.personTypeId?.uuid, fatherTypeId);
    },
  );

  test('moving a family number to another role deletes and re-inserts it', () {
    const motherTypeId = '00000000-0000-4000-8000-000000000004';
    const asFather = PhoneContact(
      id: idB,
      phone: '+201112223334',
      familyId: familyId,
      personTypeId: fatherTypeId,
    );

    final changed = helper(
      from: [asFather],
      to: [asFather.copyWith(personTypeId: motherTypeId)],
    ).variables;

    expect(ids(changed.deleteIds), [idB]);
    expect(changed.upserts?.single.personTypeId?.uuid, motherTypeId);
  });

  test('a number that is not E.164 is refused before anything is sent', () {
    final invalid = helper(
      from: [first],
      to: [
        first,
        second.copyWith(phone: '01112223334'),
      ],
    );

    expect(
      () => invalid.variables,
      throwsA(
        isA<ContactsSaveException>().having(
          (e) => e.errorCode,
          'errorCode',
          ContactsErrorCode.invalidPhone,
        ),
      ),
    );
  });

  const fatherType = PersonType(id: fatherTypeId, name: 'أب');
  const dadsNumber = PhoneContact(
    id: idB,
    phone: '+201112223334',
    personId: dadId,
    personType: fatherType,
    personTypeId: fatherTypeId,
  );

  test('a form left as it was has nothing to send', () {
    final person = Person(
      id: personId,
      name: 'مينا',
      contacts: const [first],
      family: const Family(id: familyId, name: 'عائلة', contacts: [dadsNumber]),
    );

    final unchanged = helper(
      from: person.contactsWithFamilyAdmins,
      to: person.contactsWithFamilyAdmins,
    );

    expect(unchanged.hasChanges, isFalse);
  });

  test('editing a father number shown on a child updates that row', () {
    final edited = helper(
      from: [first, dadsNumber],
      to: [
        first,
        dadsNumber.copyWith(phone: '+201009998887'),
      ],
    ).variables;

    expect(ids(edited.deleteIds), isEmpty);
    expect(edited.upserts?.single.id?.uuid, idB);
    expect(edited.upserts?.single.personId?.uuid, dadId);
    expect(edited.upserts?.single.phone, '+201009998887');
  });

  test('a role number for a family created by the save uses its id', () {
    final asFather = second.withRole(fatherType, null);
    final created = ContactsUpdateHelper(
      personId: personId,
      familyId: familyId,
      oldContacts: const [],
      newContacts: [asFather],
    ).variables;

    expect(created.upserts?.single.familyId?.uuid, familyId);
    expect(created.upserts?.single.personId, isNull);
  });

  test('a role number with no family to attach to is refused', () {
    final orphan = helper(
      from: const [],
      to: [second.withRole(fatherType, null)],
    );

    expect(
      () => orphan.variables,
      throwsA(
        isA<ContactsSaveException>().having(
          (e) => e.errorCode,
          'errorCode',
          ContactsErrorCode.familyRequired,
        ),
      ),
    );
  });
}
