import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const personId = 'child';
  const familyId = 'family';
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const mother = PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true);

  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
    owner: PersonPhoneOwner('child'),
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
    owner: PersonPhoneOwner('child'),
  );
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: 'father-number',
      phone: '+201003333333',
      isMainPhone: true,
      owner: PersonPhoneOwner('the-father'),
    ),
    role: father,
  );

  const book = PersonPhoneBook(own: [ownMain, ownWork], family: [fatherNumber]);

  PhoneContactDraft draftOf(PhoneContact contact, PhoneContactLabel label) =>
      PhoneContactDraft(
        key: contact.id,
        contactId: contact.id,
        input: contact.phone,
        phone: contact.phone,
        label: label,
        isMainPhone: contact.isMainPhone,
      );

  final unchangedDrafts = [
    draftOf(ownMain, const FreePhoneContactLabel(null)),
    draftOf(ownWork, const FreePhoneContactLabel('عمل')),
    draftOf(fatherNumber.contact, const RolePhoneContactLabel(father)),
  ];

  PhoneContactChanges changesTo(List<PhoneContactDraft> drafts) =>
      PhoneContactChanges.between(
        initial: book,
        drafts: drafts,
        personId: personId,
        familyId: familyId,
      );

  test('leaving every number as it was changes nothing', () {
    expect(changesTo(unchangedDrafts).isEmpty, isTrue);
  });

  test('a new free-labelled number is added to the person', () {
    final changes = changesTo([
      ...unchangedDrafts,
      const PhoneContactDraft(
        key: 'new',
        input: '01004444444',
        phone: '+201004444444',
        label: FreePhoneContactLabel('البيت'),
      ),
    ]);

    expect(changes.inserts, const [
      PhoneContact(
        id: 'new',
        phone: '+201004444444',
        label: 'البيت',
        owner: PersonPhoneOwner(personId),
      ),
    ]);
  });

  test('a new role-labelled number is added to the family under that role', () {
    final changes = changesTo([
      ...unchangedDrafts,
      const PhoneContactDraft(
        key: 'new',
        input: '01005555555',
        phone: '+201005555555',
        label: RolePhoneContactLabel(mother),
      ),
    ]);

    expect(changes.inserts, const [
      PhoneContact(
        id: 'new',
        phone: '+201005555555',
        owner: FamilyRolePhoneOwner(familyId: familyId, personTypeId: 'mother'),
      ),
    ]);
  });

  test('a removed number is deleted', () {
    final changes = changesTo(unchangedDrafts.sublist(0, 2));

    expect(changes.deletedIds, ['father-number']);
  });

  test("editing a relative's number keeps it on that relative", () {
    final changes = changesTo([
      ...unchangedDrafts.sublist(0, 2),
      unchangedDrafts[2].withInput('01006666666', phone: '+201006666666'),
    ]);

    expect(changes.updates, [
      fatherNumber.contact.copyWith(phone: '+201006666666'),
    ]);
  });

  test(
    'moving the main mark demotes the old main before promoting the new one',
    () {
      final changes = changesTo([
        unchangedDrafts[0].copyWith(isMainPhone: false),
        unchangedDrafts[1].copyWith(isMainPhone: true),
        unchangedDrafts[2],
      ]);

      expect(changes.updates, [
        ownMain.copyWith(isMainPhone: false),
        ownWork.copyWith(isMainPhone: true),
      ]);
    },
  );

  test(
    'relabelling a family number with another role moves it to that role',
    () {
      final changes = changesTo([
        ...unchangedDrafts.sublist(0, 2),
        unchangedDrafts[2].copyWith(label: const RolePhoneContactLabel(mother)),
      ]);

      expect(changes.deletedIds, ['father-number']);
      expect(changes.inserts, const [
        PhoneContact(
          id: 'father-number',
          phone: '+201003333333',
          owner: FamilyRolePhoneOwner(
            familyId: familyId,
            personTypeId: 'mother',
          ),
        ),
      ]);
    },
  );

  test('giving an own number a role label moves it to the family', () {
    final changes = changesTo([
      unchangedDrafts[0],
      unchangedDrafts[1].copyWith(label: const RolePhoneContactLabel(mother)),
      unchangedDrafts[2],
    ]);

    expect(changes.deletedIds, ['own-work']);
    expect(
      changes.inserts.single.owner,
      const FamilyRolePhoneOwner(familyId: familyId, personTypeId: 'mother'),
    );
  });
}
