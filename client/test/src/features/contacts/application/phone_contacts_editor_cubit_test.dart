import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils.dart';

void main() {
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
      owner: FamilyRolePhoneOwner(familyId: 'family', personTypeId: 'father'),
    ),
    role: father,
  );
  const childAsFamilyAdmin = FamilyPhoneContact(
    contact: ownMain,
    role: father,
  );

  late _FakeContactsDAO dao;
  late PhoneContactsEditorCubit cubit;
  var nextKey = 0;

  setUp(() {
    nextKey = 0;
    dao = _FakeContactsDAO(
      own: {
        'child': [ownMain, ownWork],
      },
      family: {
        'family': [fatherNumber, childAsFamilyAdmin],
      },
      roles: [father, mother],
    );
    cubit = PhoneContactsEditorCubit(
      dao: dao,
      newKey: () => 'new-${nextKey++}',
    );
    addTearDown(cubit.close);
  });
  tearDown(defaultTearDown);

  PhoneContactsEditorReady ready() => cubit.state as PhoneContactsEditorReady;
  PhoneContactDraft draft(String key) =>
      ready().drafts.firstWhere((d) => d.key == key);

  Future<void> loadChild() => cubit.load(personId: 'child', familyId: 'family');

  test(
    "loading lists the person's own numbers then their family's numbers",
    () async {
      await loadChild();

      expect(ready().drafts.map((d) => (d.key, d.label)), [
        ('own-main', const FreePhoneContactLabel(null)),
        ('own-work', const FreePhoneContactLabel('عمل')),
        ('father-number', const RolePhoneContactLabel(father)),
      ]);
      expect(ready().familyRoles, [father, mother]);
    },
  );

  test('a new person with no family starts with no numbers', () async {
    await cubit.load(personId: null, familyId: null);

    expect(ready().drafts, isEmpty);
  });

  test('the first own number added becomes the main number', () async {
    await cubit.load(personId: null, familyId: 'family');

    cubit.add(const FreePhoneContactLabel(null));

    expect(ready().drafts.last.isMainPhone, isTrue);
  });

  test('marking a number as main unmarks the previous main', () async {
    await loadChild();

    cubit.toggleMain('own-work');

    expect(draft('own-work').isMainPhone, isTrue);
    expect(draft('own-main').isMainPhone, isFalse);
  });

  test(
    'tapping the active main chip leaves the person without a main',
    () async {
      await loadChild();

      cubit.toggleMain('own-main');

      expect(ready().drafts.where((d) => d.isMainPhone), isEmpty);
    },
  );

  test('a family number cannot be marked as main', () async {
    await loadChild();

    cubit.toggleMain('father-number');

    expect(draft('father-number').isMainPhone, isFalse);
    expect(draft('own-main').isMainPhone, isTrue);
  });

  test('labelling the main number with a role unmarks it', () async {
    await loadChild();

    cubit.changeLabel('own-main', const RolePhoneContactLabel(mother));

    expect(draft('own-main').isMainPhone, isFalse);
  });

  test('a typed number that is not a phone number is invalid', () async {
    await loadChild();

    cubit.changeInput('own-work', '0100');

    expect(ready().errors, {'own-work': PhoneContactDraftError.invalidPhone});
  });

  test('a typed local number is kept in E.164', () async {
    await loadChild();

    cubit.changeInput('own-work', '0100 444 4444');

    expect(draft('own-work').phone, '+201004444444');
    expect(ready().errors, isEmpty);
  });

  test('the same number twice on the person is a duplicate', () async {
    await loadChild();

    cubit.changeInput('own-work', '01001111111');

    expect(ready().errors, {'own-work': PhoneContactDraftError.duplicatePhone});
  });

  test('a role number needs the person to be in a family', () async {
    await cubit.load(personId: null, familyId: null);

    cubit.add(const RolePhoneContactLabel(father));

    expect(
      ready().errors[ready().drafts.single.key],
      PhoneContactDraftError.roleNeedsFamily,
    );
  });

  test(
    "moving to another family shows that family's numbers instead",
    () async {
      await loadChild();
      cubit.add(const RolePhoneContactLabel(mother));
      dao.family['other-family'] = [
        const FamilyPhoneContact(
          contact: PhoneContact(
            id: 'other-father',
            phone: '+201009999999',
            owner: PersonPhoneOwner('other-father-person'),
          ),
          role: father,
        ),
      ];

      await cubit.changeFamily('other-family');

      expect(ready().drafts.map((d) => d.key), [
        'own-main',
        'own-work',
        'new-0',
        'other-father',
      ]);
    },
  );

  test(
    "moving to another family does not delete the old family's numbers",
    () async {
      await loadChild();
      dao.family['other-family'] = [];

      await cubit.changeFamily('other-family');
      await cubit.save(personId: 'child', familyId: 'other-family');

      expect(dao.applied, isEmpty);
    },
  );

  test('saving stores what was edited', () async {
    await loadChild();
    cubit.changeInput('own-work', '01004444444');

    await cubit.save(personId: 'child', familyId: 'family');

    expect(dao.applied, [
      PhoneContactChanges(updates: [ownWork.copyWith(phone: '+201004444444')]),
    ]);
  });

  test('saving without edits stores nothing', () async {
    await loadChild();

    await cubit.save(personId: 'child', familyId: 'family');

    expect(dao.applied, isEmpty);
  });

  test(
    'numbers imported from a device contact are added with their labels',
    () async {
      await loadChild();

      cubit.importNumbers([(label: 'موبايل', number: '01007777777')]);

      expect(ready().drafts.last.label, const FreePhoneContactLabel('موبايل'));
      expect(ready().drafts.last.phone, '+201007777777');
    },
  );
}

class _FakeContactsDAO extends Fake implements ContactsDAO {
  final Map<String, List<PhoneContact>> own;
  final Map<String, List<FamilyPhoneContact>> family;
  final List<PersonType> roles;
  final List<PhoneContactChanges> applied = [];

  _FakeContactsDAO({
    required this.own,
    required this.family,
    required this.roles,
  });

  @override
  Future<List<PhoneContact>> fetchOwnContacts({
    required String personId,
  }) async => own[personId] ?? [];

  @override
  Future<List<FamilyPhoneContact>> fetchFamilyContacts({
    required String familyId,
    String? excludedPersonId,
  }) async => [
    for (final relative in family[familyId] ?? <FamilyPhoneContact>[])
      if (relative.contact.owner != PersonPhoneOwner(excludedPersonId ?? ''))
        relative,
  ];

  @override
  Future<List<PersonType>> fetchFamilyRoles() async => roles;

  @override
  Future<void> applyChanges(PhoneContactChanges changes) async =>
      applied.add(changes);
}
