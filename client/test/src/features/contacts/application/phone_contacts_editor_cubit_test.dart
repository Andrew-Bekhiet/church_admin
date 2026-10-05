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
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
  );
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: 'father-number',
      phone: '+201003333333',
      isMainPhone: true,
    ),
    role: father,
    personId: 'the-father',
  );

  var nextKey = 0;

  PhoneContactsEditorCubit cubitFor({
    List<PhoneContact> own = const [ownMain, ownWork],
    List<FamilyPhoneContact> family = const [fatherNumber],
    bool hasFamily = true,
  }) {
    final cubit = PhoneContactsEditorCubit(
      own: own,
      family: family,
      hasFamily: hasFamily,
      fetchFamilyRoles: () async => [father, mother],
      newKey: () => 'new-${nextKey++}',
    );
    addTearDown(cubit.close);

    return cubit;
  }

  setUp(() => nextKey = 0);
  tearDown(defaultTearDown);

  PhoneContactDraft draftOf(PhoneContactsEditorCubit cubit, String key) =>
      cubit.state.drafts.firstWhere((d) => d.key == key);

  test("the person's own numbers are listed before their family's", () {
    final cubit = cubitFor();

    expect(cubit.state.drafts.map((d) => (d.key, d.label)), [
      ('own-main', const FreePhoneContactLabel(null)),
      ('own-work', const FreePhoneContactLabel('عمل')),
      ('father-number', const RolePhoneContactLabel(father)),
    ]);
  });

  test('the family roles become available once fetched', () async {
    final cubit = cubitFor();

    await pumpEventQueue();

    expect(cubit.state.familyRoles, [father, mother]);
  });

  test('untouched numbers are handed back unchanged', () {
    final cubit = cubitFor();

    expect(cubit.state.ownContacts, [ownMain, ownWork]);
    expect(cubit.state.familyContacts, [fatherNumber]);
  });

  test('the first own number added becomes the main number', () {
    final cubit = cubitFor(own: [], family: []);

    cubit.add(const FreePhoneContactLabel(null));

    expect(cubit.state.drafts.single.isMainPhone, isTrue);
  });

  test('marking a number as main unmarks the previous main', () {
    final cubit = cubitFor()..toggleMain('own-work');

    expect(cubit.state.ownContacts.map((c) => (c.id, c.isMainPhone)), [
      ('own-main', false),
      ('own-work', true),
    ]);
  });

  test('a family number cannot be marked as main', () {
    final cubit = cubitFor()..toggleMain('father-number');

    expect(draftOf(cubit, 'father-number').isMainPhone, isFalse);
  });

  test('labelling the main number with a role unmarks it', () {
    final cubit = cubitFor()
      ..changeLabel('own-main', const RolePhoneContactLabel(mother));

    expect(draftOf(cubit, 'own-main').isMainPhone, isFalse);
  });

  test('a typed number that is not a phone number is invalid', () {
    final cubit = cubitFor()..changeInput('own-work', '12');

    expect(cubit.state.errors['own-work'], PhoneContactDraftError.invalidPhone);
  });

  test('an empty new number is left out instead of being invalid', () {
    final cubit = cubitFor()..add(const FreePhoneContactLabel(null));

    expect(cubit.state.errors, isEmpty);
    expect(cubit.state.ownContacts, [ownMain, ownWork]);
  });

  test('a typed local number is handed back in E.164', () {
    final cubit = cubitFor()..changeInput('own-work', '01004444444');

    expect(cubit.state.ownContacts.last.phone, '+201004444444');
  });

  test('the same number twice on the person is a duplicate', () {
    final cubit = cubitFor()
      ..add(const FreePhoneContactLabel(null))
      ..changeInput('new-0', '01001111111');

    expect(cubit.state.errors['new-0'], PhoneContactDraftError.duplicatePhone);
  });

  test('a role number needs somewhere for the family to come from', () {
    final cubit = cubitFor(own: [], family: [], hasFamily: false)
      ..add(const RolePhoneContactLabel(father))
      ..changeInput('new-0', '01003333333');

    expect(
      cubit.state.errors['new-0'],
      PhoneContactDraftError.roleNeedsFamily,
    );
  });

  test('choosing a family makes the role numbers valid', () {
    final cubit = cubitFor(own: [], family: [], hasFamily: false)
      ..add(const RolePhoneContactLabel(father))
      ..changeInput('new-0', '01003333333')
      ..changeFamilyAvailability(hasFamily: true);

    expect(cubit.state.errors, isEmpty);
  });

  test('a new role number is handed back for that role', () {
    final cubit = cubitFor(own: [], family: [])
      ..add(const RolePhoneContactLabel(mother))
      ..changeInput('new-0', '01005555555');

    expect(cubit.state.familyContacts, const [
      FamilyPhoneContact(
        contact: PhoneContact(id: 'new-0', phone: '+201005555555'),
        role: mother,
      ),
    ]);
  });

  test(
    "editing a family number keeps the relative it belongs to and its main "
    'flag',
    () {
      final cubit = cubitFor()..changeInput('father-number', '01007777777');

      expect(cubit.state.familyContacts, [
        fatherNumber.copyWith(
          contact: fatherNumber.contact.copyWith(phone: '+201007777777'),
        ),
      ]);
    },
  );

  test(
    "moving to another family hides the old family's numbers and keeps the "
    'typed ones',
    () {
      final cubit = cubitFor()
        ..add(const RolePhoneContactLabel(mother))
        ..changeFamily(saved: const [], hasFamily: true);

      expect(cubit.state.drafts.map((d) => d.key), [
        'own-main',
        'own-work',
        'new-0',
      ]);
    },
  );

  test("returning to the saved family brings its numbers back", () {
    final cubit = cubitFor()
      ..changeFamily(saved: const [], hasFamily: true)
      ..changeFamily(saved: const [fatherNumber], hasFamily: true);

    expect(cubit.state.familyContacts, [fatherNumber]);
  });

  test('numbers imported from a device contact keep their labels', () {
    final cubit = cubitFor()
      ..importNumbers([(label: 'موبايل', number: '01007777777')]);

    expect(
      cubit.state.ownContacts.last,
      const PhoneContact(
        id: 'new-0',
        phone: '+201007777777',
        label: 'موبايل',
      ),
    );
  });
}
